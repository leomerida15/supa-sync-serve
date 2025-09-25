import * as path from 'path';
import { Client } from 'pg';
import {
	Config,
	ClientConfig,
	ServerVersion,
	PatchInfo,
	MigrationConfig,
	ColumnDefinition,
} from './types';
import { migrationHistoryTableSchema } from './models/migrationHistoryTableSchema';
import * as sql from './sqlScriptGenerator';
import { PatchInfo as PatchInfoClass } from './models/patchInfo';
import { ServerVersion as ServerVersionClass } from './models/serverVersion';

export class Core {
	/**
	 * Prepare migration configuration
	 * @param config The configuration object
	 * @returns MigrationConfig
	 */
	static prepareMigrationConfig(config: Config): MigrationConfig {
		if (!config.migrationOptions.patchesDirectory) {
			throw new Error('Missing configuration property "patchesFolder"!');
		}

		return {
			patchesFolder: path.isAbsolute(config.migrationOptions.patchesDirectory)
				? config.migrationOptions.patchesDirectory
				: path.resolve(process.cwd(), config.migrationOptions.patchesDirectory),
			migrationHistory: {
				tableName: config.migrationOptions.historyTableName,
				tableSchema: config.migrationOptions.historyTableSchema,
				fullTableName: `"${config.migrationOptions.historyTableSchema}"."${config.migrationOptions.historyTableName}"`,
				primaryKeyName: `"${config.migrationOptions.historyTableName}_pkey"`,
				tableOwner: config.targetClient.user,
				tableColumns: this.extractColumnsDefinitionFromSchema(migrationHistoryTableSchema),
			},
		};
	}

	static extractColumnsDefinitionFromSchema(schema: any): ColumnDefinition[] {
		const fields: ColumnDefinition[] = [];
		for (const column in schema.columns) {
			fields.push({
				name: column,
				dataTypeCategory: schema.columns[column].dataTypeCategory,
			});
		}
		return fields;
	}

	static async prepareMigrationsHistoryTable(
		pgClient: Client,
		config: MigrationConfig,
	): Promise<void> {
		console.log('🔧 Preparando tabla de historial de migraciones...');
		console.log(`   Esquema: ${config.migrationHistory.tableSchema}`);
		console.log(`   Tabla: ${config.migrationHistory.tableName}`);

		// Crear esquema si no existe
		await pgClient.query(`CREATE SCHEMA IF NOT EXISTS "${config.migrationHistory.tableSchema}";`);
		console.log('✅ Esquema creado/verificado');

		// Verificar si la tabla ya existe
		const tableExistsResult = await pgClient.query(
			`
			SELECT EXISTS (
				SELECT 1 FROM information_schema.tables 
				WHERE table_schema = $1 AND table_name = $2
			);
		`,
			[config.migrationHistory.tableSchema, config.migrationHistory.tableName],
		);

		const tableExists = tableExistsResult.rows[0].exists;
		console.log(`   Tabla existe: ${tableExists}`);

		// Si la tabla no existe, crearla
		if (!tableExists) {
			console.log('🔨 Creando tabla de historial...');

			(migrationHistoryTableSchema.constraints as any)[config.migrationHistory.primaryKeyName] = {
				type: 'p',
				definition: 'PRIMARY KEY ("version")',
			};

			// No asignar owner ni privilegios para evitar errores de roles
			migrationHistoryTableSchema.owner = '';
			migrationHistoryTableSchema.privileges = {};

			const sqlScript = sql.generateCreateTableScript(
				config.migrationHistory.tableName,
				migrationHistoryTableSchema,
				config,
			);

			console.log('📝 SQL generado para tabla de historial:');
			console.log(sqlScript);

			await pgClient.query(sqlScript);
			console.log('✅ Tabla de historial creada');
		} else {
			console.log('✅ Tabla de historial ya existe');
		}
	}

	/**
	 * Get patch file information
	 * @param filename The filename
	 * @param filepath The file path
	 * @returns PatchInfo
	 */
	static getPatchFileInfo(filename: string, filepath: string): PatchInfoClass {
		const indexOfSeparator = filename.indexOf('_');
		const version = filename.substring(0, indexOfSeparator);
		const name = filename.substring(indexOfSeparator + 1).replace('.sql', '');

		if (indexOfSeparator < 0 || !/^\d+$/.test(version)) {
			throw new Error(
				`The patch file name ${filename} is not compatible with conventioned pattern {version}_{path name}.sql !`,
			);
		}

		return new PatchInfoClass(filename, filepath, version, name);
	}

	/**
	 * Create PostgreSQL client
	 * @param config Client configuration
	 * @returns Promise<Client> Return a connected client
	 */
	static async makePgClient(config: ClientConfig): Promise<Client & { version: ServerVersion }> {
		if (!config.database) {
			throw new Error('The client config parameter [database] cannot be empty!');
		}

		const client = new Client({
			user: config.user,
			host: config.host,
			database: config.database,
			password: config.password || '',
			port: config.port,
			application_name: config.applicationName,
			ssl: config.ssl,
		});

		await client.connect();

		(client as any).version = await this.getServerVersion(client);

		return client as Client & { version: ServerVersion };
	}

	/**
	 * Get server version
	 * @param client PostgreSQL client
	 * @returns Promise<ServerVersion>
	 */
	static async getServerVersion(client: Client): Promise<ServerVersion> {
		let version: string | null = null;
		const queryResult = await client.query("SELECT current_setting('server_version')");

		if (queryResult && queryResult.rows.length === 1 && queryResult.rows[0].current_setting) {
			version = queryResult.rows[0].current_setting;
		}

		if (typeof version !== 'string') return new ServerVersionClass(0, 0, 0, '');

		const splittedVersion = version.split('.');

		return new ServerVersionClass(
			parseInt(splittedVersion[0]),
			parseInt(splittedVersion[1]),
			parseInt(splittedVersion[2]),
			version,
		);
	}

	/**
	 * Check server compatibility
	 * @param serverVersion Server version object
	 * @param majorVersion Required major version
	 * @param minorVersion Required minor version
	 * @returns boolean
	 */
	static checkServerCompatibility(
		serverVersion: ServerVersion,
		majorVersion: number,
		minorVersion: number,
	): boolean {
		if (
			serverVersion != null &&
			serverVersion.major >= majorVersion &&
			serverVersion.minor >= minorVersion
		) {
			return true;
		}
		return false;
	}

	/**
	 * Get Git author information
	 * @returns Promise<string>
	 */
	static async getGitAuthor(): Promise<string> {
		const util = require('util');
		const exec = util.promisify(require('child_process').exec);

		async function getLocalAuthorName(): Promise<string | null> {
			try {
				const { stdout } = await exec('git config --local user.name');
				return stdout.trim();
			} catch (err: any) {
				return err.stdout?.trim() || null;
			}
		}

		async function getLocalAuthorEmail(): Promise<string | null> {
			try {
				const { stdout } = await exec('git config --local user.email');
				return stdout.trim();
			} catch (err: any) {
				return err.stdout?.trim() || null;
			}
		}

		async function getGlobalAuthorName(): Promise<string | null> {
			try {
				const { stdout } = await exec('git config --global user.name');
				return stdout.trim();
			} catch (err: any) {
				return err.stdout?.trim() || null;
			}
		}

		async function getGlobalAuthorEmail(): Promise<string | null> {
			try {
				const { stdout } = await exec('git config --global user.email');
				return stdout.trim();
			} catch (err: any) {
				return err.stdout?.trim() || null;
			}
		}

		async function getDefaultAuthorName(): Promise<string | null> {
			try {
				const { stdout } = await exec('git config user.name');
				return stdout.trim();
			} catch (err: any) {
				return err.stdout?.trim() || null;
			}
		}

		async function getDefaultAuthorEmail(): Promise<string | null> {
			try {
				const { stdout } = await exec('git config user.email');
				return stdout.trim();
			} catch (err: any) {
				return err.stdout?.trim() || null;
			}
		}

		let authorName = await getLocalAuthorName();
		let authorEmail = await getLocalAuthorEmail();

		if (!authorName) {
			// GIT LOCAL didn't return anything! Try GIT GLOBAL.
			authorName = await getGlobalAuthorName();
			authorEmail = await getGlobalAuthorEmail();

			if (!authorName) {
				// Also GIT GLOBAL didn't return anything! Try GIT defaults.
				authorName = await getDefaultAuthorName();
				authorEmail = await getDefaultAuthorEmail();
			}
		}

		if (!authorName) return 'Unknown author configured on this Git Repository';
		else if (authorEmail) return `${authorName} (${authorEmail})`;
		else return authorName;
	}

	/**
	 * Analyze database schemas and tables
	 * @param sourceClient Source database client
	 * @param targetClient Target database client
	 */
	static async analyzeDatabases(sourceClient: Client, targetClient: Client): Promise<void> {
		try {
			console.log('\n🔍 ANALIZANDO BASES DE DATOS...\n');

			// Función para obtener estadísticas de una base de datos
			async function getDatabaseStats(client: Client, dbName: string) {
				const schemasQuery = `
					SELECT 
						table_schema,
						COUNT(*) as table_count
					FROM information_schema.tables 
					WHERE table_schema IN ('public', 'knowledge', 'ai')
					GROUP BY table_schema
					ORDER BY table_schema;
				`;

				const result = await client.query(schemasQuery);
				const totalTables = result.rows.reduce((sum, row) => sum + parseInt(row.table_count), 0);

				console.log(`📊 ${dbName}:`);
				console.log(`   Total de tablas: ${totalTables}`);
				result.rows.forEach((row) => {
					console.log(`   - ${row.table_schema}: ${row.table_count} tablas`);
				});

				return { totalTables, schemas: result.rows };
			}

			const sourceStats = await getDatabaseStats(sourceClient, 'SOURCE (dev)');
			const targetStats = await getDatabaseStats(targetClient, 'TARGET (qa)');

			console.log('\n📈 RESUMEN:');
			console.log(
				`   SOURCE: ${sourceStats.totalTables} tablas en ${sourceStats.schemas.length} schemas`,
			);
			console.log(
				`   TARGET: ${targetStats.totalTables} tablas en ${targetStats.schemas.length} schemas`,
			);

			if (sourceStats.totalTables === 0 && targetStats.totalTables === 0) {
				console.log('\n⚠️  AMBAS BASES DE DATOS ESTÁN VACÍAS');
			} else if (sourceStats.totalTables === targetStats.totalTables) {
				console.log('\n⚠️  NO HAY DIFERENCIAS EN EL NÚMERO DE TABLAS');
			} else {
				console.log('\n✅ HAY DIFERENCIAS DETECTADAS');
			}
		} catch (error) {
			console.error('❌ Error al analizar bases de datos:', error);
		}
	}
}

export default Core;
