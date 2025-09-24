// Core types for pg-diff API

export interface ClientConfig {
	host: string;
	port: number;
	database: string | null;
	user: string;
	password: string | null;
	applicationName: string;
	ssl: boolean;
}

export interface SchemaCompare {
	namespaces: string[];
	dropMissingTable: boolean;
	dropMissingView: boolean;
	dropMissingFunction: boolean;
	dropMissingAggregate: boolean;
	roles: string[];
}

export interface TableDefinition {
	tableName: string;
	tableSchema: string;
	tableKeyFields: string[];
}

export interface DataCompare {
	enable: boolean;
	tables: TableDefinition[];
}

export interface CompareOptions {
	outputDirectory: string;
	author: string | null;
	getAuthorFromGit: boolean;
	schemaCompare: SchemaCompare;
	dataCompare: DataCompare;
}

export interface MigrationOptions {
	patchesDirectory: string | null;
	historyTableName: string;
	historyTableSchema: string;
}

export interface Config {
	targetClient: ClientConfig;
	sourceClient: ClientConfig;
	compareOptions: CompareOptions;
	migrationOptions: MigrationOptions;
}

export interface PatchInfo {
	filename: string;
	filepath: string;
	version: string;
	name: string;
	status?: string;
	message?: string;
	command?: string;
}

export interface ServerVersion {
	major: number;
	minor: number;
	patch: number;
	version: string;
}

export interface DatabaseObjects {
	schemas: Record<string, any> | null;
	tables: Record<string, any> | null;
	views: Record<string, any> | null;
	materializedViews: Record<string, any> | null;
	functions: Record<string, any> | null;
	aggregates: Record<string, any> | null;
	sequences: Record<string, any> | null;
	extensions: Record<string, any> | null;
}

export interface TableData {
	sourceData: {
		records: {
			fields: any[];
			rows: any[];
		};
		sequences: any[];
	};
	targetData: {
		records: {
			fields: any[];
			rows: any[];
		};
		sequences: any[];
	};
}

export interface MigrationConfig {
	patchesFolder: string;
	migrationHistory: {
		tableName: string;
		tableSchema: string;
		fullTableName: string;
		primaryKeyName: string;
		tableOwner: string;
		tableColumns: any[];
	};
}

export interface ColumnDefinition {
	name: string;
	dataTypeCategory: string;
}

export interface TableColumn {
	nullable: boolean;
	datatype: string;
	precision?: number;
	scale?: number;
	default?: string;
	identity?: string;
	generatedColumn?: string;
	comment?: string;
	dataTypeID?: number;
	dataTypeCategory?: string;
}

export interface TableConstraint {
	definition: string;
	comment?: string;
}

export interface TableIndex {
	definition: string;
	schema: string;
	comment?: string;
}

export interface TablePrivilege {
	select: boolean;
	insert: boolean;
	update: boolean;
	delete: boolean;
	truncate: boolean;
	references: boolean;
	trigger: boolean;
}

export interface TableTrigger {
	definition: string;
	comment?: string;
}

export interface TableOptions {
	withOids: boolean;
}

export interface ViewDefinition {
	definition: string;
	privileges: Record<string, TablePrivilege>;
	owner: string;
	comment?: string;
	dependencies?: Array<{
		schemaName: string;
		tableName: string;
		columnName: string;
	}>;
}

export interface MaterializedViewDefinition extends ViewDefinition {
	indexes: Record<string, TableIndex>;
}

export interface FunctionDefinition {
	definition: string;
	type: 'f' | 'p';
	privileges: Record<string, { execute: boolean }>;
	owner: string;
	comment?: string;
}

export interface AggregateDefinition {
	definition: string;
	type: 'f' | 'p';
	privileges: Record<string, { execute: boolean }>;
	owner: string;
	comment?: string;
}

export interface SequenceDefinition {
	name: string;
	ownedBy?: string;
	privileges: Record<string, { select: boolean; usage: boolean; update: boolean }>;
	comment?: string;
	[key: string]: any;
}

export interface ExtensionDefinition {
	version?: string;
}

export interface SchemaDefinition {
	owner: string;
	comment?: string;
}

export interface TableDefinition {
	columns: Record<string, TableColumn>;
	constraints: Record<string, TableConstraint>;
	indexes: Record<string, TableIndex>;
	privileges: Record<string, TablePrivilege>;
	triggers: Record<string, TableTrigger>;
	options?: TableOptions;
	owner: string;
	comment?: string;
}

export interface CompareResult {
	sqlScript: string[];
	isSequenceRebaseNeeded: boolean;
}

export interface KeyFieldsMap {
	[key: string]: any;
}

export interface FieldChanges {
	[key: string]: any;
}

export interface ColumnChanges {
	nullable?: boolean;
	datatype?: string;
	dataTypeID?: number;
	dataTypeCategory?: string;
	precision?: number;
	scale?: number;
	default?: string;
	identity?: string;
	isNewIdentity?: boolean;
}

export interface PrivilegeChanges {
	select?: boolean;
	insert?: boolean;
	update?: boolean;
	delete?: boolean;
	truncate?: boolean;
	references?: boolean;
	trigger?: boolean;
}

export interface SequenceChanges {
	select?: boolean;
	usage?: boolean;
	update?: boolean;
}

export interface ProcedureChanges {
	execute?: boolean;
}

export interface MigrationHistoryRecord {
	version: string;
	name: string;
	status: string;
	last_message: string;
	script: string;
	applied_on: Date | null;
}

export interface PatchFileInfo extends PatchInfo {
	status?: string;
	message?: string;
	command?: string;
}

export interface CompareApiOptions {
	config: Config;
	scriptName: string;
	eventEmitter: NodeJS.EventEmitter;
}

export interface MigrationApiOptions {
	config: Config;
	force: boolean;
	toSourceClient: boolean;
	eventEmitter: NodeJS.EventEmitter;
}

export interface SavePatchOptions {
	config: Config;
	patchFileName: string;
}

export interface PgDiffOptions {
	config: Config;
}

export interface CliOptions {
	pjson: Record<string, unknown>;
}

export interface ConfigHandlerOptions {
	configName: string;
	configPath?: string;
}

export interface ValidationOptions {
	optionParams: Map<string, string[]>;
	config: Config;
}

export interface GenerateConfigOptions {
	filename?: string;
}

export interface PackageJson {
	name: string;
	author: string;
	version: string;
	pgver: string;
	license: string;
	description: string;
}

export interface ConfigFile {
	[configName: string]: Config;
}

export interface GeneratedConfig {
	[configName: string]: {
		sourceClient: ClientConfig;
		targetClient: ClientConfig;
		compareOptions: CompareOptions;
		migrationOptions: MigrationOptions;
	};
}

// Enums as const objects
export const ObjectType = {
	SCHEMA: 'SCHEMA',
	TABLE: 'TABLE',
	COLUMN: 'COLUMN',
	CONSTRAINT: 'CONSTRAINT',
	INDEX: 'INDEX',
	VIEW: 'VIEW',
	MATERIALIZED_VIEW: 'MATERIALIZED VIEW',
	FUNCTION: 'FUNCTION',
	AGGREGATE: 'AGGREGATE',
	SEQUENCE: 'SEQUENCE',
	PROCEDURE: 'PROCEDURE',
	TRIGGER: 'TRIGGER',
} as const;

export const PatchStatus = {
	TO_APPLY: 'TO_APPLY',
	IN_PROGRESS: 'IN_PROGRESS',
	DONE: 'DONE',
	ERROR: 'ERROR',
} as const;

export const CLIOptions = {
	CONFIG_FILEPATH: 'CONFIG_FILEPATH',
	PATCH_FOLDER: 'PATCH_FOLDER',
} as const;

export const Actions = {
	HELP: 'HELP',
	COMPARE: 'COMPARE',
	MIGRATE_TO_SOURCE: 'MIGRATE_TO_SOURCE',
	MIGRATE_TO_TARGET: 'MIGRATE_TO_TARGET',
	SAVE: 'SAVE',
	GENERATE_CONFIG: 'GENERATE_CONFIG',
} as const;
