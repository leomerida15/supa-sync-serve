import { readFileSync, readdirSync, statSync } from 'fs';
import { join, extname } from 'path';
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
			// Execute each seed file in order
			for (const seedFile of seedFiles) {
				console.log(`🔄 Executing seed: ${seedFile}`);

				const filePath = join(seedsDirectory, seedFile);
				const sqlContent = readFileSync(filePath, 'utf8');

				if (!sqlContent.trim()) {
					console.log(`⏭️  Skipping empty file: ${seedFile}`);
					continue;
				}

				// Execute the SQL
				await client.query(sqlContent);
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
