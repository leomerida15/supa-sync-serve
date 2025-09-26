/**
 * Database client configuration
 */
export interface DatabaseClient {
	/** Database host */
	host: string;
	/** Database port */
	port: number;
	/** Database name */
	database: string;
	/** Database username */
	user: string;
	/** Database password */
	password: string;
	/** Application name for the connection */
	applicationName: string;
	/** Whether SSL is required */
	ssl: boolean;
}

/**
 * Schema comparison options
 */
export interface SchemaCompareOptions {
	/** List of schema namespaces to compare */
	namespaces?: string[];
	/** Whether to drop missing tables */
	dropMissingTable: boolean;
	/** Whether to drop missing views */
	dropMissingView: boolean;
	/** Whether to drop missing functions */
	dropMissingFunction: boolean;
	/** Whether to drop missing aggregates */
	dropMissingAggregate: boolean;
	/** List of roles to compare */
	roles: string[];
}

/**
 * Data comparison table configuration
 */
export interface DataCompareTable {
	/** Table name */
	tableName: string;
	/** Table schema */
	tableSchema: string;
	/** Key fields for comparison */
	tableKeyFields: string[];
}

/**
 * Data comparison options
 */
export interface DataCompareOptions {
	/** Whether data comparison is enabled */
	enable: boolean;
	/** Tables to compare */
	tables: DataCompareTable[];
}

/**
 * Compare options configuration
 */
export interface CompareOptions {
	/** Author of the SQL patches */
	author?: string;
	/** Whether to get author from Git */
	getAuthorFromGit?: boolean;
	/** Output directory for patches */
	outputDirectory: string;
	/** Schema comparison options */
	schemaCompare: SchemaCompareOptions;
	/** Data comparison options */
	dataCompare: DataCompareOptions;
}

/**
 * Migration options configuration
 */
export interface MigrationOptions {
	/** Directory where patches are stored */
	patchesDirectory: string;
	/** Name of the history table */
	historyTableName: string;
	/** Schema of the history table */
	historyTableSchema: string;
	/** Directory where seed files are stored */
	seeds: string;
	/** Name of the seed tracking table */
	seedTableName: string;
}

/**
 * Main configuration object
 */
export interface PgDiffConfig {
	/** Source database client configuration */
	sourceClient: DatabaseClient;
	/** Target database client configuration */
	targetClient: DatabaseClient;
	/** Compare options */
	compareOptions: CompareOptions;
	/** Migration options */
	migrationOptions: MigrationOptions;
}

/**
 * Configuration file structure
 */
export interface ConfigFile {
	[configName: string]: PgDiffConfig;
}
