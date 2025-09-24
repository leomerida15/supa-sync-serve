import { Client } from 'pg';

// Configuración de las bases de datos
const sourceConfig = {
	host: 'aws-0-us-east-2.pooler.supabase.com',
	port: 5432,
	database: 'postgres',
	user: 'postgres.qklwlyoenlffxnwrkxuc',
	password: 'Kw07OePOyVZKRHjy',
	applicationName: 'GobernAI dev',
	ssl: false,
};

const targetConfig = {
	host: 'aws-1-us-east-2.pooler.supabase.com',
	port: 5432,
	database: 'postgres',
	user: 'postgres.yvztwadvzlapiqjkmabb',
	password: 'aVsmeJBn5J35ii1W',
	applicationName: 'GobernAI QA',
	ssl: false,
};

async function compareDatabases() {
	const sourceClient = new Client(sourceConfig);
	const targetClient = new Client(targetConfig);

	try {
		// Conectar a ambas bases de datos
		await sourceClient.connect();
		await targetClient.connect();

		console.log('✅ Conectado a ambas bases de datos');

		// Función para obtener información de tablas
		async function getTablesInfo(client: Client, dbName: string) {
			const query = `
        SELECT 
          table_schema,
          table_name,
          table_type
        FROM information_schema.tables 
        WHERE table_schema IN ('public', 'knowledge', 'ai')
        ORDER BY table_schema, table_name;
      `;

			const result = await client.query(query);
			console.log(`\n📊 Tablas en ${dbName}:`);
			console.log(`Total: ${result.rows.length} tablas`);

			// Agrupar por schema
			const bySchema = result.rows.reduce((acc: any, row: any) => {
				if (!acc[row.table_schema]) {
					acc[row.table_schema] = [];
				}
				acc[row.table_schema].push(row.table_name);
				return acc;
			}, {});

			Object.keys(bySchema).forEach((schema) => {
				console.log(`  ${schema}: ${bySchema[schema].length} tablas`);
				bySchema[schema].forEach((table: string) => {
					console.log(`    - ${table}`);
				});
			});

			return result.rows;
		}

		// Obtener información de ambas bases de datos
		const sourceTables = await getTablesInfo(sourceClient, 'SOURCE (dev)');
		const targetTables = await getTablesInfo(targetClient, 'TARGET (qa)');

		// Comparar tablas
		console.log('\n🔍 Comparando tablas...');

		const sourceTableNames = sourceTables.map((t: any) => `${t.table_schema}.${t.table_name}`);
		const targetTableNames = targetTables.map((t: any) => `${t.table_schema}.${t.table_name}`);

		const onlyInSource = sourceTableNames.filter((name) => !targetTableNames.includes(name));
		const onlyInTarget = targetTableNames.filter((name) => !sourceTableNames.includes(name));
		const inBoth = sourceTableNames.filter((name) => targetTableNames.includes(name));

		console.log(`\n📈 Resultados de la comparación:`);
		console.log(`  Tablas solo en SOURCE: ${onlyInSource.length}`);
		if (onlyInSource.length > 0) {
			onlyInSource.forEach((table) => console.log(`    - ${table}`));
		}

		console.log(`  Tablas solo en TARGET: ${onlyInTarget.length}`);
		if (onlyInTarget.length > 0) {
			onlyInTarget.forEach((table) => console.log(`    - ${table}`));
		}

		console.log(`  Tablas en ambas: ${inBoth.length}`);

		// Verificar si hay diferencias
		if (onlyInSource.length === 0 && onlyInTarget.length === 0) {
			console.log('\n⚠️  NO HAY DIFERENCIAS EN LAS TABLAS');
			console.log('   Esto explica por qué pg-diff no encuentra diferencias.');
		} else {
			console.log('\n✅ HAY DIFERENCIAS EN LAS TABLAS');
			console.log('   pg-diff debería detectar estas diferencias.');
		}

		// Comparar tipos personalizados (enums)
		console.log('\n🔍 Comparando tipos personalizados...');

		const sourceTypesQuery = `
      SELECT 
        t.typname as type_name,
        t.typtype as type_type,
        string_agg(e.enumlabel, ', ' ORDER BY e.enumsortorder) as enum_values
      FROM pg_type t 
      LEFT JOIN pg_enum e ON t.oid = e.enumtypid  
      WHERE t.typnamespace = (SELECT oid FROM pg_namespace WHERE nspname = 'ai')
      AND t.typtype = 'e'
      GROUP BY t.typname, t.typtype
      ORDER BY t.typname;
    `;

		const sourceTypes = await sourceClient.query(sourceTypesQuery);
		const targetTypes = await targetClient.query(sourceTypesQuery);

		console.log(`Tipos en SOURCE: ${sourceTypes.rows.length}`);
		console.log(`Tipos en TARGET: ${targetTypes.rows.length}`);

		if (sourceTypes.rows.length !== targetTypes.rows.length) {
			console.log('⚠️  DIFERENCIA EN TIPOS PERSONALIZADOS');
		} else {
			console.log('✅ Tipos personalizados coinciden');
		}

		// Comparar políticas RLS
		console.log('\n🔍 Comparando políticas RLS...');

		const rlsQuery = `
      SELECT 
        schemaname,
        tablename,
        policyname,
        cmd,
        roles
      FROM pg_policies 
      WHERE schemaname IN ('public', 'knowledge', 'ai')
      ORDER BY schemaname, tablename, policyname;
    `;

		const sourceRLS = await sourceClient.query(rlsQuery);
		const targetRLS = await targetClient.query(rlsQuery);

		console.log(`Políticas RLS en SOURCE: ${sourceRLS.rows.length}`);
		console.log(`Políticas RLS en TARGET: ${targetRLS.rows.length}`);

		if (sourceRLS.rows.length !== targetRLS.rows.length) {
			console.log('⚠️  DIFERENCIA EN POLÍTICAS RLS');
			console.log('Políticas solo en SOURCE:');
			sourceRLS.rows.forEach((policy: any) => {
				if (
					!targetRLS.rows.some(
						(t: any) =>
							t.schemaname === policy.schemaname &&
							t.tablename === policy.tablename &&
							t.policyname === policy.policyname,
					)
				) {
					console.log(`  - ${policy.schemaname}.${policy.tablename}.${policy.policyname}`);
				}
			});
		} else {
			console.log('✅ Políticas RLS coinciden');
		}
	} catch (error) {
		console.error('❌ Error:', error);
	} finally {
		await sourceClient.end();
		await targetClient.end();
		console.log('\n🔌 Desconectado de ambas bases de datos');
	}
}

// Ejecutar la comparación
compareDatabases().catch(console.error);
