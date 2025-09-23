import { Command } from 'commander';

export const diffCommand = new Command('diff')
	.description('Extract and use all commands from pg-diff-cli package')
	.argument('[config-name]', 'Configuration name')
	.argument('[script-name]', 'Script name')
	.option('-c, --compare', 'Run compare and generate a patch file')
	.option('--migrate-to-source', 'Run migration applying all missing patch files to SOURCE CLIENT')
	.option('--migrate-to-target', 'Run migration applying all missing patch files to TARGET CLIENT')
	.option(
		'-f, --config-file <path>',
		"Specify where to find config file, otherwise looks for 'pg-diff-config.json' on current working directory",
	)
	.option(
		'-p, --patch-folder <path>',
		'Set patch folder where save\\retrieve patches (it will override configuration)',
	)
	.option(
		'-s, --save',
		'Save\\register patch on migration history table without executing the script',
	)
	.option('-g, --generate-config [name]', 'Generate a new config file')
	.option('--help', 'Show help for pg-diff-cli')
	.action(async (configName, scriptName, options) => {
		try {
			// Build arguments array from parsed options
			const args: string[] = [];

			// Add config file if specified
			if (options.configFile) {
				args.push('-f', options.configFile);
			}

			// Add patch folder if specified
			if (options.patchFolder) {
				args.push('-p', options.patchFolder);
			}

			// Add compare flag if specified
			if (options.compare) {
				args.push('-c');
				// For compare, we need config name and script name
				if (configName) {
					args.push(configName);
				}
				if (scriptName) {
					args.push(scriptName);
				}
			}

			// Add migrate to source flag if specified
			if (options.migrateToSource) {
				args.push('-ms');
				// For migrate to source, we need config name
				if (configName) {
					args.push(configName);
				}
			}

			// Add migrate to target flag if specified
			if (options.migrateToTarget) {
				args.push('-mt');
				// For migrate to target, we need config name
				if (configName) {
					args.push(configName);
				}
			}

			// Add save flag if specified
			if (options.save) {
				args.push('-s');
				// For save, we need config name and patch file name
				if (configName) {
					args.push(configName);
				}
				if (scriptName) {
					args.push(scriptName);
				}
			}

			// Add generate config flag if specified
			if (options.generateConfig !== undefined) {
				args.push('-g');
				if (options.generateConfig !== true) {
					args.push(options.generateConfig);
				}
			}

			// Add help flag
			if (options.help) {
				args.push('--help');
			}

			// Import and execute pg-diff-cli with the constructed arguments
			const { spawn } = await import('child_process');
			const child = spawn('npx', ['pg-diff-cli', ...args], {
				stdio: 'inherit',
				cwd: process.cwd(),
			});

			child.on('error', (error: Error) => {
				console.error(`Error executing pg-diff-cli: ${error.message}`);
				process.exit(1);
			});

			child.on('close', (code: number) => {
				process.exit(code || 0);
			});
		} catch (error) {
			console.error(`Error in diff command: ${error}`);
			process.exit(1);
		}
	});
