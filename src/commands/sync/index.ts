import { Command } from 'commander';

import { join, resolve } from 'node:path';
import { readFileSync } from 'node:fs';
import { Entorno } from '../../types/config.types';
import { Client } from 'pg';
import { DbManager } from './utils/dbManager';

export const getConfig = (key: string) => {
	const config_path = resolve('config.json');
	const config = readFileSync(config_path, 'utf8');
	return JSON.parse(config)[key] as Entorno;
};

export const syncCommand = new Command('sync')
	.description('Interactive sync interface with navigable menu')
	.action(async () => {
		try {
			const config = getConfig('GobernAI.sync.config');

			const dbManager = new DbManager(config);

			await dbManager.connect();

			await dbManager.compareMigrations();

			await dbManager.disconnect();

			// const targetClient = new Client(config.targetClient);
		} catch (error) {
			console.error('Error in sync command:', error);
			process.exit(1);
		}
	});

async function initializeSync(): Promise<void> {
	console.log('Sync configuration initialization completed.');
}
