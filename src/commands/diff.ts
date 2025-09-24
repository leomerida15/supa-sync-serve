import { Command } from 'commander';
import { Run } from '../../packages/pg-diff/cli/main';

export const diffCommand = new Command('diff')
	.description('Extract and use all commands from pg-diff-cli package')

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

			await Run();
		} catch (error) {
			console.error(`Error in diff command: ${error}`);
			process.exit(1);
		}
	});
