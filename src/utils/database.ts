import { Client } from 'pg';
import { readFileSync } from 'fs';
import { join } from 'path';

export interface DatabaseConfig {
	host: string;
	port: number;
	database: string;
	user: string;
	password: string;
	applicationName: string;
	ssl: boolean;
}

export interface AppConfig {
	sourceClient: DatabaseConfig;
	targetClient: DatabaseConfig;
	compareOptions: {
		outputDirectory: string;
	};
	migrationOptions: {
		patchesDirectory: string;
		historyTableName: string;
		historyTableSchema: string;
	};
}

export function loadConfig(): AppConfig {
	const configPath = join(process.cwd(), 'config.json');
	const configContent = readFileSync(configPath, 'utf-8');
	const parsedConfig = JSON.parse(configContent);
	return parsedConfig['GobernAI.sync.config'];
}

export function createDatabaseClient(config: DatabaseConfig): Client {
	return new Client({
		host: config.host,
		port: config.port,
		database: config.database,
		user: config.user,
		password: config.password,
		applicationName: config.applicationName,
		ssl: config.ssl,
	});
}

export async function connectDatabase(client: Client): Promise<void> {
	try {
		await client.connect();
		console.log(`Connected to database: ${client.database}`);
	} catch (error) {
		console.error('Database connection failed:', error);
		throw error;
	}
}

export async function disconnectDatabase(client: Client): Promise<void> {
	try {
		await client.end();
		console.log('Database connection closed');
	} catch (error) {
		console.error('Error closing database connection:', error);
		throw error;
	}
}
