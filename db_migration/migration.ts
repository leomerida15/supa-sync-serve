import { Client } from 'pg';
import fs from 'fs';
import path from 'path';

// Configuración de la base de datos target (GobernAI QA)
const targetConfig = {
	host: 'aws-1-us-east-2.pooler.supabase.com',
	port: 5432,
	database: 'postgres',
	user: 'postgres.yvztwadvzlapiqjkmabb',
	password: 'aVsmeJBn5J35ii1W',
	applicationName: 'GobernAI QA',
	ssl: false,
};

async function debugMigration() {
	const client = new Client(targetConfig);

	try {
		console.log('🔄 Conectando a la base de datos target...');
		await client.connect();
		console.log('✅ Conectado exitosamente');

		// Leer el archivo de migración
		const migrationFile = path.join(process.cwd(), 'db_migration', '20250924000348243_init.sql');
		const migrationSQL = fs.readFileSync(migrationFile, 'utf8');

		// Dividir en statements individuales
		const statements = migrationSQL
			.split(';')
			.map((stmt) => stmt.trim())
			.filter((stmt) => stmt.length > 0 && !stmt.startsWith('--'));

		console.log(`📄 Encontrados ${statements.length} statements SQL`);

		let successCount = 0;
		let errorCount = 0;

		try {
			console.log(`\n🔍 Ejecutando statement`);

			await client.query(migrationSQL);
			successCount++;
			console.log(`✅ Statement ejecutado exitosamente`);
		} catch (error) {
			console.log(`Error: ${error.message}`);
			console.log(`Posición: ${error.position}`);
			console.log('---');

			// Continuar con el siguiente statement
		}
	} catch (error) {
		console.error('❌ Error general:', error.message);
	} finally {
		await client.end();
	}
}

debugMigration();
