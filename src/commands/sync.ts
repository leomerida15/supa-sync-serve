import { Command } from 'commander';
import { select } from '@inquirer/prompts';
import {
	loadConfig,
	createDatabaseClient,
	connectDatabase,
	disconnectDatabase,
} from '../utils/database';
import {
	getMigrationFiles,
	getSupabaseMigrations,
	compareMigrations,
	updateSupabaseMigrations,
	applyMigrationsToTarget,
} from '../utils/migrations';
import { join } from 'path';

export const syncCommand = new Command('sync')
	.description('Interactive sync interface with navigable menu')
	.action(async () => {
		try {
			const choice = await select({
				message: 'Select an option:',
				choices: [
					{
						name: 'init',
						value: 'init',
						description: 'Initialize sync configuration',
					},
					{
						name: 'sync',
						value: 'sync',
						description: 'Perform database sync',
					},
				],
			});

			switch (choice) {
				case 'init':
					console.log('Initializing sync configuration...');
					await initializeSync();
					break;
				case 'sync':
					console.log('Starting database sync...');
					await performSync();
					break;
				default:
					console.log('Unknown option selected.');
			}
		} catch (error) {
			console.error('Error in sync command:', error);
			process.exit(1);
		}
	});

async function initializeSync(): Promise<void> {
	console.log('Sync configuration initialization completed.');
}

async function performSync(): Promise<void> {
	const config = loadConfig();
	const sourceClient = createDatabaseClient(config.sourceClient);
	const targetClient = createDatabaseClient(config.targetClient);

	try {
		// Connect to both databases
		await connectDatabase(sourceClient);
		await connectDatabase(targetClient);

		// Get migration directory path
		const migrationDir = join(process.cwd(), config.compareOptions.outputDirectory);
		console.log(`Reading migrations from: ${migrationDir}`);

		// 1. Get local migration files
		const localMigrations = getMigrationFiles(migrationDir);
		console.log(`Found ${localMigrations.length} local migration files`);

		if (localMigrations.length === 0) {
			console.log('No migration files found. Nothing to sync.');
			return;
		}

		// 2. Get current migrations from source database
		const sourceMigrations = await getSupabaseMigrations(sourceClient);
		console.log(`Found ${sourceMigrations.length} migrations in source database`);

		// 3. Compare migrations
		const comparison = compareMigrations(localMigrations, sourceMigrations);

		console.log('\n=== Migration Comparison ===');
		console.log(`Missing in source: ${comparison.missingInSource.length}`);
		console.log(`Missing in local: ${comparison.missingInLocal.length}`);
		console.log(`Up to date: ${comparison.upToDate}`);

		if (comparison.missingInSource.length > 0) {
			console.log('\nMigrations missing in source database:');
			comparison.missingInSource.forEach((m) => {
				console.log(`  - ${m.filename} (${m.description})`);
			});
		}

		if (comparison.missingInLocal.length > 0) {
			console.log('\nMigrations missing in local files:');
			comparison.missingInLocal.forEach((m) => {
				console.log(`  - ${m.name} (${m.version})`);
			});
		}

		// 4. Update source database migrations table
		if (comparison.missingInSource.length > 0) {
			console.log('\n=== Updating source database migrations ===');
			await updateSupabaseMigrations(sourceClient, comparison.missingInSource);
		}

		// 5. Apply migrations to target database
		console.log('\n=== Applying migrations to target database ===');
		await applyMigrationsToTarget(targetClient, localMigrations);

		console.log('\n✅ Database sync completed successfully!');
	} catch (error) {
		console.error('Error during sync:', error);
		throw error;
	} finally {
		// Disconnect from both databases
		await disconnectDatabase(sourceClient);
		await disconnectDatabase(targetClient);
	}
}
