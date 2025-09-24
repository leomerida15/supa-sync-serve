import { PgDiffConfig } from './config';
export type { OptionType } from './enums';

/**
 * Map type for option parameters
 */
export type OptionParams = Map<string, string[]>;

/**
 * ConfigHandler class for pg-diff-cli
 */
export declare class ConfigHandler {
	/**
	 * Load configurations
	 * @param configName The configuration name
	 * @param configPath Optional path to config file
	 * @returns The specified configuration
	 */
	static LoadConfig(configName: string, configPath?: string): PgDiffConfig;

	/**
	 * Validate the configuration schema for compare operations
	 * @param optionParams Map of option parameters
	 * @param config The configuration object
	 */
	static ValidateCompareConfig(optionParams: OptionParams, config: PgDiffConfig): void;

	/**
	 * Validate the migration configuration schema
	 * @param optionParams Map of option parameters
	 * @param config The configuration object
	 */
	static ValidateMigrationConfig(optionParams: OptionParams, config: PgDiffConfig): void;

	/**
	 * Validate patch folder option
	 * @param optionParams Map of option parameters
	 * @param config The configuration object
	 */
	static ValidatePatchFolderOption(optionParams: OptionParams, config: PgDiffConfig): void;

	/**
	 * Get configuration file path from option parameters
	 * @param optionParams Map of option parameters
	 * @returns The configuration file path
	 */
	static GetConfigFilePath(optionParams: OptionParams): string;
}
