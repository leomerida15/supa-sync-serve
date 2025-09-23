import { Client } from 'pg';
import { Entorno } from 'types/config.types';
import * as migrationsQuery from './query/migrations.Query';

export class DbManager {
	config: Entorno;
	sourceClient: Client;
	targetClient: Client;
	constructor(config: Entorno) {
		this.config = config;
		this.sourceClient = new Client(config.sourceClient);
		this.targetClient = new Client(config.targetClient);
	}

	async getMigrations(client: Client) {
		await client.query(migrationsQuery.existingMigrationSchemaANdTalbes);

		const migrations = await client.query(migrationsQuery.getMigrations);

		return migrations.rows as { version: string; statements: string[]; name: string }[];
	}

	async compareMigrations() {
		const migrationsFromApply = await this.getMigrations(this.sourceClient);
		const migrationsToApply = await this.getMigrations(this.targetClient);

		console.log('source migrations:', migrationsFromApply.length);
		console.log('target migrations:', migrationsToApply.length);

		if (migrationsFromApply.length > migrationsToApply.length) {
			console.log('source migrations are greater than target migrations');
		} else {
			console.log('target migrations are greater than source migrations');
		}
	}

	async connect() {
		await this.sourceClient.connect();
		await this.targetClient.connect();
	}

	async disconnect() {
		await this.sourceClient.end();
		await this.targetClient.end();
	}
}
