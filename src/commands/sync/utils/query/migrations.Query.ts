export const existingMigrationSchemaANdTalbes = /*sql*/ `
	-- Crear schema si no existe
		create schema if not exists supabase_migrations;
					
		-- Crear tabla si no existe (estructura compatible)
		create table if not exists supabase_migrations.schema_migrations (
		  version text not null,
		  statements text[] null,
		  name text null,
		  constraint schema_migrations_pkey primary key (version)
		) TABLESPACE pg_default;
		
		create table if not exists supabase_migrations.seed_files (
		  path text not null,
		  hash text not null,
		  constraint seed_files_pkey primary key (path)
		) TABLESPACE pg_default;
`;

export const getMigrations = /*sql*/ `
	SELECT * FROM supabase_migrations.schema_migrations ORDER BY version DESC;
`;
