declare module 'pg-diff-cli' {
	export interface PgDiffConfig {
		sourceClient: {
			host: string;
			port: number;
			database: string;
			user: string;
			password: string;
			applicationName: string;
			ssl: boolean;
		};
		targetClient: {
			host: string;
			port: number;
			database: string;
			user: string;
			password: string;
			applicationName: string;
			ssl: boolean;
		};
		compareOptions: {
			author?: string;
			getAuthorFromGit?: boolean;
			outputDirectory: string;
			schemaCompare: {
				namespaces?: string[];
				dropMissingTable: boolean;
				dropMissingView: boolean;
				dropMissingFunction: boolean;
				dropMissingAggregate: boolean;
				roles: string[];
			};
			dataCompare: {
				enable: boolean;
				tables: Array<{
					tableName: string;
					tableSchema: string;
					tableKeyFields: string[];
				}>;
			};
		};
		migrationOptions: {
			patchesDirectory: string;
			historyTableName: string;
			historyTableSchema: string;
		};
	}

	export class CLI {
		static PrintIntro(pjson: any): void;
		static PrintHelp(): void;
		static PrintOptions(config: PgDiffConfig): void;
		static GenerateConfig(filename?: string): Promise<void>;
	}

	export class ConfigHandler {
		static LoadConfig(configName: string, configPath?: string): PgDiffConfig;
		static ValidateCompareConfig(optionParams: Map<string, string[]>, config: PgDiffConfig): void;
		static ValidateMigrationConfig(optionParams: Map<string, string[]>, config: PgDiffConfig): void;
		static ValidatePatchFolderOption(
			optionParams: Map<string, string[]>,
			config: PgDiffConfig,
		): void;
		static GetConfigFilePath(optionParams: Map<string, string[]>): string;
	}

	export const actions: {
		COMPARE: 'COMPARE';
		MIGRATE_TO_SOURCE: 'MIGRATE_TO_SOURCE';
		MIGRATE_TO_TARGET: 'MIGRATE_TO_TARGET';
		SAVE: 'SAVE';
		HELP: 'HELP';
		GENERATE_CONFIG: 'GENERATE_CONFIG';
	};

	export const options: {
		CONFIG_FILEPATH: 'CONFIG_FILEPATH';
		PATCH_FOLDER: 'PATCH_FOLDER';
	};

	// Main function that can be imported as default
	function main(args: string[]): any;
	export default main;
}
