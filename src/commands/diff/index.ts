import { Command } from 'commander';
import { Run } from '../../../packages/pg-diff/cli/main';

export const diffCommand = new Command('diff')
	.description(
		'Extract and use all commands from pg-diff-cli package, including database comparison, migrations, and seed execution',
	)
	.allowUnknownOption()
	.allowExcessArguments(true)

	// All pg-diff-cli flags
	.option('-h, --help', 'To show help')
	.option('-c, --compare', 'To run compare and generate a patch file')
	.option(
		'-M, --migrate-to-source',
		'To run migration applying all missing patch files to SOURCE CLIENT',
	)
	.option(
		'-N, --migrate-to-target',
		'To run migration applying all missing patch files to TARGET CLIENT',
	)
	.option(
		'-f, --config-file <filepath>',
		"To specify where to find config file, otherwise looks for 'pg-diff-config.json' on current working directory",
	)
	.option(
		'-p, --patch-folder <folder>',
		'To set patch folder where save\\retrieve patches (it will override configuration)',
	)
	.option(
		'-s, --save',
		'To save\\register patch on migration history table without executing the script',
	)
	.option('-g, --generate-config [filename]', 'To generate a new config file')
	.option('--seed-to-source', 'To run seeds applying all seed files to SOURCE CLIENT')
	.option('--seed-to-target', 'To run seeds applying all seed files to TARGET CLIENT')

	.action(async (options, command) => {
		try {
			// Process custom flags -ss and -st before normal processing
			const processedArgs = processCustomFlags(process.argv);
			if (processedArgs !== process.argv) {
				process.argv = processedArgs;
				// Re-parse with processed arguments
				command.parse(processedArgs);
				return;
			}

			// Get all remaining arguments (after options)
			const remainingArgs = command.args;

			// Build arguments array from parsed options
			const args: string[] = [];

			// Add help flag first (highest priority)
			if (options.help) {
				// Show custom help that includes seed commands
				showCustomHelp();
				return;
			}
			// Add compare flag if specified
			else if (options.compare) {
				args.push('-c');
				// Add remaining arguments for compare (configName scriptName)
				if (remainingArgs.length >= 2) {
					args.push(remainingArgs[0], remainingArgs[1]);
				} else {
					console.error(
						'Error: Compare command requires exactly 2 arguments: configName and scriptName',
					);
					process.exit(1);
				}
			}
			// Add migrate to source flag if specified
			else if (options.migrateToSource) {
				args.push('-ms');
				// Add remaining argument for migrate to source (configName)
				if (remainingArgs.length >= 1) {
					args.push(remainingArgs[0]);
				} else {
					console.error('Error: Migrate to source command requires 1 argument: configName');
					process.exit(1);
				}
			}
			// Add migrate to target flag if specified
			else if (options.migrateToTarget) {
				args.push('-mt');
				// Add remaining argument for migrate to target (configName)
				if (remainingArgs.length >= 1) {
					args.push(remainingArgs[0]);
				} else {
					console.error('Error: Migrate to target command requires 1 argument: configName');
					process.exit(1);
				}
			}
			// Add save flag if specified
			else if (options.save) {
				args.push('-s');
				// Add remaining arguments for save (configName patchFileName)
				if (remainingArgs.length >= 2) {
					args.push(remainingArgs[0], remainingArgs[1]);
				} else {
					console.error(
						'Error: Save command requires exactly 2 arguments: configName and patchFileName',
					);
					process.exit(1);
				}
			}
			// Add generate config flag if specified
			else if (options.generateConfig !== undefined) {
				args.push('-g');
				if (options.generateConfig && options.generateConfig !== true) {
					args.push(options.generateConfig);
				}
			}
			// Add seed to source flag if specified
			else if (options.seedToSource) {
				args.push('--seed-to-source');
				// Add remaining argument for seed to source (configName)
				if (remainingArgs.length >= 1) {
					args.push(remainingArgs[0]);
				} else {
					console.error('Error: Seed to source command requires 1 argument: configName');
					process.exit(1);
				}
			}
			// Add seed to target flag if specified
			else if (options.seedToTarget) {
				args.push('--seed-to-target');
				// Add remaining argument for seed to target (configName)
				if (remainingArgs.length >= 1) {
					args.push(remainingArgs[0]);
				} else {
					console.error('Error: Seed to target command requires 1 argument: configName');
					process.exit(1);
				}
			}

			// Add config file if specified (always after main action)
			if (options.configFile) {
				args.push('-f', options.configFile);
			}

			// Add patch folder if specified (always after main action)
			if (options.patchFolder) {
				args.push('-p', options.patchFolder);
			}

			// If no arguments provided, show help
			if (args.length === 0) {
				args.push('--help');
			}

			// Handle seed commands separately from pg-diff-cli
			if (options.seedToSource || options.seedToTarget) {
				const { executeSeeds } = await import('../seeds/index');
				const configName = remainingArgs[0];
				const target = options.seedToSource ? 'source' : 'target';
				await executeSeeds(configName, target, options.configFile);
			} else {
				// Store original process.argv and replace with our constructed arguments
				const originalArgv = process.argv;
				process.argv = ['node', 'diff-supa', ...args];

				// Execute the local CLI code from @cli/
				await Run();

				// Restore original process.argv
				process.argv = originalArgv;
			}

			// Matar la consola al finalizar el análisis
			console.log('\n🏁 ANÁLISIS COMPLETADO - CERRANDO CONSOLA...');
			setTimeout(() => {
				process.exit(0);
			}, 2000);
		} catch (error) {
			console.error(`Error in diff command: ${error}`);
			process.exit(1);
		}
	});

function showCustomHelp(): void {
	console.log(`
OPTION                      		DESCRIPTION
-h,  --help                		To show this help.
-c,  --compare             		To run compare and generate a patch file.
-ms, --migrate-to-source   		To run migration applying all missing patch files to SOURCE CLIENT.
-mt, --migrate-to-target   		To run migration applying all missing patch files to TARGET CLIENT.
-f,  --config-file         		To specify where to find config file, otherwise looks for 'pg-diff-config.json' on current working directory.
-p,  --patch-folder        		To set patch folder where save\\retrieve patches (it will override configuration).
-s,  --save                		To save\\register patch on migration history table without executing the script.
-g,  --generate-config     		To generate a new config file.
-ss, --seed-to-source      		To run seeds applying all seed files to SOURCE CLIENT.
-st, --seed-to-target      		To run seeds applying all seed files to TARGET CLIENT.

TO GENERATE CONFIG FILE: pg-diff -g [configuration-file-name]
                EXAMPLE: pg-diff -g 
                EXAMPLE: pg-diff -g my-config

             TO COMPARE: pg-diff -c configuration-name script-name
                EXAMPLE: pg-diff -c development my-script

             TO MIGRATE: pg-diff [-ms | -mt] configuration-name
                EXAMPLE: pg-diff -ms development
                EXAMPLE: pg-diff -mt development

            TO REGISTER: pg-diff -s configuration-name patch-file-name
                EXAMPLE: pg-diff -s development 20182808103040999_my-script.sql

           TO EXECUTE SEEDS: pg-diff [-ss | -st] configuration-name
                EXAMPLE: pg-diff -ss development
                EXAMPLE: pg-diff -st development
                EXAMPLE: pg-diff --seed-to-source development
                EXAMPLE: pg-diff --seed-to-target development
                EXAMPLE: pg-diff -ss production --config-file custom-config.json
`);
}

function processCustomFlags(argv: string[]): string[] {
	// Create a copy of argv to avoid modifying the original
	const newArgv = [...argv];
	let modified = false;

	for (let i = 0; i < newArgv.length; i++) {
		const arg = newArgv[i];

		// Check for -ss flag (seed-to-source)
		if (arg === '-ss') {
			newArgv[i] = '--seed-to-source';
			modified = true;
		}
		// Check for -st flag (seed-to-target)
		else if (arg === '-st') {
			newArgv[i] = '--seed-to-target';
			modified = true;
		}
		// Check for -ms flag (migrate-to-source)
		else if (arg === '-ms') {
			newArgv[i] = '-M';
			modified = true;
		}
		// Check for -mt flag (migrate-to-target)
		else if (arg === '-mt') {
			newArgv[i] = '-N';
			modified = true;
		}
	}

	return modified ? newArgv : argv;
}
