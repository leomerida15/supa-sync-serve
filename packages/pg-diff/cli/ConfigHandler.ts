import * as path from 'path';
import { Config } from '../api/types';
import { options } from './enums/options';

export class ConfigHandler {
	/**
	 * Load configurations
	 * @param configName The configuration name
	 * @param configPath The configuration file path
	 * @returns Config Return the specified configuration
	 */
	static LoadConfig(configName: string, configPath?: string): Config {
		const absoluteFilePath = path.resolve(configPath || 'pg-diff-config.json');

		if (
			!path.extname(absoluteFilePath) ||
			path.extname(absoluteFilePath).toLocaleLowerCase() !== '.json'
		) {
			throw new Error(
				`The configuration file path "${absoluteFilePath}" not include file name or it isn't a JSON file!`,
			);
		}

		const configFile = require(absoluteFilePath);
		if (!configFile[configName]) {
			throw new Error(`Impossible to find the configuration with name ${configName} !`);
		}

		const config: Config = configFile[configName];

		if (!config.sourceClient) {
			throw new Error('The configuration doesn\'t contains the section "sourceClient {object}" !');
		}

		if (!config.targetClient) {
			throw new Error('The configuration doesn\'t contains the section "targetClient {object}" !');
		}

		return config;
	}

	/**
	 * Validate the configuration schema
	 * @param optionParams Map of option parameters
	 * @param config Configuration object
	 */
	static ValidateCompareConfig(optionParams: Map<string, string[]>, config: Config): void {
		this.ValidatePatchFolderOption(optionParams, config);

		if (!config.compareOptions) {
			throw new Error(
				'The configuration doesn\'t contains the section "compareOptions {object}" !',
			);
		}

		if (!config.compareOptions.outputDirectory) {
			throw new Error(
				'The configuration section "compareOptions" must contains property "outputDirectory {string}" !',
			);
		}

		if (!config.compareOptions.schemaCompare) {
			throw new Error(
				'The configuration section "compareOptions" must contains property "schemaCompare {object}" !',
			);
		}

		if (
			!config.compareOptions.schemaCompare.roles ||
			!Array.isArray(config.compareOptions.schemaCompare.roles)
		) {
			throw new Error(
				'The configuration section "compareOptions.schemaCompare" must contains property "roles (array of strings}" !',
			);
		}

		if (!config.compareOptions.dataCompare) {
			throw new Error(
				'The configuration section "compareOptions" must contains property "dataCompare (object}" !',
			);
		}

		if (!Object.prototype.hasOwnProperty.call(config.compareOptions.dataCompare, 'enable')) {
			throw new Error(
				'The configuration section "compareOptions.dataCompare" must contains property "enable (boolean}" !',
			);
		}
	}

	/**
	 * Validate the migration configuration schema
	 * @param optionParams Map of option parameters
	 * @param config Configuration object
	 */
	static ValidateMigrationConfig(optionParams: Map<string, string[]>, config: Config): void {
		this.ValidatePatchFolderOption(optionParams, config);

		if (!config.migrationOptions) {
			throw new Error(
				'The configuration doesn\'t contains the section "migrationOptions {object}" !',
			);
		}

		if (!config.migrationOptions.historyTableSchema) {
			throw new Error(
				'The configuration section "migrationOptions" must contains property "historyTableSchema {string}" !',
			);
		}

		if (!config.migrationOptions.historyTableName) {
			throw new Error(
				'The configuration section "migrationOptions" must contains property "historyTableName {string}" !',
			);
		}

		if (!config.migrationOptions.patchesDirectory) {
			throw new Error(
				'The configuration section "migrationOptions" must contains property "patchesDirectory {string}" !',
			);
		}
	}

	/**
	 * Validate patch folder option
	 * @param optionParams Map of option parameters
	 * @param config Configuration object
	 */
	static ValidatePatchFolderOption(optionParams: Map<string, string[]>, config: Config): void {
		if (optionParams.has(options.PATCH_FOLDER)) {
			if (
				optionParams.get(options.PATCH_FOLDER)?.length === 1 &&
				optionParams.get(options.PATCH_FOLDER)?.[0]
			) {
				config.compareOptions.outputDirectory = optionParams.get(options.PATCH_FOLDER)![0];
			} else {
				throw new Error("Missing or invalid arguments for option 'PATCH FOLDER'!");
			}
		}
	}

	/**
	 * Get configuration file path
	 * @param optionParams Map of option parameters
	 * @returns string
	 */
	static GetConfigFilePath(optionParams: Map<string, string[]>): string {
		if (!optionParams.has(options.CONFIG_FILEPATH)) return '';

		if (
			!optionParams.get(options.CONFIG_FILEPATH)?.length ||
			!optionParams.get(options.CONFIG_FILEPATH)?.[0]
		)
			throw new Error("Missing or invalid arguments for option 'CONFIG FILEPATH'!");

		const configFilePath = optionParams.get(options.CONFIG_FILEPATH)![0];

		if (typeof configFilePath !== 'string')
			throw new Error("Missing or invalid arguments for option 'CONFIG FILEPATH'!");

		return configFilePath;
	}
}

export default ConfigHandler;
