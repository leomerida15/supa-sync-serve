import { readFileSync, readdirSync, statSync } from 'fs';
import { join, extname } from 'path';
import { createHash } from 'crypto';
import { Client } from 'pg';
import { Entorno } from '../../types/config.types';

interface SeedConfig {
	[configName: string]: Entorno;
}

export async function executeSeeds(
	configName: string,
	target: 'source' | 'target',
	configFilePath?: string,
): Promise<void> {
	try {
		console.log(`🌱 Starting seed execution for config: ${configName}, target: ${target}`);

		// Load configuration
		const configPath = configFilePath || 'config.json';
		const configContent = readFileSync(configPath, 'utf8');
		const config: SeedConfig = JSON.parse(configContent);

		if (!config[configName]) {
			throw new Error(`Configuration '${configName}' not found in ${configPath}`);
		}

		const entorno = config[configName];
		const seedsDirectory = entorno.migrationOptions.seeds;
		const schemaName = entorno.migrationOptions.historyTableSchema;
		const tableName = entorno.migrationOptions.seedTableName;

		// Determine which database client to use
		const clientConfig = target === 'source' ? entorno.sourceClient : entorno.targetClient;

		console.log(`📁 Seeds directory: ${seedsDirectory}`);
		console.log(`🎯 Target database: ${clientConfig.applicationName} (${clientConfig.host})`);

		// Check if seeds directory exists
		try {
			const stats = statSync(seedsDirectory);
			if (!stats.isDirectory()) {
				throw new Error(`Seeds path '${seedsDirectory}' is not a directory`);
			}
		} catch (error) {
			console.warn(`⚠️  Seeds directory '${seedsDirectory}' not found. Creating it...`);
			// Directory doesn't exist, but we'll continue without error
		}

		// Get all SQL files from seeds directory
		const seedFiles = getSeedFiles(seedsDirectory);

		if (seedFiles.length === 0) {
			console.log('ℹ️  No seed files found in the seeds directory');
			return;
		}

		console.log(`📋 Found ${seedFiles.length} seed files to execute`);

		// Create database connection
		const client = new Client(clientConfig);
		await client.connect();

		try {
			// Ensure schema and table exist
			await ensureSeedTrackingTable(client, schemaName, tableName);

			// Get already executed seeds
			const executedSeeds = await getExecutedSeeds(client, schemaName, tableName);

			// Execute each seed file in order
			for (const seedFile of seedFiles) {
				const filePath = join(seedsDirectory, seedFile);
				const sqlContent = readFileSync(filePath, 'utf8');

				if (!sqlContent.trim()) {
					console.log(`⏭️  Skipping empty file: ${seedFile}`);
					continue;
				}

				// Generate hash of file content
				const fileHash = createHash('md5').update(sqlContent).digest('hex');
				const seedPath = join(seedsDirectory, seedFile);

				// Check if this seed has already been executed
				if (executedSeeds.has(seedPath)) {
					console.log(`⏭️  Skipping already executed seed: ${seedFile}`);
					continue;
				}

				console.log(`🔄 Executing seed: ${seedFile}`);

				// Execute the SQL
				await client.query(sqlContent);

				// Record the execution
				await recordSeedExecution(client, schemaName, tableName, seedPath, fileHash);

				console.log(`✅ Successfully executed: ${seedFile}`);
			}

			console.log('🎉 All seeds executed successfully!');
		} finally {
			await client.end();
		}
	} catch (error) {
		console.error('❌ Error executing seeds:', error);
		throw error;
	}
}

function getSeedFiles(directory: string): string[] {
	try {
		const files = readdirSync(directory);
		return files.filter((file) => extname(file).toLowerCase() === '.sql').sort(); // Sort alphabetically for consistent execution order
	} catch (error) {
		// Directory doesn't exist or can't be read
		return [];
	}
}

async function ensureSeedTrackingTable(
	client: Client,
	schemaName: string,
	tableName: string,
): Promise<void> {
	// Create schema if it doesn't exist
	await client.query(`CREATE SCHEMA IF NOT EXISTS "${schemaName}"`);

	// Create table if it doesn't exist
	const createTableQuery = `
		CREATE TABLE IF NOT EXISTS "${schemaName}"."${tableName}" (
			path TEXT NOT NULL,
			hash TEXT NOT NULL,
			CONSTRAINT ${tableName}_pkey PRIMARY KEY (path)
		) TABLESPACE pg_default;
	`;

	await client.query(createTableQuery);
	console.log(`📊 Seed tracking table ensured: ${schemaName}.${tableName}`);
}

async function getExecutedSeeds(
	client: Client,
	schemaName: string,
	tableName: string,
): Promise<Set<string>> {
	try {
		const result = await client.query(`SELECT path FROM "${schemaName}"."${tableName}"`);
		return new Set(result.rows.map((row) => row.path));
	} catch (error) {
		// Table might not exist yet, return empty set
		return new Set();
	}
}

async function recordSeedExecution(
	client: Client,
	schemaName: string,
	tableName: string,
	path: string,
	hash: string,
): Promise<void> {
	const insertQuery = `
		INSERT INTO "${schemaName}"."${tableName}" (path, hash)
		VALUES ($1, $2)
		ON CONFLICT (path) DO UPDATE SET
			hash = EXCLUDED.hash;
	`;

	await client.query(insertQuery, [path, hash]);
}
