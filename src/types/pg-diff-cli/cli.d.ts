import { PgDiffConfig } from './config';

/**
 * Package.json structure for CLI
 */
export interface PackageJson {
	name: string;
	version: string;
	author: string;
	pgver: string;
	license: string;
	description: string;
}

/**
 * CLI class for pg-diff-cli
 */
export declare class CLI {
	/**
	 * Print initial CLI information
	 * @param pjson The package json
	 */
	static PrintIntro(pjson: PackageJson): void;

	/**
	 * Print help documentation
	 */
	static PrintHelp(): void;

	/**
	 * Print configuration options
	 * @param config The configuration
	 */
	static PrintOptions(config: PgDiffConfig): void;

	/**
	 * Generate a new configuration file
	 * @param filename Optional filename for the config (default: "pg-diff-config")
	 */
	static GenerateConfig(filename?: string): Promise<void>;
}
