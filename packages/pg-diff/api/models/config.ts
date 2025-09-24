import { Config } from '../types';

export const config: Config = {
	targetClient: {
		host: 'localhost',
		port: 5432,
		database: null,
		user: 'postgres',
		password: null,
		applicationName: 'pg-diff-api',
		ssl: false,
	},
	sourceClient: {
		host: 'localhost',
		port: 5432,
		database: null,
		user: 'postgres',
		password: null,
		applicationName: 'pg-diff-api',
		ssl: false,
	},
	compareOptions: {
		outputDirectory: 'db_patches',
		author: null,
		getAuthorFromGit: true,
		schemaCompare: {
			namespaces: ['public'],
			dropMissingTable: false,
			dropMissingView: false,
			dropMissingFunction: false,
			dropMissingAggregate: false,
			roles: [],
		},
		dataCompare: {
			enable: true,
			tables: [],
		},
	},
	migrationOptions: {
		patchesDirectory: null,
		historyTableName: 'migrations',
		historyTableSchema: 'public',
	},
};

export default config;
