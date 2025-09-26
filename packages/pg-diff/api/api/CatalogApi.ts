import { Client } from 'pg';
import { Config } from '../types';

export class CatalogApi {
	/**
	 * Retrieve all schemas
	 * @param client PostgreSQL client
	 * @returns Promise<string[]> List of schema names
	 */
	static async retrieveAllSchemas(client: Client): Promise<string[]> {
		// Implementation for retrieving all schemas
		const result = await client.query(`
      SELECT schema_name 
      FROM information_schema.schemata 
      WHERE schema_name NOT IN ('information_schema', 'pg_catalog', 'pg_toast')
    `);
		return result.rows.map((row: any) => row.schema_name);
	}

	/**
	 * Retrieve schemas
	 * @param client PostgreSQL client
	 * @param namespaces List of schema names
	 * @returns Promise<Record<string, any>> Schema definitions
	 */
	static async retrieveSchemas(client: Client, namespaces: string[]): Promise<Record<string, any>> {
		// Implementation for retrieving schemas
		const schemas: Record<string, any> = {};

		for (const namespace of namespaces) {
			const result = await client.query(
				`
        SELECT 
          schema_name,
          schema_owner,
          obj_description(schema_name::regnamespace, 'schema') as comment
        FROM information_schema.schemata 
        WHERE schema_name = $1
      `,
				[namespace],
			);

			if (result.rows.length > 0) {
				const row = result.rows[0];
				schemas[`"${namespace}"`] = {
					owner: row.schema_owner,
					comment: row.comment || null,
				};
			}
		}

		return schemas;
	}

	/**
	 * Retrieve tables
	 * @param client PostgreSQL client
	 * @param config Configuration
	 * @returns Promise<Record<string, any>> Table definitions
	 */
	static async retrieveTables(client: Client, config: Config): Promise<Record<string, any>> {
		// Implementation for retrieving tables
		const tables: Record<string, any> = {};

		// This is a simplified implementation
		// The full implementation would be much more complex
		const result = await client.query(
			`
      SELECT 
        schemaname,
        tablename,
        tableowner,
        obj_description(c.oid) as comment
      FROM pg_tables t
      JOIN pg_class c ON c.relname = t.tablename
      WHERE schemaname = ANY($1)
    `,
			[config.compareOptions.schemaCompare.namespaces],
		);

		for (const row of result.rows) {
			const fullTableName = `"${row.schemaname}"."${row.tablename}"`;
			tables[fullTableName] = {
				owner: row.tableowner,
				comment: row.comment || null,
				columns: {},
				constraints: {},
				indexes: {},
				privileges: {},
				triggers: {},
				options: {},
			};
		}

		return tables;
	}

	/**
	 * Retrieve views
	 * @param client PostgreSQL client
	 * @param config Configuration
	 * @returns Promise<Record<string, any>> View definitions
	 */
	static async retrieveViews(client: Client, config: Config): Promise<Record<string, any>> {
		// Implementation for retrieving views
		return {};
	}

	/**
	 * Retrieve materialized views
	 * @param client PostgreSQL client
	 * @param config Configuration
	 * @returns Promise<Record<string, any>> Materialized view definitions
	 */
	static async retrieveMaterializedViews(
		client: Client,
		config: Config,
	): Promise<Record<string, any>> {
		// Implementation for retrieving materialized views
		return {};
	}

	/**
	 * Retrieve functions
	 * @param client PostgreSQL client
	 * @param config Configuration
	 * @returns Promise<Record<string, any>> Function definitions
	 */
	static async retrieveFunctions(client: Client, config: Config): Promise<Record<string, any>> {
		// Implementation for retrieving functions
		return {};
	}

	/**
	 * Retrieve aggregates
	 * @param client PostgreSQL client
	 * @param config Configuration
	 * @returns Promise<Record<string, any>> Aggregate definitions
	 */
	static async retrieveAggregates(client: Client, config: Config): Promise<Record<string, any>> {
		// Implementation for retrieving aggregates
		return {};
	}

	/**
	 * Retrieve sequences
	 * @param client PostgreSQL client
	 * @param config Configuration
	 * @returns Promise<Record<string, any>> Sequence definitions
	 */
	static async retrieveSequences(client: Client, config: Config): Promise<Record<string, any>> {
		// Implementation for retrieving sequences
		return {};
	}

	/**
	 * Retrieve extensions
	 * @param client PostgreSQL client
	 * @returns Promise<Record<string, any>> Extension definitions
	 */
	static async retrieveExtensions(client: Client): Promise<Record<string, any>> {
		// Implementation for retrieving extensions
		return {};
	}

	/**
	 * Retrieve enums from database
	 * @param client PostgreSQL client
	 * @param config Configuration
	 * @returns Promise<Record<string, any>> Enum definitions
	 */
	static async retrieveEnums(client: Client, config: Config): Promise<Record<string, any>> {
		const enums: Record<string, any> = {};

		if (
			!config.compareOptions.schemaCompare.namespaces ||
			config.compareOptions.schemaCompare.namespaces.length === 0
		) {
			return enums;
		}

		const namespaces = Array.isArray(config.compareOptions.schemaCompare.namespaces)
			? config.compareOptions.schemaCompare.namespaces
			: [config.compareOptions.schemaCompare.namespaces];

		for (const namespace of namespaces) {
			const result = await client.query(
				`
				SELECT 
					t.typname as enum_name,
					e.enumlabel as enum_value
				FROM pg_type t
				JOIN pg_enum e ON t.oid = e.enumtypid
				JOIN pg_namespace n ON n.oid = t.typnamespace
				WHERE n.nspname = $1
				ORDER BY t.typname, e.enumsortorder
			`,
				[namespace],
			);

			result.rows.forEach((row: any) => {
				const enumName = `"${namespace}"."${row.enum_name}"`;
				if (!enums[enumName]) {
					enums[enumName] = {
						name: row.enum_name,
						schema: namespace,
						values: [],
					};
				}
				enums[enumName].values.push(row.enum_value);
			});
		}

		return enums;
	}

	/**
	 * Retrieve custom types from database
	 * @param client PostgreSQL client
	 * @param config Configuration
	 * @returns Promise<Record<string, any>> Custom type definitions
	 */
	static async retrieveTypes(client: Client, config: Config): Promise<Record<string, any>> {
		const types: Record<string, any> = {};

		if (
			!config.compareOptions.schemaCompare.namespaces ||
			config.compareOptions.schemaCompare.namespaces.length === 0
		) {
			return types;
		}

		const namespaces = Array.isArray(config.compareOptions.schemaCompare.namespaces)
			? config.compareOptions.schemaCompare.namespaces
			: [config.compareOptions.schemaCompare.namespaces];

		for (const namespace of namespaces) {
			const result = await client.query(
				`
				SELECT 
					t.typname as type_name,
					t.typtype as type_type,
					t.typcategory as type_category,
					pg_catalog.format_type(t.oid, NULL) as type_definition
				FROM pg_type t
				JOIN pg_namespace n ON n.oid = t.typnamespace
				WHERE n.nspname = $1
					AND t.typtype IN ('c', 'd') -- 'c' for composite, 'd' for domain
					AND t.typname NOT LIKE '_%' -- Exclude system types
				ORDER BY t.typname
			`,
				[namespace],
			);

			result.rows.forEach((row: any) => {
				const typeName = `"${namespace}"."${row.type_name}"`;
				types[typeName] = {
					name: row.type_name,
					schema: namespace,
					type: row.type_type,
					category: row.type_category,
					definition: row.type_definition,
				};
			});
		}

		return types;
	}

	/**
	 * Retrieve foreign keys from database
	 * @param client PostgreSQL client
	 * @param config Configuration
	 * @returns Promise<Record<string, any>> Foreign key definitions
	 */
	static async retrieveForeignKeys(client: Client, config: Config): Promise<Record<string, any>> {
		const foreignKeys: Record<string, any> = {};

		if (
			!config.compareOptions.schemaCompare.namespaces ||
			config.compareOptions.schemaCompare.namespaces.length === 0
		) {
			return foreignKeys;
		}

		const namespaces = Array.isArray(config.compareOptions.schemaCompare.namespaces)
			? config.compareOptions.schemaCompare.namespaces
			: [config.compareOptions.schemaCompare.namespaces];

		for (const namespace of namespaces) {
			console.log(`🔍 Retrieving foreign keys for namespace: ${namespace}`);

			const result = await client.query(
				`
				SELECT 
					n.nspname AS schema_name,
					c.relname AS table_name,
					con.conname AS constraint_name,
					con.contype AS constraint_type,
					a.attname AS column_name,
					ft.relname AS foreign_table_name,
					fa.attname AS foreign_column_name,
					rc.update_rule,
					rc.delete_rule
				FROM pg_constraint con
				JOIN pg_class c ON con.conrelid = c.oid
				JOIN pg_namespace n ON c.relnamespace = n.oid
				JOIN pg_attribute a ON a.attrelid = c.oid AND a.attnum = ANY(con.conkey)
				LEFT JOIN pg_class ft ON con.confrelid = ft.oid
				LEFT JOIN pg_attribute fa ON fa.attrelid = ft.oid AND fa.attnum = ANY(con.confkey)
				LEFT JOIN information_schema.referential_constraints AS rc
					ON con.conname = rc.constraint_name
					AND n.nspname = rc.constraint_schema
				WHERE con.contype = 'f'
					AND n.nspname = $1
				ORDER BY c.relname, con.conname
			`,
				[namespace],
			);

			console.log(`📊 Found ${result.rows.length} foreign keys in namespace ${namespace}`);

			result.rows.forEach((row: any) => {
				const fkName = `"${namespace}"."${row.table_name}"."${row.constraint_name}"`;
				foreignKeys[fkName] = {
					tableName: row.table_name,
					schema: namespace,
					constraintName: row.constraint_name,
					columnName: row.column_name,
					foreignTableName: row.foreign_table_name,
					foreignColumnName: row.foreign_column_name,
					updateRule: row.update_rule,
					deleteRule: row.delete_rule,
				};

				console.log(
					`  ✅ FK: ${fkName} -> ${namespace}.${row.foreign_table_name}.${row.foreign_column_name}`,
				);
			});
		}

		return foreignKeys;
	}

	/**
	 * Retrieve complete table structure (columns, types, constraints)
	 * @param client PostgreSQL client
	 * @param config Configuration
	 * @returns Promise<Record<string, any>> Table structures
	 */
	static async retrieveTableStructures(
		client: Client,
		config: Config,
	): Promise<Record<string, any>> {
		const tableStructures: Record<string, any> = {};

		if (
			!config.compareOptions.schemaCompare.namespaces ||
			config.compareOptions.schemaCompare.namespaces.length === 0
		) {
			return tableStructures;
		}

		const namespaces = Array.isArray(config.compareOptions.schemaCompare.namespaces)
			? config.compareOptions.schemaCompare.namespaces
			: [config.compareOptions.schemaCompare.namespaces];

		for (const namespace of namespaces) {
			// Obtener estructura completa de las tablas con nombres reales de tipos y primary keys
			const result = await client.query(
				`
				SELECT 
					t.table_name,
					c.column_name,
					c.data_type,
					c.character_maximum_length,
					c.is_nullable,
					c.column_default,
					c.ordinal_position,
					pg_catalog.format_type(a.atttypid, a.atttypmod) as real_data_type,
					CASE WHEN pk.column_name IS NOT NULL THEN true ELSE false END as is_primary_key
				FROM information_schema.tables t
				JOIN information_schema.columns c ON t.table_name = c.table_name AND t.table_schema = c.table_schema
				JOIN pg_class pc ON pc.relname = t.table_name
				JOIN pg_namespace pn ON pn.oid = pc.relnamespace AND pn.nspname = t.table_schema
				JOIN pg_attribute a ON a.attrelid = pc.oid AND a.attname = c.column_name
				LEFT JOIN (
					SELECT ku.table_name, ku.column_name
					FROM information_schema.table_constraints tc
					JOIN information_schema.key_column_usage ku ON tc.constraint_name = ku.constraint_name
					WHERE tc.constraint_type = 'PRIMARY KEY' AND tc.table_schema = $1
				) pk ON pk.table_name = t.table_name AND pk.column_name = c.column_name
				WHERE t.table_schema = $1 AND t.table_type = 'BASE TABLE' AND a.attnum > 0
				ORDER BY t.table_name, c.ordinal_position
			`,
				[namespace],
			);

			result.rows.forEach((row: any) => {
				const tableName = `"${namespace}"."${row.table_name}"`;
				if (!tableStructures[tableName]) {
					tableStructures[tableName] = {
						schema: namespace,
						tableName: row.table_name,
						columns: {},
					};
				}

				// Procesar el valor por defecto para manejar sequences
				let processedDefault = row.column_default;
				if (processedDefault && processedDefault.includes('nextval')) {
					// Convertir nextval a SERIAL para evitar dependencias de sequences
					if (row.real_data_type === 'integer') {
						processedDefault = null; // Se manejará como SERIAL
					}
				}

				// Usar el tipo real en lugar de USER-DEFINED
				const actualDataType = row.real_data_type || row.data_type;

				tableStructures[tableName].columns[row.column_name] = {
					dataType: actualDataType,
					maxLength: row.character_maximum_length,
					isNullable: row.is_nullable === 'YES',
					defaultValue: processedDefault,
					originalDefault: row.column_default, // Guardar el original para referencia
					ordinalPosition: row.ordinal_position,
					isPrimaryKey: row.is_primary_key,
				};
			});
		}

		return tableStructures;
	}
}

export default CatalogApi;
