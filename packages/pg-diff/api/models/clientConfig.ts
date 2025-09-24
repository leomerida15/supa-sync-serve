import { ClientConfig } from '../types';

export const clientConfig: ClientConfig = {
	host: 'localhost',
	port: 5432,
	database: null,
	user: 'postgres',
	password: null,
	applicationName: 'pg-diff-api',
	ssl: false,
};

export default clientConfig;
