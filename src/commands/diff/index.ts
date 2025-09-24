import { Command } from 'commander';
import { Run } from '../../../packages/pg-diff/cli/main';

export const diffCommand = new Command('diff')
	.description('Extract and use all commands from pg-diff-cli package')
	.allowUnknownOption()
	.allowExcessArguments(true)

	// All pg-diff-cli flags
	.option('-h, --help', 'To show help')
	.option('-c, --compare', 'To run compare and generate a patch file')
	.option(
		'--migrate-to-source',
		'To run migration applying all missing patch files to SOURCE CLIENT',
	)
	.option(
		'--migrate-to-target',
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

	.action(async (options, command) => {
		try {
			// Get all remaining arguments (after options)
			const remainingArgs = command.args;

			// Build arguments array from parsed options
			const args: string[] = [];

			// Add help flag first (highest priority)
			if (options.help) {
				args.push('--help');
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

			// Store original process.argv and replace with our constructed arguments
			const originalArgv = process.argv;
			process.argv = ['node', 'diff-supa', ...args];

			// Execute the local CLI code from @cli/
			await Run();

			// Restore original process.argv
			process.argv = originalArgv;

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
