import { readdirSync, readFileSync, statSync } from 'fs';
import { join } from 'path';
import { Client } from 'pg';

export interface MigrationFile {
	filename: string;
	version: string;
	description: string;
	content: string;
	appliedAt?: Date;
}

export interface SupabaseMigration {
	version: string;
	statements: string[];
	name: string;
}

export function getMigrationFiles(migrationDir: string): MigrationFile[] {
	try {
		const files = readdirSync(migrationDir)
			.filter((file) => file.endsWith('.sql'))
			.sort();

		return files.map((file) => {
			const filePath = join(migrationDir, file);
			const content = readFileSync(filePath, 'utf-8');

			// Extract version from filename (format: timestamp_description.sql)
			const version = file.split('_')[0];
			const description = file.replace('.sql', '').replace(`${version}_`, '').replace(/-/g, ' ');

			return {
				filename: file,
				version,
				description,
				content,
			};
		});
	} catch (error) {
		console.error('Error reading migration files:', error);
		return [];
	}
}

export async function getSupabaseMigrations(client: Client): Promise<SupabaseMigration[]> {
	try {
		const query = `
			SELECT version, statements, name
			FROM supabase_migrations.schema_migrations
			ORDER BY version ASC
		`;

		const result = await client.query(query);
		return result.rows.map((row) => ({
			version: row.version,
			statements: row.statements,
			name: row.name,
		}));
	} catch (error) {
		console.error('Error fetching supabase migrations:', error);
		return [];
	}
}

export function compareMigrations(
	localMigrations: MigrationFile[],
	supabaseMigrations: SupabaseMigration[],
): {
	missingInSource: MigrationFile[];
	missingInLocal: SupabaseMigration[];
	upToDate: boolean;
} {
	const localVersions = new Set(localMigrations.map((m) => m.version));
	const supabaseVersions = new Set(supabaseMigrations.map((m) => m.version));

	const missingInSource = localMigrations.filter((m) => !supabaseVersions.has(m.version));
	const missingInLocal = supabaseMigrations.filter((m) => !localVersions.has(m.version));
	const upToDate = missingInSource.length === 0 && missingInLocal.length === 0;

	return {
		missingInSource,
		missingInLocal,
		upToDate,
	};
}

export async function updateSupabaseMigrations(
	client: Client,
	migrations: MigrationFile[],
): Promise<void> {
	try {
		await client.query('BEGIN');

		for (const migration of migrations) {
			// Insert or update the migration record
			const query = `
				INSERT INTO supabase_migrations.schema_migrations 
				(version, statements, name)
				VALUES ($1, $2, $3)
				ON CONFLICT (version) 
				DO UPDATE SET 
					statements = EXCLUDED.statements,
					name = EXCLUDED.name
			`;

			await client.query(query, [
				migration.version,
				[migration.content], // statements as array
				migration.description,
			]);
		}

		await client.query('COMMIT');
		console.log(`Updated ${migrations.length} migration records in source database`);
	} catch (error) {
		await client.query('ROLLBACK');
		console.error('Error updating supabase migrations:', error);
		throw error;
	}
}

export async function applyMigrationsToTarget(
	client: Client,
	migrations: MigrationFile[],
): Promise<void> {
	try {
		await client.query('BEGIN');

		for (const migration of migrations) {
			console.log(`Applying migration: ${migration.filename}`);

			// Execute the migration as a single statement
			// This handles complex SQL with dollar-quoted strings properly
			try {
				await client.query(migration.content);
				console.log(`Successfully executed migration: ${migration.filename}`);
			} catch (migrationError) {
				console.error(`Error executing migration ${migration.filename}:`, migrationError.message);
				// Don't throw here, let the transaction continue
			}

			// Try to record the migration in supabase_migrations
			// This will only work if the schema was created by the migration
			try {
				const insertQuery = `
					INSERT INTO supabase_migrations.schema_migrations 
					(version, statements, name)
					VALUES ($1, $2, $3)
				`;

				await client.query(insertQuery, [
					migration.version,
					[migration.content],
					migration.description,
				]);
				console.log(`Recorded migration ${migration.version} in supabase_migrations`);
			} catch (recordError) {
				// If the schema doesn't exist yet, that's expected for the first migration
				if (recordError.code === '3F000') {
					// schema does not exist
					console.log(
						`supabase_migrations schema not yet created, skipping migration record for ${migration.version}`,
					);
				} else {
					throw recordError;
				}
			}
		}

		await client.query('COMMIT');
		console.log(`Successfully applied ${migrations.length} migrations to target database`);
	} catch (error) {
		await client.query('ROLLBACK');
		console.error('Error applying migrations to target:', error);
		throw error;
	}
}
