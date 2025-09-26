interface DatabaseClient {
	host: string;
	port: number;
	database: string;
	user: string;
	password: string;
	applicationName: string;
	ssl: boolean;
}

interface SchemaCompare {
	namespaces: string[];
	dropMissingTable: boolean;
	dropMissingView: boolean;
	dropMissingFunction: boolean;
	dropMissingAggregate: boolean;
	roles: string[];
}

interface DataCompare {
	enable: boolean;
	tables: string[];
}

interface CompareOptions {
	author: string;
	getAuthorFromGit: boolean;
	outputDirectory: string;
	schemaCompare: SchemaCompare;
	dataCompare: DataCompare;
}

interface MigrationOptions {
	patchesDirectory: string;
	historyTableName: string;
	historyTableSchema: string;
	seeds: string;
	seedTableName: string;
}

export interface Entorno {
	sourceClient: DatabaseClient;
	targetClient: DatabaseClient;
	compareOptions: CompareOptions;
	migrationOptions: MigrationOptions;
}

export type Config = Record<string, Entorno>;
