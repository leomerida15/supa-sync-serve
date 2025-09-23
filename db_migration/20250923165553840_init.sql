/************************************************************/
/*** SCRIPT AUTHOR: leomerida15 (dimasmerida15@gmail.com) ***/
/***    CREATED ON: 2025-09-23T16:55:53.840Z              ***/
/************************************************************/

--- BEGIN INSTALL EXTENSION "vector" ---

CREATE EXTENSION IF NOT EXISTS "vector"; -- WARN: Extension must be firstly installed at server level otherwise an error can occure during patch execution!

--- END INSTALL EXTENSION "vector" ---

--- BEGIN CREATE OR UPDATE SCHEMA supabase_migrations ---

CREATE SCHEMA IF NOT EXISTS supabase_migrations AUTHORIZATION postgres;

COMMENT ON SCHEMA supabase_migrations  IS NULL;

--- END CREATE OR UPDATE SCHEMA supabase_migrations ---

--- BEGIN CREATE OR UPDATE SCHEMA ai ---

CREATE SCHEMA IF NOT EXISTS ai AUTHORIZATION postgres;

COMMENT ON SCHEMA ai  IS NULL;

--- END CREATE OR UPDATE SCHEMA ai ---

--- BEGIN CREATE OR UPDATE SCHEMA reports ---

CREATE SCHEMA IF NOT EXISTS reports AUTHORIZATION postgres;

COMMENT ON SCHEMA reports  IS NULL;

--- END CREATE OR UPDATE SCHEMA reports ---

--- BEGIN CREATE OR UPDATE SCHEMA knowledge ---

CREATE SCHEMA IF NOT EXISTS knowledge AUTHORIZATION postgres;

COMMENT ON SCHEMA knowledge  IS NULL;

--- END CREATE OR UPDATE SCHEMA knowledge ---

--- BEGIN ALTER SEQUENCE "graphql"."seq_schema_version" ---


--- END ALTER SEQUENCE "graphql"."seq_schema_version" ---

--- BEGIN ALTER SEQUENCE "auth"."refresh_tokens_id_seq" ---


--- END ALTER SEQUENCE "auth"."refresh_tokens_id_seq" ---

--- BEGIN CREATE SEQUENCE "public"."form_case_one_all_form_files_id_seq" ---


CREATE SEQUENCE IF NOT EXISTS "public"."form_case_one_all_form_files_id_seq" 
	INCREMENT BY 1 
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START WITH 1
	CACHE 1
	NO CYCLE;

ALTER SEQUENCE "public"."form_case_one_all_form_files_id_seq" OWNER TO postgres;

COMMENT ON SEQUENCE "public"."form_case_one_all_form_files_id_seq"  IS NULL;

--- END CREATE SEQUENCE "public"."form_case_one_all_form_files_id_seq" ---

--- BEGIN CREATE SEQUENCE "reports"."extraction_errors_id_seq" ---


CREATE SEQUENCE IF NOT EXISTS "reports"."extraction_errors_id_seq" 
	INCREMENT BY 1 
	MINVALUE 1
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE;

ALTER SEQUENCE "reports"."extraction_errors_id_seq" OWNER TO postgres;
GRANT SELECT ON SEQUENCE "reports"."extraction_errors_id_seq" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON SEQUENCE "reports"."extraction_errors_id_seq" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON SEQUENCE "reports"."extraction_errors_id_seq" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT USAGE ON SEQUENCE "reports"."extraction_errors_id_seq" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON SEQUENCE "reports"."extraction_errors_id_seq" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON SEQUENCE "reports"."extraction_errors_id_seq" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT USAGE ON SEQUENCE "reports"."extraction_errors_id_seq" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON SEQUENCE "reports"."extraction_errors_id_seq" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON SEQUENCE "reports"."extraction_errors_id_seq" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON SEQUENCE "reports"."extraction_errors_id_seq"  IS NULL;

--- END CREATE SEQUENCE "reports"."extraction_errors_id_seq" ---

--- BEGIN CREATE SEQUENCE "public"."extraction_errors_id_seq" ---


CREATE SEQUENCE IF NOT EXISTS "public"."extraction_errors_id_seq" 
	INCREMENT BY 1 
	MINVALUE 1
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE;

ALTER SEQUENCE "public"."extraction_errors_id_seq" OWNER TO postgres;
GRANT SELECT ON SEQUENCE "public"."extraction_errors_id_seq" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON SEQUENCE "public"."extraction_errors_id_seq" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON SEQUENCE "public"."extraction_errors_id_seq" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT USAGE ON SEQUENCE "public"."extraction_errors_id_seq" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON SEQUENCE "public"."extraction_errors_id_seq" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON SEQUENCE "public"."extraction_errors_id_seq" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT USAGE ON SEQUENCE "public"."extraction_errors_id_seq" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON SEQUENCE "public"."extraction_errors_id_seq" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON SEQUENCE "public"."extraction_errors_id_seq" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT USAGE ON SEQUENCE "public"."extraction_errors_id_seq" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON SEQUENCE "public"."extraction_errors_id_seq" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON SEQUENCE "public"."extraction_errors_id_seq" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT USAGE ON SEQUENCE "public"."extraction_errors_id_seq" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON SEQUENCE "public"."extraction_errors_id_seq" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON SEQUENCE "public"."extraction_errors_id_seq" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT USAGE ON SEQUENCE "public"."extraction_errors_id_seq" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON SEQUENCE "public"."extraction_errors_id_seq" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON SEQUENCE "public"."extraction_errors_id_seq" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON SEQUENCE "public"."extraction_errors_id_seq"  IS NULL;

--- END CREATE SEQUENCE "public"."extraction_errors_id_seq" ---

--- BEGIN CREATE SEQUENCE "ai"."agent_model_settings_id_seq" ---


CREATE SEQUENCE IF NOT EXISTS "ai"."agent_model_settings_id_seq" 
	INCREMENT BY 1 
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START WITH 1
	CACHE 1
	NO CYCLE;

ALTER SEQUENCE "ai"."agent_model_settings_id_seq" OWNER TO postgres;

COMMENT ON SEQUENCE "ai"."agent_model_settings_id_seq"  IS NULL;

--- END CREATE SEQUENCE "ai"."agent_model_settings_id_seq" ---

--- BEGIN CREATE SEQUENCE "public"."form_case_two_financing_options_relation_id_seq" ---


CREATE SEQUENCE IF NOT EXISTS "public"."form_case_two_financing_options_relation_id_seq" 
	INCREMENT BY 1 
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START WITH 1
	CACHE 1
	NO CYCLE;

ALTER SEQUENCE "public"."form_case_two_financing_options_relation_id_seq" OWNER TO postgres;

COMMENT ON SEQUENCE "public"."form_case_two_financing_options_relation_id_seq"  IS NULL;

--- END CREATE SEQUENCE "public"."form_case_two_financing_options_relation_id_seq" ---

--- BEGIN CREATE SEQUENCE "public"."legal_documents_id_seq" ---


CREATE SEQUENCE IF NOT EXISTS "public"."legal_documents_id_seq" 
	INCREMENT BY 1 
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START WITH 1
	CACHE 1
	NO CYCLE;

ALTER SEQUENCE "public"."legal_documents_id_seq" OWNER TO postgres;

COMMENT ON SEQUENCE "public"."legal_documents_id_seq"  IS NULL;

--- END CREATE SEQUENCE "public"."legal_documents_id_seq" ---

--- BEGIN CREATE SEQUENCE "public"."form_case_two_constrainsts_relation_id_seq" ---


CREATE SEQUENCE IF NOT EXISTS "public"."form_case_two_constrainsts_relation_id_seq" 
	INCREMENT BY 1 
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START WITH 1
	CACHE 1
	NO CYCLE;

ALTER SEQUENCE "public"."form_case_two_constrainsts_relation_id_seq" OWNER TO postgres;

COMMENT ON SEQUENCE "public"."form_case_two_constrainsts_relation_id_seq"  IS NULL;

--- END CREATE SEQUENCE "public"."form_case_two_constrainsts_relation_id_seq" ---

--- BEGIN CREATE SEQUENCE "knowledge"."documents_id_seq" ---


CREATE SEQUENCE IF NOT EXISTS "knowledge"."documents_id_seq" 
	INCREMENT BY 1 
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START WITH 1
	CACHE 1
	NO CYCLE;

ALTER SEQUENCE "knowledge"."documents_id_seq" OWNER TO postgres;
GRANT SELECT ON SEQUENCE "knowledge"."documents_id_seq" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON SEQUENCE "knowledge"."documents_id_seq" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON SEQUENCE "knowledge"."documents_id_seq" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT USAGE ON SEQUENCE "knowledge"."documents_id_seq" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON SEQUENCE "knowledge"."documents_id_seq" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON SEQUENCE "knowledge"."documents_id_seq" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT USAGE ON SEQUENCE "knowledge"."documents_id_seq" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON SEQUENCE "knowledge"."documents_id_seq" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON SEQUENCE "knowledge"."documents_id_seq" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT USAGE ON SEQUENCE "knowledge"."documents_id_seq" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON SEQUENCE "knowledge"."documents_id_seq" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON SEQUENCE "knowledge"."documents_id_seq" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT USAGE ON SEQUENCE "knowledge"."documents_id_seq" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON SEQUENCE "knowledge"."documents_id_seq" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON SEQUENCE "knowledge"."documents_id_seq" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT USAGE ON SEQUENCE "knowledge"."documents_id_seq" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON SEQUENCE "knowledge"."documents_id_seq" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON SEQUENCE "knowledge"."documents_id_seq" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON SEQUENCE "knowledge"."documents_id_seq"  IS NULL;

--- END CREATE SEQUENCE "knowledge"."documents_id_seq" ---

--- BEGIN CREATE TABLE "public"."form_case_one_extend_docs" ---

CREATE TABLE IF NOT EXISTS "public"."form_case_one_extend_docs" (
	"id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	"name" text NOT NULL  ,
	"created_at" timestamptz NULL DEFAULT now() ,
	"updated_at" timestamptz NULL DEFAULT now() ,
	"path" text NOT NULL  ,
	CONSTRAINT "form_case_one_extend_docs_path_key" UNIQUE (path) ,
	CONSTRAINT "form_case_one_extend_docs_pkey" PRIMARY KEY (id) 
);

CREATE INDEX IF NOT EXISTS idx_form_case_one_extend_docs_created_at ON public.form_case_one_extend_docs USING btree (created_at);


CREATE INDEX IF NOT EXISTS idx_form_case_one_extend_docs_name ON public.form_case_one_extend_docs USING btree (name);

ALTER TABLE IF EXISTS "public"."form_case_one_extend_docs" OWNER TO postgres;

GRANT SELECT ON TABLE "public"."form_case_one_extend_docs" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_extend_docs" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_extend_docs" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_extend_docs" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_extend_docs" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_extend_docs" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_extend_docs" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_extend_docs" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_extend_docs" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_extend_docs" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_extend_docs" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_extend_docs" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_extend_docs" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_extend_docs" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_extend_docs" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_extend_docs" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_extend_docs" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_extend_docs" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_extend_docs" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_extend_docs" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_extend_docs" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_extend_docs" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_extend_docs" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_extend_docs" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_extend_docs" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_extend_docs" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_extend_docs" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_extend_docs" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_extend_docs" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_extend_docs" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_extend_docs" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_extend_docs" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_extend_docs" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_extend_docs" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_extend_docs" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_extend_docs" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_extend_docs" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_extend_docs" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_extend_docs" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_extend_docs" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "public"."form_case_one_extend_docs"."id"  IS 'Identificador único del documento';


COMMENT ON COLUMN "public"."form_case_one_extend_docs"."name"  IS 'ID único del archivo (UUID)';


COMMENT ON COLUMN "public"."form_case_one_extend_docs"."created_at"  IS 'Fecha y hora de creación del registro';


COMMENT ON COLUMN "public"."form_case_one_extend_docs"."updated_at"  IS 'Fecha y hora de última actualización del registro';


COMMENT ON COLUMN "public"."form_case_one_extend_docs"."path"  IS NULL;

COMMENT ON CONSTRAINT "form_case_one_extend_docs_path_key" ON "public"."form_case_one_extend_docs" IS NULL;


COMMENT ON CONSTRAINT "form_case_one_extend_docs_pkey" ON "public"."form_case_one_extend_docs" IS NULL;

COMMENT ON INDEX "public"."idx_form_case_one_extend_docs_created_at"  IS NULL;


COMMENT ON INDEX "public"."idx_form_case_one_extend_docs_name"  IS NULL;

COMMENT ON TABLE "public"."form_case_one_extend_docs"  IS 'Tabla para almacenar archivos adjuntos de los casos (relación 1:N)';

--- END CREATE TABLE "public"."form_case_one_extend_docs" ---

--- BEGIN CREATE TABLE "public"."form_case_one_pressure" ---

CREATE TABLE IF NOT EXISTS "public"."form_case_one_pressure" (
	"id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	"created_at" timestamptz NOT NULL DEFAULT now() ,
	"name" text NOT NULL  ,
	CONSTRAINT "form_case_one_pressure_pkey" PRIMARY KEY (id) 
);

ALTER TABLE IF EXISTS "public"."form_case_one_pressure" OWNER TO postgres;

GRANT SELECT ON TABLE "public"."form_case_one_pressure" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_pressure" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_pressure" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_pressure" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_pressure" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_pressure" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_pressure" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_pressure" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_pressure" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_pressure" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_pressure" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_pressure" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_pressure" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_pressure" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_pressure" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_pressure" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_pressure" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_pressure" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_pressure" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_pressure" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_pressure" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_pressure" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_pressure" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_pressure" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_pressure" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_pressure" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_pressure" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_pressure" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_pressure" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_pressure" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_pressure" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_pressure" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_pressure" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_pressure" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_pressure" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_pressure" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_pressure" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_pressure" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_pressure" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_pressure" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "public"."form_case_one_pressure"."id"  IS NULL;


COMMENT ON COLUMN "public"."form_case_one_pressure"."created_at"  IS NULL;


COMMENT ON COLUMN "public"."form_case_one_pressure"."name"  IS NULL;

COMMENT ON CONSTRAINT "form_case_one_pressure_pkey" ON "public"."form_case_one_pressure" IS NULL;

COMMENT ON TABLE "public"."form_case_one_pressure"  IS NULL;

--- END CREATE TABLE "public"."form_case_one_pressure" ---

--- BEGIN CREATE TABLE "public"."form_case_one_time_existence_error" ---

CREATE TABLE IF NOT EXISTS "public"."form_case_one_time_existence_error" (
	"id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	"created_at" timestamptz NOT NULL DEFAULT now() ,
	"name" text NOT NULL  ,
	CONSTRAINT "form_case_one_time_existence_error_pkey" PRIMARY KEY (id) 
);

ALTER TABLE IF EXISTS "public"."form_case_one_time_existence_error" OWNER TO postgres;

GRANT SELECT ON TABLE "public"."form_case_one_time_existence_error" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_time_existence_error" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_time_existence_error" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_time_existence_error" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_time_existence_error" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_time_existence_error" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_time_existence_error" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_time_existence_error" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_time_existence_error" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_time_existence_error" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_time_existence_error" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_time_existence_error" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_time_existence_error" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_time_existence_error" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_time_existence_error" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_time_existence_error" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_time_existence_error" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_time_existence_error" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_time_existence_error" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_time_existence_error" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_time_existence_error" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_time_existence_error" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_time_existence_error" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_time_existence_error" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_time_existence_error" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_time_existence_error" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_time_existence_error" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_time_existence_error" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_time_existence_error" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_time_existence_error" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_time_existence_error" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_time_existence_error" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_time_existence_error" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_time_existence_error" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_time_existence_error" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_time_existence_error" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_time_existence_error" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_time_existence_error" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_time_existence_error" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_time_existence_error" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "public"."form_case_one_time_existence_error"."id"  IS NULL;


COMMENT ON COLUMN "public"."form_case_one_time_existence_error"."created_at"  IS NULL;


COMMENT ON COLUMN "public"."form_case_one_time_existence_error"."name"  IS NULL;

COMMENT ON CONSTRAINT "form_case_one_time_existence_error_pkey" ON "public"."form_case_one_time_existence_error" IS NULL;

COMMENT ON TABLE "public"."form_case_one_time_existence_error"  IS NULL;

--- END CREATE TABLE "public"."form_case_one_time_existence_error" ---

--- BEGIN CREATE TABLE "public"."form_case_one_causes" ---

CREATE TABLE IF NOT EXISTS "public"."form_case_one_causes" (
	"id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	"created_at" timestamptz NOT NULL DEFAULT now() ,
	"group" text NOT NULL  ,
	"value" text NOT NULL  ,
	CONSTRAINT "form_case_one_causes_pkey" PRIMARY KEY (id) 
);

ALTER TABLE IF EXISTS "public"."form_case_one_causes" OWNER TO postgres;

GRANT SELECT ON TABLE "public"."form_case_one_causes" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_causes" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_causes" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_causes" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_causes" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_causes" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_causes" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_causes" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_causes" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_causes" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_causes" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_causes" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_causes" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_causes" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_causes" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_causes" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_causes" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_causes" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_causes" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_causes" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_causes" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_causes" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_causes" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_causes" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_causes" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_causes" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_causes" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_causes" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_causes" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_causes" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_causes" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_causes" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_causes" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_causes" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_causes" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_causes" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_causes" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_causes" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_causes" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_causes" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "public"."form_case_one_causes"."id"  IS NULL;


COMMENT ON COLUMN "public"."form_case_one_causes"."created_at"  IS NULL;


COMMENT ON COLUMN "public"."form_case_one_causes"."group"  IS NULL;


COMMENT ON COLUMN "public"."form_case_one_causes"."value"  IS NULL;

COMMENT ON CONSTRAINT "form_case_one_causes_pkey" ON "public"."form_case_one_causes" IS NULL;

COMMENT ON TABLE "public"."form_case_one_causes"  IS 'causes of the problem that is occurring in your community';

--- END CREATE TABLE "public"."form_case_one_causes" ---

--- BEGIN CREATE TABLE "public"."form_case_one" ---

CREATE TABLE IF NOT EXISTS "public"."form_case_one" (
	"id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	"description" uuid NULL DEFAULT gen_random_uuid() ,
	"time_existence_error_id" uuid NULL  ,
	"final_goal" uuid NULL DEFAULT gen_random_uuid() ,
	"pressure_id" uuid NULL  ,
	"previous_measures" uuid NULL DEFAULT gen_random_uuid() ,
	"created_at" timestamptz NULL DEFAULT now() ,
	"updated_at" timestamptz NULL DEFAULT now() ,
	"cause_custom" uuid NULL DEFAULT gen_random_uuid() ,
	"constraint_custom" uuid NULL DEFAULT gen_random_uuid() ,
	"metadata" jsonb NULL  ,
	"name" text NULL  ,
	CONSTRAINT "form_case_one_cause_custom_fkey" FOREIGN KEY (cause_custom) REFERENCES form_case_one_extend_docs(id) ,
	CONSTRAINT "form_case_one_constraint_custom_fkey" FOREIGN KEY (constraint_custom) REFERENCES form_case_one_extend_docs(id) ,
	CONSTRAINT "form_case_one_description_fkey" FOREIGN KEY (description) REFERENCES form_case_one_extend_docs(id) ,
	CONSTRAINT "form_case_one_final_goal_fkey" FOREIGN KEY (final_goal) REFERENCES form_case_one_extend_docs(id) ,
	CONSTRAINT "form_case_one_pkey" PRIMARY KEY (id) ,
	CONSTRAINT "form_case_one_pressure_id_fkey" FOREIGN KEY (pressure_id) REFERENCES form_case_one_pressure(id) ,
	CONSTRAINT "form_case_one_previous_measures_fkey" FOREIGN KEY (previous_measures) REFERENCES form_case_one_extend_docs(id) ,
	CONSTRAINT "form_case_one_time_existence_error_id_fkey" FOREIGN KEY (time_existence_error_id) REFERENCES form_case_one_time_existence_error(id) 
);

CREATE INDEX IF NOT EXISTS idx_form_case_one_created_at ON public.form_case_one USING btree (created_at);


CREATE INDEX IF NOT EXISTS idx_form_case_one_updated_at ON public.form_case_one USING btree (updated_at);


CREATE INDEX IF NOT EXISTS idx_form_case_one_time_existence_error ON public.form_case_one USING btree (time_existence_error_id);


CREATE INDEX IF NOT EXISTS idx_form_case_one_pressure ON public.form_case_one USING btree (pressure_id);

ALTER TABLE IF EXISTS "public"."form_case_one" OWNER TO postgres;

GRANT SELECT ON TABLE "public"."form_case_one" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "public"."form_case_one"."id"  IS 'Identificador único del caso';


COMMENT ON COLUMN "public"."form_case_one"."description"  IS 'Descripción del problema principal (HTML)';


COMMENT ON COLUMN "public"."form_case_one"."time_existence_error_id"  IS 'Referencia a la tabla form_case_one_time_existence_error (relación 1:N)';


COMMENT ON COLUMN "public"."form_case_one"."final_goal"  IS 'Objetivo final del caso (HTML)';


COMMENT ON COLUMN "public"."form_case_one"."pressure_id"  IS 'Referencia a la tabla form_case_one_pressure (relación 1:N)';


COMMENT ON COLUMN "public"."form_case_one"."previous_measures"  IS 'Descripción de medidas previas tomadas (HTML)';


COMMENT ON COLUMN "public"."form_case_one"."created_at"  IS 'Fecha y hora de creación del registro';


COMMENT ON COLUMN "public"."form_case_one"."updated_at"  IS 'Fecha y hora de última actualización del registro';


COMMENT ON COLUMN "public"."form_case_one"."cause_custom"  IS NULL;


COMMENT ON COLUMN "public"."form_case_one"."constraint_custom"  IS NULL;


COMMENT ON COLUMN "public"."form_case_one"."metadata"  IS NULL;


COMMENT ON COLUMN "public"."form_case_one"."name"  IS NULL;

COMMENT ON CONSTRAINT "form_case_one_cause_custom_fkey" ON "public"."form_case_one" IS NULL;


COMMENT ON CONSTRAINT "form_case_one_constraint_custom_fkey" ON "public"."form_case_one" IS NULL;


COMMENT ON CONSTRAINT "form_case_one_description_fkey" ON "public"."form_case_one" IS NULL;


COMMENT ON CONSTRAINT "form_case_one_final_goal_fkey" ON "public"."form_case_one" IS NULL;


COMMENT ON CONSTRAINT "form_case_one_pkey" ON "public"."form_case_one" IS NULL;


COMMENT ON CONSTRAINT "form_case_one_pressure_id_fkey" ON "public"."form_case_one" IS NULL;


COMMENT ON CONSTRAINT "form_case_one_previous_measures_fkey" ON "public"."form_case_one" IS NULL;


COMMENT ON CONSTRAINT "form_case_one_time_existence_error_id_fkey" ON "public"."form_case_one" IS NULL;

COMMENT ON INDEX "public"."idx_form_case_one_created_at"  IS NULL;


COMMENT ON INDEX "public"."idx_form_case_one_updated_at"  IS NULL;


COMMENT ON INDEX "public"."idx_form_case_one_time_existence_error"  IS NULL;


COMMENT ON INDEX "public"."idx_form_case_one_pressure"  IS NULL;

COMMENT ON TABLE "public"."form_case_one"  IS 'Tabla principal para almacenar los datos del formulario de caso uno';

--- END CREATE TABLE "public"."form_case_one" ---

--- BEGIN CREATE TABLE "public"."form_case_one_consequences" ---

CREATE TABLE IF NOT EXISTS "public"."form_case_one_consequences" (
	"id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	"name" text NOT NULL  ,
	"created_at" timestamptz NOT NULL DEFAULT now() ,
	CONSTRAINT "form_case_one_consequences_pkey" PRIMARY KEY (id) 
);

ALTER TABLE IF EXISTS "public"."form_case_one_consequences" OWNER TO postgres;

GRANT SELECT ON TABLE "public"."form_case_one_consequences" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_consequences" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_consequences" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_consequences" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_consequences" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_consequences" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_consequences" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_consequences" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_consequences" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_consequences" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_consequences" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_consequences" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_consequences" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_consequences" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_consequences" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_consequences" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_consequences" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_consequences" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_consequences" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_consequences" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_consequences" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_consequences" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_consequences" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_consequences" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_consequences" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_consequences" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_consequences" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_consequences" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_consequences" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_consequences" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_consequences" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_consequences" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_consequences" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_consequences" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_consequences" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_consequences" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_consequences" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_consequences" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_consequences" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_consequences" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "public"."form_case_one_consequences"."id"  IS NULL;


COMMENT ON COLUMN "public"."form_case_one_consequences"."name"  IS NULL;


COMMENT ON COLUMN "public"."form_case_one_consequences"."created_at"  IS NULL;

COMMENT ON CONSTRAINT "form_case_one_consequences_pkey" ON "public"."form_case_one_consequences" IS NULL;

COMMENT ON TABLE "public"."form_case_one_consequences"  IS NULL;

--- END CREATE TABLE "public"."form_case_one_consequences" ---

--- BEGIN CREATE TABLE "public"."form_case_one_sub_consequences" ---

CREATE TABLE IF NOT EXISTS "public"."form_case_one_sub_consequences" (
	"id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	"name" text NOT NULL  ,
	"id_form_case_one_consequences" uuid NOT NULL DEFAULT gen_random_uuid() ,
	CONSTRAINT "form_case_one_sub_consequence_id_form_case_one_consequence_fkey" FOREIGN KEY (id_form_case_one_consequences) REFERENCES form_case_one_consequences(id) ,
	CONSTRAINT "form_case_one_sub_consequences_pkey" PRIMARY KEY (id) 
);

ALTER TABLE IF EXISTS "public"."form_case_one_sub_consequences" OWNER TO postgres;

GRANT SELECT ON TABLE "public"."form_case_one_sub_consequences" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_sub_consequences" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_sub_consequences" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_sub_consequences" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_sub_consequences" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_sub_consequences" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_sub_consequences" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_sub_consequences" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_sub_consequences" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_sub_consequences" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_sub_consequences" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_sub_consequences" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_sub_consequences" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_sub_consequences" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_sub_consequences" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_sub_consequences" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_sub_consequences" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_sub_consequences" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_sub_consequences" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_sub_consequences" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_sub_consequences" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_sub_consequences" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_sub_consequences" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_sub_consequences" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_sub_consequences" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_sub_consequences" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_sub_consequences" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_sub_consequences" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_sub_consequences" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_sub_consequences" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_sub_consequences" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_sub_consequences" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_sub_consequences" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_sub_consequences" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_sub_consequences" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_sub_consequences" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_sub_consequences" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_sub_consequences" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_sub_consequences" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_sub_consequences" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "public"."form_case_one_sub_consequences"."id"  IS NULL;


COMMENT ON COLUMN "public"."form_case_one_sub_consequences"."name"  IS NULL;


COMMENT ON COLUMN "public"."form_case_one_sub_consequences"."id_form_case_one_consequences"  IS NULL;

COMMENT ON CONSTRAINT "form_case_one_sub_consequence_id_form_case_one_consequence_fkey" ON "public"."form_case_one_sub_consequences" IS NULL;


COMMENT ON CONSTRAINT "form_case_one_sub_consequences_pkey" ON "public"."form_case_one_sub_consequences" IS NULL;

COMMENT ON TABLE "public"."form_case_one_sub_consequences"  IS NULL;

--- END CREATE TABLE "public"."form_case_one_sub_consequences" ---

--- BEGIN ALTER TABLE "storage"."buckets" ---

ALTER TABLE IF EXISTS "storage"."buckets" ADD COLUMN IF NOT EXISTS "type" buckettype NOT NULL DEFAULT 'STANDARD'::storage.buckettype ;

COMMENT ON COLUMN "storage"."buckets"."type"  IS NULL;



--- END ALTER TABLE "storage"."buckets" ---

--- BEGIN CREATE TABLE "public"."form_case_one_constraints" ---

CREATE TABLE IF NOT EXISTS "public"."form_case_one_constraints" (
	"id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	"created_at" timestamptz NOT NULL DEFAULT now() ,
	"name" text NOT NULL  ,
	CONSTRAINT "form_case_one_constraints_pkey" PRIMARY KEY (id) 
);

ALTER TABLE IF EXISTS "public"."form_case_one_constraints" OWNER TO postgres;

GRANT SELECT ON TABLE "public"."form_case_one_constraints" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_constraints" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_constraints" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_constraints" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_constraints" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_constraints" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_constraints" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_constraints" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_constraints" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_constraints" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_constraints" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_constraints" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_constraints" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_constraints" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_constraints" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_constraints" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_constraints" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_constraints" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_constraints" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_constraints" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_constraints" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_constraints" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_constraints" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_constraints" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_constraints" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_constraints" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_constraints" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_constraints" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_constraints" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_constraints" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_constraints" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_constraints" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_constraints" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_constraints" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_constraints" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_constraints" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_constraints" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_constraints" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_constraints" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_constraints" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "public"."form_case_one_constraints"."id"  IS NULL;


COMMENT ON COLUMN "public"."form_case_one_constraints"."created_at"  IS NULL;


COMMENT ON COLUMN "public"."form_case_one_constraints"."name"  IS NULL;

COMMENT ON CONSTRAINT "form_case_one_constraints_pkey" ON "public"."form_case_one_constraints" IS NULL;

COMMENT ON TABLE "public"."form_case_one_constraints"  IS 'known constraints on a problem';

--- END CREATE TABLE "public"."form_case_one_constraints" ---

--- BEGIN ALTER TABLE "storage"."s3_multipart_uploads" ---



--- END ALTER TABLE "storage"."s3_multipart_uploads" ---

--- BEGIN CREATE TABLE "public"."group_comunity" ---

CREATE TABLE IF NOT EXISTS "public"."group_comunity" (
	"created_at" timestamptz NOT NULL DEFAULT now() ,
	"name" text NOT NULL  ,
	"id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	CONSTRAINT "group_comunity_pkey" PRIMARY KEY (id) 
);

ALTER TABLE IF EXISTS "public"."group_comunity" OWNER TO postgres;

GRANT SELECT ON TABLE "public"."group_comunity" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."group_comunity" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."group_comunity" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."group_comunity" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."group_comunity" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."group_comunity" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."group_comunity" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."group_comunity" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."group_comunity" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."group_comunity" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."group_comunity" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."group_comunity" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."group_comunity" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."group_comunity" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."group_comunity" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."group_comunity" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."group_comunity" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."group_comunity" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."group_comunity" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."group_comunity" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."group_comunity" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."group_comunity" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."group_comunity" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."group_comunity" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."group_comunity" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."group_comunity" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."group_comunity" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."group_comunity" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."group_comunity" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."group_comunity" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."group_comunity" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."group_comunity" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."group_comunity" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."group_comunity" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."group_comunity" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."group_comunity" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."group_comunity" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."group_comunity" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."group_comunity" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."group_comunity" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "public"."group_comunity"."created_at"  IS NULL;


COMMENT ON COLUMN "public"."group_comunity"."name"  IS NULL;


COMMENT ON COLUMN "public"."group_comunity"."id"  IS NULL;

COMMENT ON CONSTRAINT "group_comunity_pkey" ON "public"."group_comunity" IS NULL;

COMMENT ON TABLE "public"."group_comunity"  IS NULL;

--- END CREATE TABLE "public"."group_comunity" ---

--- BEGIN ALTER TABLE "auth"."flow_state" ---



--- END ALTER TABLE "auth"."flow_state" ---

--- BEGIN ALTER TABLE "auth"."sso_providers" ---

ALTER TABLE IF EXISTS "auth"."sso_providers" DROP COLUMN IF EXISTS "disabled" CASCADE; --WARN: Drop column can occure in data loss!

DROP INDEX IF EXISTS sso_providers_resource_id_pattern_idx;



--- END ALTER TABLE "auth"."sso_providers" ---

--- BEGIN ALTER TABLE "auth"."users" ---



--- END ALTER TABLE "auth"."users" ---

--- BEGIN ALTER TABLE "auth"."sessions" ---



--- END ALTER TABLE "auth"."sessions" ---

--- BEGIN CREATE TABLE "public"."all_form_files" ---

CREATE TABLE IF NOT EXISTS "public"."all_form_files" (
	"id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	"created_at" timestamptz NOT NULL DEFAULT now() ,
	"name" text NULL  ,
	"path" text NULL  ,
	CONSTRAINT "form_case_one_files_pkey" PRIMARY KEY (id) 
);

ALTER TABLE IF EXISTS "public"."all_form_files" OWNER TO postgres;

GRANT SELECT ON TABLE "public"."all_form_files" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."all_form_files" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."all_form_files" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."all_form_files" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."all_form_files" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."all_form_files" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."all_form_files" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."all_form_files" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."all_form_files" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."all_form_files" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."all_form_files" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."all_form_files" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."all_form_files" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."all_form_files" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."all_form_files" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."all_form_files" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."all_form_files" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."all_form_files" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."all_form_files" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."all_form_files" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."all_form_files" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."all_form_files" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."all_form_files" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."all_form_files" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."all_form_files" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."all_form_files" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."all_form_files" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."all_form_files" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."all_form_files" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."all_form_files" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."all_form_files" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."all_form_files" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."all_form_files" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."all_form_files" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."all_form_files" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."all_form_files" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."all_form_files" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."all_form_files" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."all_form_files" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."all_form_files" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "public"."all_form_files"."id"  IS NULL;


COMMENT ON COLUMN "public"."all_form_files"."created_at"  IS NULL;


COMMENT ON COLUMN "public"."all_form_files"."name"  IS NULL;


COMMENT ON COLUMN "public"."all_form_files"."path"  IS NULL;

COMMENT ON CONSTRAINT "form_case_one_files_pkey" ON "public"."all_form_files" IS NULL;

COMMENT ON TABLE "public"."all_form_files"  IS 'table for all form files';

--- END CREATE TABLE "public"."all_form_files" ---

--- BEGIN ALTER TABLE "auth"."mfa_factors" ---



--- END ALTER TABLE "auth"."mfa_factors" ---

--- BEGIN CREATE TABLE "public"."form_case_two_actors_groups" ---

CREATE TABLE IF NOT EXISTS "public"."form_case_two_actors_groups" (
	"id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	"created_at" timestamptz NOT NULL DEFAULT now() ,
	"name" text NOT NULL  ,
	CONSTRAINT "form_case_two_actors_groups_pkey" PRIMARY KEY (id) 
);

ALTER TABLE IF EXISTS "public"."form_case_two_actors_groups" OWNER TO postgres;

GRANT SELECT ON TABLE "public"."form_case_two_actors_groups" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_actors_groups" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_actors_groups" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_actors_groups" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_actors_groups" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_actors_groups" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_actors_groups" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_actors_groups" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_actors_groups" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_actors_groups" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_actors_groups" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_actors_groups" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_actors_groups" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_actors_groups" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_actors_groups" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_actors_groups" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_actors_groups" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_actors_groups" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_actors_groups" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_actors_groups" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_actors_groups" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_actors_groups" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_actors_groups" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_actors_groups" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_actors_groups" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_actors_groups" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_actors_groups" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_actors_groups" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_actors_groups" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_actors_groups" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_actors_groups" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_actors_groups" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_actors_groups" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_actors_groups" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_actors_groups" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_actors_groups" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_actors_groups" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_actors_groups" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_actors_groups" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_actors_groups" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "public"."form_case_two_actors_groups"."id"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two_actors_groups"."created_at"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two_actors_groups"."name"  IS NULL;

COMMENT ON CONSTRAINT "form_case_two_actors_groups_pkey" ON "public"."form_case_two_actors_groups" IS NULL;

COMMENT ON TABLE "public"."form_case_two_actors_groups"  IS 'Ny actors groups';

--- END CREATE TABLE "public"."form_case_two_actors_groups" ---

--- BEGIN CREATE TABLE "public"."form_case_two_constraints" ---

CREATE TABLE IF NOT EXISTS "public"."form_case_two_constraints" (
	"id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	"created_at" timestamptz NOT NULL DEFAULT now() ,
	"name" text NOT NULL  ,
	CONSTRAINT "form_case_two_constraints_pkey" PRIMARY KEY (id) 
);

ALTER TABLE IF EXISTS "public"."form_case_two_constraints" OWNER TO postgres;

GRANT SELECT ON TABLE "public"."form_case_two_constraints" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_constraints" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_constraints" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_constraints" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_constraints" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_constraints" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_constraints" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_constraints" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_constraints" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_constraints" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_constraints" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_constraints" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_constraints" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_constraints" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_constraints" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_constraints" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_constraints" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_constraints" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_constraints" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_constraints" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_constraints" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_constraints" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_constraints" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_constraints" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_constraints" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_constraints" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_constraints" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_constraints" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_constraints" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_constraints" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_constraints" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_constraints" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_constraints" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_constraints" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_constraints" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_constraints" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_constraints" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_constraints" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_constraints" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_constraints" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "public"."form_case_two_constraints"."id"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two_constraints"."created_at"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two_constraints"."name"  IS NULL;

COMMENT ON CONSTRAINT "form_case_two_constraints_pkey" ON "public"."form_case_two_constraints" IS NULL;

COMMENT ON TABLE "public"."form_case_two_constraints"  IS NULL;

--- END CREATE TABLE "public"."form_case_two_constraints" ---

--- BEGIN CREATE TABLE "public"."form_case_two_extended_docs" ---

CREATE TABLE IF NOT EXISTS "public"."form_case_two_extended_docs" (
	"id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	"created_at" timestamptz NOT NULL DEFAULT now() ,
	"name" text NOT NULL  ,
	"path" text NOT NULL  ,
	"updated_at" timestamptz NULL  ,
	CONSTRAINT "form_case_two_extended_docs_pkey" PRIMARY KEY (id) 
);

ALTER TABLE IF EXISTS "public"."form_case_two_extended_docs" OWNER TO postgres;

GRANT SELECT ON TABLE "public"."form_case_two_extended_docs" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_extended_docs" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_extended_docs" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_extended_docs" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_extended_docs" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_extended_docs" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_extended_docs" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_extended_docs" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_extended_docs" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_extended_docs" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_extended_docs" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_extended_docs" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_extended_docs" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_extended_docs" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_extended_docs" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_extended_docs" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_extended_docs" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_extended_docs" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_extended_docs" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_extended_docs" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_extended_docs" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_extended_docs" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_extended_docs" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_extended_docs" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_extended_docs" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_extended_docs" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_extended_docs" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_extended_docs" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_extended_docs" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_extended_docs" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_extended_docs" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_extended_docs" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_extended_docs" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_extended_docs" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_extended_docs" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_extended_docs" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_extended_docs" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_extended_docs" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_extended_docs" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_extended_docs" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "public"."form_case_two_extended_docs"."id"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two_extended_docs"."created_at"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two_extended_docs"."name"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two_extended_docs"."path"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two_extended_docs"."updated_at"  IS NULL;

COMMENT ON CONSTRAINT "form_case_two_extended_docs_pkey" ON "public"."form_case_two_extended_docs" IS NULL;

COMMENT ON TABLE "public"."form_case_two_extended_docs"  IS NULL;

--- END CREATE TABLE "public"."form_case_two_extended_docs" ---

--- BEGIN CREATE TABLE "public"."form_case_two" ---

CREATE TABLE IF NOT EXISTS "public"."form_case_two" (
	"id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	"created_at" timestamptz NOT NULL DEFAULT now() ,
	"name" text NOT NULL  ,
	"description" uuid NOT NULL DEFAULT gen_random_uuid() ,
	"aditional_financing" uuid NOT NULL DEFAULT gen_random_uuid() ,
	"constraint_custom" uuid NOT NULL DEFAULT gen_random_uuid() ,
	"esitmated_budget_amount" numeric NULL  ,
	"estimated_budget_currency" text NULL  ,
	"aditional_financing_amount" numeric NULL  ,
	"aditional_financing_currency" numeric NULL  ,
	CONSTRAINT "form_case_two_aditional_financing_fkey" FOREIGN KEY (aditional_financing) REFERENCES form_case_two_extended_docs(id) ,
	CONSTRAINT "form_case_two_constraint_custom_fkey" FOREIGN KEY (constraint_custom) REFERENCES form_case_two_extended_docs(id) ,
	CONSTRAINT "form_case_two_description_fkey" FOREIGN KEY (description) REFERENCES form_case_two_extended_docs(id) ,
	CONSTRAINT "form_case_two_pkey" PRIMARY KEY (id) 
);

ALTER TABLE IF EXISTS "public"."form_case_two" OWNER TO postgres;

GRANT SELECT ON TABLE "public"."form_case_two" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "public"."form_case_two"."id"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two"."created_at"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two"."name"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two"."description"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two"."aditional_financing"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two"."constraint_custom"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two"."esitmated_budget_amount"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two"."estimated_budget_currency"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two"."aditional_financing_amount"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two"."aditional_financing_currency"  IS NULL;

COMMENT ON CONSTRAINT "form_case_two_aditional_financing_fkey" ON "public"."form_case_two" IS NULL;


COMMENT ON CONSTRAINT "form_case_two_constraint_custom_fkey" ON "public"."form_case_two" IS NULL;


COMMENT ON CONSTRAINT "form_case_two_description_fkey" ON "public"."form_case_two" IS NULL;


COMMENT ON CONSTRAINT "form_case_two_pkey" ON "public"."form_case_two" IS NULL;

COMMENT ON TABLE "public"."form_case_two"  IS NULL;

--- END CREATE TABLE "public"."form_case_two" ---

--- BEGIN CREATE TABLE "public"."form_case_two_target_population" ---

CREATE TABLE IF NOT EXISTS "public"."form_case_two_target_population" (
	"id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	"created_at" timestamptz NOT NULL DEFAULT now() ,
	"name" text NOT NULL  ,
	"group" text NOT NULL  ,
	CONSTRAINT "form_case_tow_target_population_pkey" PRIMARY KEY (id) 
);

ALTER TABLE IF EXISTS "public"."form_case_two_target_population" OWNER TO postgres;

GRANT SELECT ON TABLE "public"."form_case_two_target_population" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_target_population" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_target_population" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_target_population" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_target_population" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_target_population" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_target_population" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_target_population" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_target_population" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_target_population" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_target_population" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_target_population" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_target_population" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_target_population" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_target_population" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_target_population" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_target_population" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_target_population" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_target_population" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_target_population" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_target_population" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_target_population" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_target_population" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_target_population" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_target_population" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_target_population" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_target_population" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_target_population" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_target_population" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_target_population" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_target_population" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_target_population" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_target_population" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_target_population" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_target_population" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_target_population" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_target_population" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_target_population" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_target_population" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_target_population" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "public"."form_case_two_target_population"."id"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two_target_population"."created_at"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two_target_population"."name"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two_target_population"."group"  IS NULL;

COMMENT ON CONSTRAINT "form_case_tow_target_population_pkey" ON "public"."form_case_two_target_population" IS NULL;

COMMENT ON TABLE "public"."form_case_two_target_population"  IS NULL;

--- END CREATE TABLE "public"."form_case_two_target_population" ---

--- BEGIN CREATE TABLE "public"."form_case_two_policy_objective" ---

CREATE TABLE IF NOT EXISTS "public"."form_case_two_policy_objective" (
	"name" text NOT NULL  ,
	"id" uuid NOT NULL  ,
	CONSTRAINT "form_cae_two_policy_objective_type_pkey" PRIMARY KEY (id) 
);

ALTER TABLE IF EXISTS "public"."form_case_two_policy_objective" OWNER TO postgres;

GRANT SELECT ON TABLE "public"."form_case_two_policy_objective" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_policy_objective" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_policy_objective" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_policy_objective" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_policy_objective" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_policy_objective" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_policy_objective" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_policy_objective" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_policy_objective" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_policy_objective" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_policy_objective" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_policy_objective" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_policy_objective" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_policy_objective" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_policy_objective" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_policy_objective" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_policy_objective" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_policy_objective" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_policy_objective" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_policy_objective" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_policy_objective" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_policy_objective" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_policy_objective" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_policy_objective" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_policy_objective" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_policy_objective" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_policy_objective" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_policy_objective" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_policy_objective" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_policy_objective" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_policy_objective" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_policy_objective" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_policy_objective" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_policy_objective" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_policy_objective" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_policy_objective" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_policy_objective" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_policy_objective" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_policy_objective" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_policy_objective" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "public"."form_case_two_policy_objective"."name"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two_policy_objective"."id"  IS NULL;

COMMENT ON CONSTRAINT "form_cae_two_policy_objective_type_pkey" ON "public"."form_case_two_policy_objective" IS NULL;

COMMENT ON TABLE "public"."form_case_two_policy_objective"  IS 'This is a duplicate of form_cae_two_policy_objective';

--- END CREATE TABLE "public"."form_case_two_policy_objective" ---

--- BEGIN CREATE TABLE "ai"."simulations" ---

CREATE TABLE IF NOT EXISTS "ai"."simulations" (
	"id" varchar NOT NULL  ,
	"created_at" timestamptz NOT NULL DEFAULT now() ,
	"case_id" varchar NULL  ,
	CONSTRAINT "simulations_pkey" PRIMARY KEY (id) 
);

ALTER TABLE IF EXISTS "ai"."simulations" OWNER TO postgres;

GRANT SELECT ON TABLE "ai"."simulations" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."simulations" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."simulations" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."simulations" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."simulations" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."simulations" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."simulations" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."simulations" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "ai"."simulations" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "ai"."simulations" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "ai"."simulations" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."simulations" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."simulations" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."simulations" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."simulations" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "ai"."simulations" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "ai"."simulations" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "ai"."simulations" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."simulations" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."simulations" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."simulations" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."simulations" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "ai"."simulations" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "ai"."simulations" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "ai"."simulations" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."simulations" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."simulations" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."simulations" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."simulations" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "ai"."simulations" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "ai"."simulations" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "ai"."simulations" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."simulations" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."simulations" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."simulations" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."simulations" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "ai"."simulations" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "ai"."simulations" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "ai"."simulations" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."simulations" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "ai"."simulations"."id"  IS NULL;


COMMENT ON COLUMN "ai"."simulations"."created_at"  IS NULL;


COMMENT ON COLUMN "ai"."simulations"."case_id"  IS NULL;

COMMENT ON CONSTRAINT "simulations_pkey" ON "ai"."simulations" IS NULL;

COMMENT ON TABLE "ai"."simulations"  IS NULL;

--- END CREATE TABLE "ai"."simulations" ---

--- BEGIN CREATE TABLE "public"."form_case_two_financing_options" ---

CREATE TABLE IF NOT EXISTS "public"."form_case_two_financing_options" (
	"id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	"created_at" timestamptz NOT NULL DEFAULT now() ,
	"name" text NOT NULL  ,
	CONSTRAINT "form_case_two_financing_options_pkey" PRIMARY KEY (id) 
);

ALTER TABLE IF EXISTS "public"."form_case_two_financing_options" OWNER TO postgres;

GRANT SELECT ON TABLE "public"."form_case_two_financing_options" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_financing_options" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_financing_options" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_financing_options" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_financing_options" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_financing_options" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_financing_options" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_financing_options" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_financing_options" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_financing_options" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_financing_options" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_financing_options" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_financing_options" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_financing_options" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_financing_options" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_financing_options" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_financing_options" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_financing_options" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_financing_options" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_financing_options" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_financing_options" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_financing_options" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_financing_options" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_financing_options" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_financing_options" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_financing_options" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_financing_options" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_financing_options" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_financing_options" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_financing_options" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_financing_options" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_financing_options" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_financing_options" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_financing_options" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_financing_options" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_financing_options" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_financing_options" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_financing_options" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_financing_options" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_financing_options" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "public"."form_case_two_financing_options"."id"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two_financing_options"."created_at"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two_financing_options"."name"  IS NULL;

COMMENT ON CONSTRAINT "form_case_two_financing_options_pkey" ON "public"."form_case_two_financing_options" IS NULL;

COMMENT ON TABLE "public"."form_case_two_financing_options"  IS NULL;

--- END CREATE TABLE "public"."form_case_two_financing_options" ---

--- BEGIN CREATE TABLE "ai"."conversations" ---

CREATE TABLE IF NOT EXISTS "ai"."conversations" (
	"id" uuid NOT NULL DEFAULT uuid_generate_v4() ,
	"title" varchar(200) NULL  ,
	"created_at" timestamptz NOT NULL DEFAULT timezone('utc'::text, now()) ,
	"updated_at" timestamptz NOT NULL DEFAULT timezone('utc'::text, now()) ,
	"is_active" bool NOT NULL DEFAULT true ,
	"user_id" uuid NOT NULL DEFAULT auth.uid() ,
	"case_id" varchar NULL  ,
	"simulation_id" varchar NULL  ,
	CONSTRAINT "conversations_pkey" PRIMARY KEY (id) ,
	CONSTRAINT "conversations_simulation_id_fkey" FOREIGN KEY (simulation_id) REFERENCES ai.simulations(id) ,
	CONSTRAINT "conversations_user_id_fkey" FOREIGN KEY (user_id) REFERENCES auth.users(id) 
);

ALTER TABLE IF EXISTS "ai"."conversations" OWNER TO postgres;

GRANT SELECT ON TABLE "ai"."conversations" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."conversations" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."conversations" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."conversations" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."conversations" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."conversations" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."conversations" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."conversations" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "ai"."conversations" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "ai"."conversations" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "ai"."conversations" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."conversations" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."conversations" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."conversations" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."conversations" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "ai"."conversations" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "ai"."conversations" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "ai"."conversations" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."conversations" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."conversations" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."conversations" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."conversations" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "ai"."conversations" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "ai"."conversations" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "ai"."conversations" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."conversations" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."conversations" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."conversations" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."conversations" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "ai"."conversations" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "ai"."conversations" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "ai"."conversations" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."conversations" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."conversations" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."conversations" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."conversations" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "ai"."conversations" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "ai"."conversations" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "ai"."conversations" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."conversations" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "ai"."conversations"."id"  IS NULL;


COMMENT ON COLUMN "ai"."conversations"."title"  IS NULL;


COMMENT ON COLUMN "ai"."conversations"."created_at"  IS NULL;


COMMENT ON COLUMN "ai"."conversations"."updated_at"  IS NULL;


COMMENT ON COLUMN "ai"."conversations"."is_active"  IS NULL;


COMMENT ON COLUMN "ai"."conversations"."user_id"  IS NULL;


COMMENT ON COLUMN "ai"."conversations"."case_id"  IS NULL;


COMMENT ON COLUMN "ai"."conversations"."simulation_id"  IS NULL;

COMMENT ON CONSTRAINT "conversations_pkey" ON "ai"."conversations" IS NULL;


COMMENT ON CONSTRAINT "conversations_simulation_id_fkey" ON "ai"."conversations" IS NULL;


COMMENT ON CONSTRAINT "conversations_user_id_fkey" ON "ai"."conversations" IS NULL;

COMMENT ON TABLE "ai"."conversations"  IS NULL;

--- END CREATE TABLE "ai"."conversations" ---

--- BEGIN CREATE TABLE "public"."form_case_one_causes_relation" ---

CREATE TABLE IF NOT EXISTS "public"."form_case_one_causes_relation" (
	"id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	"form_case_one_id" uuid NOT NULL  ,
	"form_case_one_cause_id" uuid NOT NULL  ,
	"is_checked" bool NULL DEFAULT false ,
	"created_at" timestamptz NULL DEFAULT now() ,
	"updated_at" timestamptz NULL DEFAULT now() ,
	CONSTRAINT "form_case_one_causes_relation_form_case_one_cause_id_fkey" FOREIGN KEY (form_case_one_cause_id) REFERENCES form_case_one_causes(id) ON DELETE CASCADE ,
	CONSTRAINT "form_case_one_causes_relation_form_case_one_id_fkey" FOREIGN KEY (form_case_one_id) REFERENCES form_case_one(id) ON DELETE CASCADE ,
	CONSTRAINT "form_case_one_causes_relation_form_case_one_id_form_case_on_key" UNIQUE (form_case_one_id, form_case_one_cause_id) ,
	CONSTRAINT "form_case_one_causes_relation_pkey" PRIMARY KEY (id) 
);

CREATE INDEX IF NOT EXISTS idx_form_case_one_causes_relation_form_case_one_id ON public.form_case_one_causes_relation USING btree (form_case_one_id);


CREATE INDEX IF NOT EXISTS idx_form_case_one_causes_relation_cause_id ON public.form_case_one_causes_relation USING btree (form_case_one_cause_id);


CREATE INDEX IF NOT EXISTS idx_form_case_one_causes_relation_is_checked ON public.form_case_one_causes_relation USING btree (is_checked);


CREATE INDEX IF NOT EXISTS idx_form_case_one_causes_relation_created_at ON public.form_case_one_causes_relation USING btree (created_at);

ALTER TABLE IF EXISTS "public"."form_case_one_causes_relation" OWNER TO postgres;

GRANT SELECT ON TABLE "public"."form_case_one_causes_relation" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_causes_relation" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_causes_relation" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_causes_relation" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_causes_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_causes_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_causes_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_causes_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_causes_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_causes_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_causes_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_causes_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_causes_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_causes_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_causes_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_causes_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_causes_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_causes_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_causes_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_causes_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_causes_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_causes_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_causes_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_causes_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_causes_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_causes_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_causes_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_causes_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_causes_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_causes_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_causes_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_causes_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_causes_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_causes_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_causes_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_causes_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_causes_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_causes_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_causes_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_causes_relation" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "public"."form_case_one_causes_relation"."id"  IS 'Identificador único de la relación';


COMMENT ON COLUMN "public"."form_case_one_causes_relation"."form_case_one_id"  IS 'Referencia al caso principal';


COMMENT ON COLUMN "public"."form_case_one_causes_relation"."form_case_one_cause_id"  IS 'Referencia a la causa del catálogo';


COMMENT ON COLUMN "public"."form_case_one_causes_relation"."is_checked"  IS 'Indica si la causa está seleccionada para este caso';


COMMENT ON COLUMN "public"."form_case_one_causes_relation"."created_at"  IS 'Fecha y hora de creación del registro';


COMMENT ON COLUMN "public"."form_case_one_causes_relation"."updated_at"  IS 'Fecha y hora de última actualización del registro';

COMMENT ON CONSTRAINT "form_case_one_causes_relation_form_case_one_cause_id_fkey" ON "public"."form_case_one_causes_relation" IS NULL;


COMMENT ON CONSTRAINT "form_case_one_causes_relation_form_case_one_id_fkey" ON "public"."form_case_one_causes_relation" IS NULL;


COMMENT ON CONSTRAINT "form_case_one_causes_relation_form_case_one_id_form_case_on_key" ON "public"."form_case_one_causes_relation" IS NULL;


COMMENT ON CONSTRAINT "form_case_one_causes_relation_pkey" ON "public"."form_case_one_causes_relation" IS NULL;

COMMENT ON INDEX "public"."idx_form_case_one_causes_relation_form_case_one_id"  IS NULL;


COMMENT ON INDEX "public"."idx_form_case_one_causes_relation_cause_id"  IS NULL;


COMMENT ON INDEX "public"."idx_form_case_one_causes_relation_is_checked"  IS NULL;


COMMENT ON INDEX "public"."idx_form_case_one_causes_relation_created_at"  IS NULL;

COMMENT ON TABLE "public"."form_case_one_causes_relation"  IS 'Tabla de relación muchos a muchos entre form_case_one y form_case_one_causes';

--- END CREATE TABLE "public"."form_case_one_causes_relation" ---

--- BEGIN ALTER TABLE "auth"."instances" ---



--- END ALTER TABLE "auth"."instances" ---

--- BEGIN CREATE TABLE "public"."form_case_one_consequences_relation" ---

CREATE TABLE IF NOT EXISTS "public"."form_case_one_consequences_relation" (
	"id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	"form_case_one_id" uuid NOT NULL  ,
	"form_case_one_consequence_id" uuid NOT NULL  ,
	"created_at" timestamptz NULL DEFAULT now() ,
	"updated_at" timestamptz NULL DEFAULT now() ,
	CONSTRAINT "form_case_one_consequences_re_form_case_one_consequence_id_fkey" FOREIGN KEY (form_case_one_consequence_id) REFERENCES form_case_one_consequences(id) ON DELETE CASCADE ,
	CONSTRAINT "form_case_one_consequences_re_form_case_one_id_form_case_on_key" UNIQUE (form_case_one_id, form_case_one_consequence_id) ,
	CONSTRAINT "form_case_one_consequences_relation_form_case_one_id_fkey" FOREIGN KEY (form_case_one_id) REFERENCES form_case_one(id) ON DELETE CASCADE ,
	CONSTRAINT "form_case_one_consequences_relation_pkey" PRIMARY KEY (id) 
);

CREATE INDEX IF NOT EXISTS idx_form_case_one_consequences_relation_form_case_one_id ON public.form_case_one_consequences_relation USING btree (form_case_one_id);


CREATE INDEX IF NOT EXISTS idx_form_case_one_consequences_relation_consequence_id ON public.form_case_one_consequences_relation USING btree (form_case_one_consequence_id);


CREATE INDEX IF NOT EXISTS idx_form_case_one_consequences_relation_created_at ON public.form_case_one_consequences_relation USING btree (created_at);

ALTER TABLE IF EXISTS "public"."form_case_one_consequences_relation" OWNER TO postgres;

GRANT SELECT ON TABLE "public"."form_case_one_consequences_relation" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_consequences_relation" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_consequences_relation" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_consequences_relation" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_consequences_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_consequences_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_consequences_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_consequences_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_consequences_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_consequences_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_consequences_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_consequences_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_consequences_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_consequences_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_consequences_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_consequences_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_consequences_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_consequences_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_consequences_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_consequences_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_consequences_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_consequences_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_consequences_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_consequences_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_consequences_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_consequences_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_consequences_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_consequences_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_consequences_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_consequences_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_consequences_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_consequences_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_consequences_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_consequences_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_consequences_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_consequences_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_consequences_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_consequences_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_consequences_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_consequences_relation" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "public"."form_case_one_consequences_relation"."id"  IS 'Identificador único de la relación';


COMMENT ON COLUMN "public"."form_case_one_consequences_relation"."form_case_one_id"  IS 'Referencia al caso principal';


COMMENT ON COLUMN "public"."form_case_one_consequences_relation"."form_case_one_consequence_id"  IS 'Referencia a la consecuencia del catálogo';


COMMENT ON COLUMN "public"."form_case_one_consequences_relation"."created_at"  IS 'Fecha y hora de creación del registro';


COMMENT ON COLUMN "public"."form_case_one_consequences_relation"."updated_at"  IS 'Fecha y hora de última actualización del registro';

COMMENT ON CONSTRAINT "form_case_one_consequences_re_form_case_one_consequence_id_fkey" ON "public"."form_case_one_consequences_relation" IS NULL;


COMMENT ON CONSTRAINT "form_case_one_consequences_re_form_case_one_id_form_case_on_key" ON "public"."form_case_one_consequences_relation" IS NULL;


COMMENT ON CONSTRAINT "form_case_one_consequences_relation_form_case_one_id_fkey" ON "public"."form_case_one_consequences_relation" IS NULL;


COMMENT ON CONSTRAINT "form_case_one_consequences_relation_pkey" ON "public"."form_case_one_consequences_relation" IS NULL;

COMMENT ON INDEX "public"."idx_form_case_one_consequences_relation_form_case_one_id"  IS NULL;


COMMENT ON INDEX "public"."idx_form_case_one_consequences_relation_consequence_id"  IS NULL;


COMMENT ON INDEX "public"."idx_form_case_one_consequences_relation_created_at"  IS NULL;

COMMENT ON TABLE "public"."form_case_one_consequences_relation"  IS 'Tabla de relación muchos a muchos entre form_case_one y form_case_one_consequences';

--- END CREATE TABLE "public"."form_case_one_consequences_relation" ---

--- BEGIN CREATE TABLE "public"."form_case_one_sub_consequences_relation" ---

CREATE TABLE IF NOT EXISTS "public"."form_case_one_sub_consequences_relation" (
	"id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	"form_case_one_id" uuid NOT NULL  ,
	"form_case_one_sub_consequence_id" uuid NOT NULL  ,
	"created_at" timestamptz NULL DEFAULT now() ,
	"updated_at" timestamptz NULL DEFAULT now() ,
	CONSTRAINT "form_case_one_sub_consequence_form_case_one_id_form_case_on_key" UNIQUE (form_case_one_id, form_case_one_sub_consequence_id) ,
	CONSTRAINT "form_case_one_sub_consequence_form_case_one_sub_consequenc_fkey" FOREIGN KEY (form_case_one_sub_consequence_id) REFERENCES form_case_one_sub_consequences(id) ON DELETE CASCADE ,
	CONSTRAINT "form_case_one_sub_consequences_relation_form_case_one_id_fkey" FOREIGN KEY (form_case_one_id) REFERENCES form_case_one(id) ON DELETE CASCADE ,
	CONSTRAINT "form_case_one_sub_consequences_relation_pkey" PRIMARY KEY (id) 
);

CREATE INDEX IF NOT EXISTS idx_form_case_one_sub_consequences_relation_form_case_one_id ON public.form_case_one_sub_consequences_relation USING btree (form_case_one_id);


CREATE INDEX IF NOT EXISTS idx_form_case_one_sub_consequences_relation_sub_consequence_id ON public.form_case_one_sub_consequences_relation USING btree (form_case_one_sub_consequence_id);


CREATE INDEX IF NOT EXISTS idx_form_case_one_sub_consequences_relation_created_at ON public.form_case_one_sub_consequences_relation USING btree (created_at);

ALTER TABLE IF EXISTS "public"."form_case_one_sub_consequences_relation" OWNER TO postgres;

GRANT SELECT ON TABLE "public"."form_case_one_sub_consequences_relation" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_sub_consequences_relation" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_sub_consequences_relation" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_sub_consequences_relation" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_sub_consequences_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_sub_consequences_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_sub_consequences_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_sub_consequences_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_sub_consequences_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_sub_consequences_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_sub_consequences_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_sub_consequences_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_sub_consequences_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_sub_consequences_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_sub_consequences_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_sub_consequences_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_sub_consequences_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_sub_consequences_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_sub_consequences_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_sub_consequences_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_sub_consequences_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_sub_consequences_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_sub_consequences_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_sub_consequences_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_sub_consequences_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_sub_consequences_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_sub_consequences_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_sub_consequences_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_sub_consequences_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_sub_consequences_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_sub_consequences_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_sub_consequences_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_sub_consequences_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_sub_consequences_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_sub_consequences_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_sub_consequences_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_sub_consequences_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_sub_consequences_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_sub_consequences_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_sub_consequences_relation" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "public"."form_case_one_sub_consequences_relation"."id"  IS 'Identificador único de la relación';


COMMENT ON COLUMN "public"."form_case_one_sub_consequences_relation"."form_case_one_id"  IS 'Referencia al caso principal';


COMMENT ON COLUMN "public"."form_case_one_sub_consequences_relation"."form_case_one_sub_consequence_id"  IS 'Referencia a la sub-consecuencia del catálogo';


COMMENT ON COLUMN "public"."form_case_one_sub_consequences_relation"."created_at"  IS 'Fecha y hora de creación del registro';


COMMENT ON COLUMN "public"."form_case_one_sub_consequences_relation"."updated_at"  IS 'Fecha y hora de última actualización del registro';

COMMENT ON CONSTRAINT "form_case_one_sub_consequence_form_case_one_id_form_case_on_key" ON "public"."form_case_one_sub_consequences_relation" IS NULL;


COMMENT ON CONSTRAINT "form_case_one_sub_consequence_form_case_one_sub_consequenc_fkey" ON "public"."form_case_one_sub_consequences_relation" IS NULL;


COMMENT ON CONSTRAINT "form_case_one_sub_consequences_relation_form_case_one_id_fkey" ON "public"."form_case_one_sub_consequences_relation" IS NULL;


COMMENT ON CONSTRAINT "form_case_one_sub_consequences_relation_pkey" ON "public"."form_case_one_sub_consequences_relation" IS NULL;

COMMENT ON INDEX "public"."idx_form_case_one_sub_consequences_relation_form_case_one_id"  IS NULL;


COMMENT ON INDEX "public"."idx_form_case_one_sub_consequences_relation_sub_consequence_id"  IS NULL;


COMMENT ON INDEX "public"."idx_form_case_one_sub_consequences_relation_created_at"  IS NULL;

COMMENT ON TABLE "public"."form_case_one_sub_consequences_relation"  IS 'Tabla de relación muchos a muchos entre form_case_one y form_case_one_sub_consequences';

--- END CREATE TABLE "public"."form_case_one_sub_consequences_relation" ---

--- BEGIN ALTER TABLE "storage"."objects" ---

ALTER TABLE IF EXISTS "storage"."objects" ADD COLUMN IF NOT EXISTS "level" int4 NULL  ;

COMMENT ON COLUMN "storage"."objects"."level"  IS NULL;

CREATE INDEX idx_objects_lower_name ON storage.objects USING btree ((path_tokens[level]), lower(name) text_pattern_ops, bucket_id, level);

COMMENT ON INDEX "storage"."idx_objects_lower_name"  IS NULL;



--- END ALTER TABLE "storage"."objects" ---

--- BEGIN CREATE TABLE "realtime"."messages_2025_08_06" ---

CREATE TABLE IF NOT EXISTS "realtime"."messages_2025_08_06" (
	"topic" text NOT NULL  ,
	"extension" text NOT NULL  ,
	"payload" jsonb NULL  ,
	"event" text NULL  ,
	"private" bool NULL DEFAULT false ,
	"updated_at" timestamp NOT NULL DEFAULT now() ,
	"inserted_at" timestamp NOT NULL DEFAULT now() ,
	"id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	CONSTRAINT "messages_2025_08_06_pkey" PRIMARY KEY (id, inserted_at) 
);

ALTER TABLE IF EXISTS "realtime"."messages_2025_08_06" OWNER TO supabase_admin;

GRANT SELECT ON TABLE "realtime"."messages_2025_08_06" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "realtime"."messages_2025_08_06" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "realtime"."messages_2025_08_06" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "realtime"."messages_2025_08_06" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "realtime"."messages_2025_08_06" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "realtime"."messages_2025_08_06" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "realtime"."messages_2025_08_06" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "realtime"."messages_2025_08_06" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "realtime"."messages_2025_08_06" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "realtime"."messages_2025_08_06" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "realtime"."messages_2025_08_06" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "realtime"."messages_2025_08_06" TO dashboard_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "realtime"."messages_2025_08_06" TO dashboard_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "realtime"."messages_2025_08_06" TO dashboard_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "realtime"."messages_2025_08_06" TO dashboard_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "realtime"."messages_2025_08_06" TO dashboard_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "realtime"."messages_2025_08_06" TO dashboard_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "realtime"."messages_2025_08_06" TO dashboard_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "realtime"."messages_2025_08_06" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "realtime"."messages_2025_08_06" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "realtime"."messages_2025_08_06" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "realtime"."messages_2025_08_06" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "realtime"."messages_2025_08_06" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "realtime"."messages_2025_08_06" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "realtime"."messages_2025_08_06" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "realtime"."messages_2025_08_06" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "realtime"."messages_2025_08_06"."topic"  IS NULL;


COMMENT ON COLUMN "realtime"."messages_2025_08_06"."extension"  IS NULL;


COMMENT ON COLUMN "realtime"."messages_2025_08_06"."payload"  IS NULL;


COMMENT ON COLUMN "realtime"."messages_2025_08_06"."event"  IS NULL;


COMMENT ON COLUMN "realtime"."messages_2025_08_06"."private"  IS NULL;


COMMENT ON COLUMN "realtime"."messages_2025_08_06"."updated_at"  IS NULL;


COMMENT ON COLUMN "realtime"."messages_2025_08_06"."inserted_at"  IS NULL;


COMMENT ON COLUMN "realtime"."messages_2025_08_06"."id"  IS NULL;

COMMENT ON CONSTRAINT "messages_2025_08_06_pkey" ON "realtime"."messages_2025_08_06" IS NULL;

COMMENT ON TABLE "realtime"."messages_2025_08_06"  IS NULL;

--- END CREATE TABLE "realtime"."messages_2025_08_06" ---

--- BEGIN ALTER TABLE "storage"."migrations" ---



--- END ALTER TABLE "storage"."migrations" ---

--- BEGIN CREATE TABLE "public"."form_case_one_sub_consequences_data" ---

CREATE TABLE IF NOT EXISTS "public"."form_case_one_sub_consequences_data" (
	"id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	"form_case_one_id" uuid NOT NULL  ,
	"form_case_one_consequence_id" uuid NOT NULL  ,
	"form_case_one_sub_consequence_id" uuid NOT NULL  ,
	"content" text NULL  ,
	"created_at" timestamptz NULL DEFAULT now() ,
	"updated_at" timestamptz NULL DEFAULT now() ,
	CONSTRAINT "form_case_one_sub_consequenc_form_case_one_sub_consequenc_fkey1" FOREIGN KEY (form_case_one_sub_consequence_id) REFERENCES form_case_one_sub_consequences(id) ON DELETE CASCADE ,
	CONSTRAINT "form_case_one_sub_consequence_form_case_one_consequence_id_fkey" FOREIGN KEY (form_case_one_consequence_id) REFERENCES form_case_one_consequences(id) ON DELETE CASCADE ,
	CONSTRAINT "form_case_one_sub_consequence_form_case_one_id_form_case_o_key1" UNIQUE (form_case_one_id, form_case_one_consequence_id, form_case_one_sub_consequence_id) ,
	CONSTRAINT "form_case_one_sub_consequences_data_form_case_one_id_fkey" FOREIGN KEY (form_case_one_id) REFERENCES form_case_one(id) ON DELETE CASCADE ,
	CONSTRAINT "form_case_one_sub_consequences_data_pkey" PRIMARY KEY (id) 
);

CREATE INDEX IF NOT EXISTS idx_form_case_one_sub_consequences_data_form_case_one_id ON public.form_case_one_sub_consequences_data USING btree (form_case_one_id);


CREATE INDEX IF NOT EXISTS idx_form_case_one_sub_consequences_data_consequence_id ON public.form_case_one_sub_consequences_data USING btree (form_case_one_consequence_id);


CREATE INDEX IF NOT EXISTS idx_form_case_one_sub_consequences_data_sub_consequence_id ON public.form_case_one_sub_consequences_data USING btree (form_case_one_sub_consequence_id);


CREATE INDEX IF NOT EXISTS idx_form_case_one_sub_consequences_data_created_at ON public.form_case_one_sub_consequences_data USING btree (created_at);

ALTER TABLE IF EXISTS "public"."form_case_one_sub_consequences_data" OWNER TO postgres;

GRANT SELECT ON TABLE "public"."form_case_one_sub_consequences_data" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_sub_consequences_data" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_sub_consequences_data" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_sub_consequences_data" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_sub_consequences_data" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_sub_consequences_data" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_sub_consequences_data" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_sub_consequences_data" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_sub_consequences_data" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_sub_consequences_data" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_sub_consequences_data" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_sub_consequences_data" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_sub_consequences_data" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_sub_consequences_data" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_sub_consequences_data" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_sub_consequences_data" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_sub_consequences_data" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_sub_consequences_data" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_sub_consequences_data" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_sub_consequences_data" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_sub_consequences_data" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_sub_consequences_data" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_sub_consequences_data" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_sub_consequences_data" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_sub_consequences_data" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_sub_consequences_data" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_sub_consequences_data" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_sub_consequences_data" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_sub_consequences_data" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_sub_consequences_data" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_sub_consequences_data" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_sub_consequences_data" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_sub_consequences_data" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_sub_consequences_data" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_sub_consequences_data" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_sub_consequences_data" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_sub_consequences_data" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_sub_consequences_data" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_sub_consequences_data" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_sub_consequences_data" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "public"."form_case_one_sub_consequences_data"."id"  IS 'Identificador único del registro';


COMMENT ON COLUMN "public"."form_case_one_sub_consequences_data"."form_case_one_id"  IS 'Referencia al caso principal';


COMMENT ON COLUMN "public"."form_case_one_sub_consequences_data"."form_case_one_consequence_id"  IS 'Referencia a la consecuencia padre';


COMMENT ON COLUMN "public"."form_case_one_sub_consequences_data"."form_case_one_sub_consequence_id"  IS 'Referencia a la sub-consecuencia';


COMMENT ON COLUMN "public"."form_case_one_sub_consequences_data"."content"  IS 'Contenido HTML específico de la sub-consecuencia';


COMMENT ON COLUMN "public"."form_case_one_sub_consequences_data"."created_at"  IS 'Fecha y hora de creación del registro';


COMMENT ON COLUMN "public"."form_case_one_sub_consequences_data"."updated_at"  IS 'Fecha y hora de última actualización del registro';

COMMENT ON CONSTRAINT "form_case_one_sub_consequenc_form_case_one_sub_consequenc_fkey1" ON "public"."form_case_one_sub_consequences_data" IS NULL;


COMMENT ON CONSTRAINT "form_case_one_sub_consequence_form_case_one_consequence_id_fkey" ON "public"."form_case_one_sub_consequences_data" IS NULL;


COMMENT ON CONSTRAINT "form_case_one_sub_consequence_form_case_one_id_form_case_o_key1" ON "public"."form_case_one_sub_consequences_data" IS NULL;


COMMENT ON CONSTRAINT "form_case_one_sub_consequences_data_form_case_one_id_fkey" ON "public"."form_case_one_sub_consequences_data" IS NULL;


COMMENT ON CONSTRAINT "form_case_one_sub_consequences_data_pkey" ON "public"."form_case_one_sub_consequences_data" IS NULL;

COMMENT ON INDEX "public"."idx_form_case_one_sub_consequences_data_form_case_one_id"  IS NULL;


COMMENT ON INDEX "public"."idx_form_case_one_sub_consequences_data_consequence_id"  IS NULL;


COMMENT ON INDEX "public"."idx_form_case_one_sub_consequences_data_sub_consequence_id"  IS NULL;


COMMENT ON INDEX "public"."idx_form_case_one_sub_consequences_data_created_at"  IS NULL;

COMMENT ON TABLE "public"."form_case_one_sub_consequences_data"  IS 'Tabla para almacenar datos específicos de las sub-consecuencias con contenido HTML';

--- END CREATE TABLE "public"."form_case_one_sub_consequences_data" ---

--- BEGIN CREATE TABLE "public"."form_case_one_constraints_relation" ---

CREATE TABLE IF NOT EXISTS "public"."form_case_one_constraints_relation" (
	"id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	"form_case_one_id" uuid NOT NULL  ,
	"form_case_one_constraint_id" uuid NOT NULL  ,
	"created_at" timestamptz NULL DEFAULT now() ,
	"updated_at" timestamptz NULL DEFAULT now() ,
	CONSTRAINT "form_case_one_constraints_rel_form_case_one_id_form_case_on_key" UNIQUE (form_case_one_id, form_case_one_constraint_id) ,
	CONSTRAINT "form_case_one_constraints_rela_form_case_one_constraint_id_fkey" FOREIGN KEY (form_case_one_constraint_id) REFERENCES form_case_one_constraints(id) ON DELETE CASCADE ,
	CONSTRAINT "form_case_one_constraints_relation_form_case_one_id_fkey" FOREIGN KEY (form_case_one_id) REFERENCES form_case_one(id) ON DELETE CASCADE ,
	CONSTRAINT "form_case_one_constraints_relation_pkey" PRIMARY KEY (id) 
);

CREATE INDEX IF NOT EXISTS idx_form_case_one_constraints_relation_form_case_one_id ON public.form_case_one_constraints_relation USING btree (form_case_one_id);


CREATE INDEX IF NOT EXISTS idx_form_case_one_constraints_relation_constraint_id ON public.form_case_one_constraints_relation USING btree (form_case_one_constraint_id);


CREATE INDEX IF NOT EXISTS idx_form_case_one_constraints_relation_created_at ON public.form_case_one_constraints_relation USING btree (created_at);

ALTER TABLE IF EXISTS "public"."form_case_one_constraints_relation" OWNER TO postgres;

GRANT SELECT ON TABLE "public"."form_case_one_constraints_relation" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_constraints_relation" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_constraints_relation" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_constraints_relation" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_constraints_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_constraints_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_constraints_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_constraints_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_constraints_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_constraints_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_constraints_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_constraints_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_constraints_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_constraints_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_constraints_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_constraints_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_constraints_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_constraints_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_constraints_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_constraints_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_constraints_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_constraints_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_constraints_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_constraints_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_constraints_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_constraints_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_constraints_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_constraints_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_constraints_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_constraints_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_constraints_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_constraints_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_constraints_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_constraints_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_constraints_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_constraints_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_constraints_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_constraints_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_constraints_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_constraints_relation" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "public"."form_case_one_constraints_relation"."id"  IS 'Identificador único de la relación';


COMMENT ON COLUMN "public"."form_case_one_constraints_relation"."form_case_one_id"  IS 'Referencia al caso principal';


COMMENT ON COLUMN "public"."form_case_one_constraints_relation"."form_case_one_constraint_id"  IS 'Referencia a la restricción del catálogo';


COMMENT ON COLUMN "public"."form_case_one_constraints_relation"."created_at"  IS 'Fecha y hora de creación del registro';


COMMENT ON COLUMN "public"."form_case_one_constraints_relation"."updated_at"  IS 'Fecha y hora de última actualización del registro';

COMMENT ON CONSTRAINT "form_case_one_constraints_rel_form_case_one_id_form_case_on_key" ON "public"."form_case_one_constraints_relation" IS NULL;


COMMENT ON CONSTRAINT "form_case_one_constraints_rela_form_case_one_constraint_id_fkey" ON "public"."form_case_one_constraints_relation" IS NULL;


COMMENT ON CONSTRAINT "form_case_one_constraints_relation_form_case_one_id_fkey" ON "public"."form_case_one_constraints_relation" IS NULL;


COMMENT ON CONSTRAINT "form_case_one_constraints_relation_pkey" ON "public"."form_case_one_constraints_relation" IS NULL;

COMMENT ON INDEX "public"."idx_form_case_one_constraints_relation_form_case_one_id"  IS NULL;


COMMENT ON INDEX "public"."idx_form_case_one_constraints_relation_constraint_id"  IS NULL;


COMMENT ON INDEX "public"."idx_form_case_one_constraints_relation_created_at"  IS NULL;

COMMENT ON TABLE "public"."form_case_one_constraints_relation"  IS 'Tabla de relación muchos a muchos entre form_case_one y form_case_one_constraints';

--- END CREATE TABLE "public"."form_case_one_constraints_relation" ---

--- BEGIN ALTER TABLE "realtime"."messages" ---



--- END ALTER TABLE "realtime"."messages" ---

--- BEGIN ALTER TABLE "storage"."s3_multipart_uploads_parts" ---



--- END ALTER TABLE "storage"."s3_multipart_uploads_parts" ---

--- BEGIN ALTER TABLE "realtime"."subscription" ---



--- END ALTER TABLE "realtime"."subscription" ---

--- BEGIN CREATE TABLE "storage"."prefixes" ---

CREATE TABLE IF NOT EXISTS "storage"."prefixes" (
	"bucket_id" text NOT NULL  ,
	"name" text NOT NULL  ,
	"level" int4  GENERATED ALWAYS AS storage.get_level(name) STORED ,
	"created_at" timestamptz NULL DEFAULT now() ,
	"updated_at" timestamptz NULL DEFAULT now() ,
	CONSTRAINT "prefixes_bucketId_fkey" FOREIGN KEY (bucket_id) REFERENCES storage.buckets(id) ,
	CONSTRAINT "prefixes_pkey" PRIMARY KEY (bucket_id, level, name) 
);

CREATE INDEX IF NOT EXISTS idx_prefixes_lower_name ON storage.prefixes USING btree (bucket_id, level, ((string_to_array(name, '/'::text))[level]), lower(name) text_pattern_ops);

ALTER TABLE IF EXISTS "storage"."prefixes" OWNER TO supabase_storage_admin;

GRANT SELECT ON TABLE "storage"."prefixes" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "storage"."prefixes" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "storage"."prefixes" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "storage"."prefixes" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "storage"."prefixes" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "storage"."prefixes" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "storage"."prefixes" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "storage"."prefixes" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "storage"."prefixes" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "storage"."prefixes" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "storage"."prefixes" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "storage"."prefixes" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "storage"."prefixes" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "storage"."prefixes" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "storage"."prefixes" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "storage"."prefixes" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "storage"."prefixes" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "storage"."prefixes" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "storage"."prefixes" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "storage"."prefixes" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "storage"."prefixes" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "storage"."prefixes" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "storage"."prefixes" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "storage"."prefixes" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "storage"."prefixes" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "storage"."prefixes" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "storage"."prefixes" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "storage"."prefixes" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "storage"."prefixes" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "storage"."prefixes" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "storage"."prefixes" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "storage"."prefixes" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "storage"."prefixes" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "storage"."prefixes" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "storage"."prefixes" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "storage"."prefixes" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "storage"."prefixes" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "storage"."prefixes" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "storage"."prefixes" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "storage"."prefixes" TO supabase_storage_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "storage"."prefixes" TO supabase_storage_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "storage"."prefixes" TO supabase_storage_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "storage"."prefixes" TO supabase_storage_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "storage"."prefixes" TO supabase_storage_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "storage"."prefixes" TO supabase_storage_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "storage"."prefixes" TO supabase_storage_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "storage"."prefixes" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "storage"."prefixes"."bucket_id"  IS NULL;


COMMENT ON COLUMN "storage"."prefixes"."name"  IS NULL;


COMMENT ON COLUMN "storage"."prefixes"."level"  IS NULL;


COMMENT ON COLUMN "storage"."prefixes"."created_at"  IS NULL;


COMMENT ON COLUMN "storage"."prefixes"."updated_at"  IS NULL;

COMMENT ON CONSTRAINT "prefixes_bucketId_fkey" ON "storage"."prefixes" IS NULL;


COMMENT ON CONSTRAINT "prefixes_pkey" ON "storage"."prefixes" IS NULL;

COMMENT ON INDEX "storage"."idx_prefixes_lower_name"  IS NULL;

COMMENT ON TABLE "storage"."prefixes"  IS NULL;

--- END CREATE TABLE "storage"."prefixes" ---

--- BEGIN CREATE TABLE "supabase_migrations"."schema_migrations" ---

CREATE TABLE IF NOT EXISTS "supabase_migrations"."schema_migrations" (
	"version" text NOT NULL  ,
	"statements" _text NULL  ,
	"name" text NULL  ,
	CONSTRAINT "schema_migrations_pkey" PRIMARY KEY (version) 
);

ALTER TABLE IF EXISTS "supabase_migrations"."schema_migrations" OWNER TO postgres;

GRANT SELECT ON TABLE "supabase_migrations"."schema_migrations" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "supabase_migrations"."schema_migrations" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "supabase_migrations"."schema_migrations" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "supabase_migrations"."schema_migrations" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "supabase_migrations"."schema_migrations" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "supabase_migrations"."schema_migrations" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "supabase_migrations"."schema_migrations" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "supabase_migrations"."schema_migrations" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "supabase_migrations"."schema_migrations" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "supabase_migrations"."schema_migrations" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "supabase_migrations"."schema_migrations" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "supabase_migrations"."schema_migrations" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "supabase_migrations"."schema_migrations" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "supabase_migrations"."schema_migrations" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "supabase_migrations"."schema_migrations" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "supabase_migrations"."schema_migrations" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "supabase_migrations"."schema_migrations" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "supabase_migrations"."schema_migrations" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "supabase_migrations"."schema_migrations" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "supabase_migrations"."schema_migrations"."version"  IS NULL;


COMMENT ON COLUMN "supabase_migrations"."schema_migrations"."statements"  IS NULL;


COMMENT ON COLUMN "supabase_migrations"."schema_migrations"."name"  IS NULL;

COMMENT ON CONSTRAINT "schema_migrations_pkey" ON "supabase_migrations"."schema_migrations" IS NULL;

COMMENT ON TABLE "supabase_migrations"."schema_migrations"  IS NULL;

--- END CREATE TABLE "supabase_migrations"."schema_migrations" ---

--- BEGIN CREATE TABLE "supabase_migrations"."seed_files" ---

CREATE TABLE IF NOT EXISTS "supabase_migrations"."seed_files" (
	"path" text NOT NULL  ,
	"hash" text NOT NULL  ,
	CONSTRAINT "seed_files_pkey" PRIMARY KEY (path) 
);

ALTER TABLE IF EXISTS "supabase_migrations"."seed_files" OWNER TO postgres;

GRANT SELECT ON TABLE "supabase_migrations"."seed_files" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "supabase_migrations"."seed_files" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "supabase_migrations"."seed_files" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "supabase_migrations"."seed_files" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "supabase_migrations"."seed_files" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "supabase_migrations"."seed_files" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "supabase_migrations"."seed_files" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "supabase_migrations"."seed_files" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "supabase_migrations"."seed_files" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "supabase_migrations"."seed_files" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "supabase_migrations"."seed_files" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "supabase_migrations"."seed_files" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "supabase_migrations"."seed_files" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "supabase_migrations"."seed_files" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "supabase_migrations"."seed_files" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "supabase_migrations"."seed_files" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "supabase_migrations"."seed_files" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "supabase_migrations"."seed_files" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "supabase_migrations"."seed_files" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "supabase_migrations"."seed_files"."path"  IS NULL;


COMMENT ON COLUMN "supabase_migrations"."seed_files"."hash"  IS NULL;

COMMENT ON CONSTRAINT "seed_files_pkey" ON "supabase_migrations"."seed_files" IS NULL;

COMMENT ON TABLE "supabase_migrations"."seed_files"  IS NULL;

--- END CREATE TABLE "supabase_migrations"."seed_files" ---

--- BEGIN CREATE TABLE "public"."form_case_one_group_comunity_relation" ---

CREATE TABLE IF NOT EXISTS "public"."form_case_one_group_comunity_relation" (
	"id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	"form_case_one_id" uuid NOT NULL  ,
	"group_comunity_id" uuid NOT NULL  ,
	"created_at" timestamptz NULL DEFAULT now() ,
	"updated_at" timestamptz NULL DEFAULT now() ,
	CONSTRAINT "form_case_one_group_comunity__form_case_one_id_group_comuni_key" UNIQUE (form_case_one_id, group_comunity_id) ,
	CONSTRAINT "form_case_one_group_comunity_relation_form_case_one_id_fkey" FOREIGN KEY (form_case_one_id) REFERENCES form_case_one(id) ON DELETE CASCADE ,
	CONSTRAINT "form_case_one_group_comunity_relation_group_comunity_id_fkey" FOREIGN KEY (group_comunity_id) REFERENCES group_comunity(id) ON DELETE CASCADE ,
	CONSTRAINT "form_case_one_group_comunity_relation_pkey" PRIMARY KEY (id) 
);

CREATE INDEX IF NOT EXISTS idx_form_case_one_group_comunity_relation_form_case_one_id ON public.form_case_one_group_comunity_relation USING btree (form_case_one_id);


CREATE INDEX IF NOT EXISTS idx_form_case_one_group_comunity_relation_group_comunity_id ON public.form_case_one_group_comunity_relation USING btree (group_comunity_id);


CREATE INDEX IF NOT EXISTS idx_form_case_one_group_comunity_relation_created_at ON public.form_case_one_group_comunity_relation USING btree (created_at);

ALTER TABLE IF EXISTS "public"."form_case_one_group_comunity_relation" OWNER TO postgres;

GRANT SELECT ON TABLE "public"."form_case_one_group_comunity_relation" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_group_comunity_relation" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_group_comunity_relation" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_group_comunity_relation" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_group_comunity_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_group_comunity_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_group_comunity_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_group_comunity_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_group_comunity_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_group_comunity_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_group_comunity_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_group_comunity_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_group_comunity_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_group_comunity_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_group_comunity_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_group_comunity_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_group_comunity_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_group_comunity_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_group_comunity_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_group_comunity_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_group_comunity_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_group_comunity_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_group_comunity_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_group_comunity_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_group_comunity_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_group_comunity_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_group_comunity_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_group_comunity_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_group_comunity_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_group_comunity_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_group_comunity_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_group_comunity_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_group_comunity_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_group_comunity_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_group_comunity_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_group_comunity_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_group_comunity_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_group_comunity_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_group_comunity_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_group_comunity_relation" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "public"."form_case_one_group_comunity_relation"."id"  IS 'Identificador único de la relación';


COMMENT ON COLUMN "public"."form_case_one_group_comunity_relation"."form_case_one_id"  IS 'Referencia al caso principal';


COMMENT ON COLUMN "public"."form_case_one_group_comunity_relation"."group_comunity_id"  IS 'Referencia al grupo de comunidad del catálogo';


COMMENT ON COLUMN "public"."form_case_one_group_comunity_relation"."created_at"  IS 'Fecha y hora de creación del registro';


COMMENT ON COLUMN "public"."form_case_one_group_comunity_relation"."updated_at"  IS 'Fecha y hora de última actualización del registro';

COMMENT ON CONSTRAINT "form_case_one_group_comunity__form_case_one_id_group_comuni_key" ON "public"."form_case_one_group_comunity_relation" IS NULL;


COMMENT ON CONSTRAINT "form_case_one_group_comunity_relation_form_case_one_id_fkey" ON "public"."form_case_one_group_comunity_relation" IS NULL;


COMMENT ON CONSTRAINT "form_case_one_group_comunity_relation_group_comunity_id_fkey" ON "public"."form_case_one_group_comunity_relation" IS NULL;


COMMENT ON CONSTRAINT "form_case_one_group_comunity_relation_pkey" ON "public"."form_case_one_group_comunity_relation" IS NULL;

COMMENT ON INDEX "public"."idx_form_case_one_group_comunity_relation_form_case_one_id"  IS NULL;


COMMENT ON INDEX "public"."idx_form_case_one_group_comunity_relation_group_comunity_id"  IS NULL;


COMMENT ON INDEX "public"."idx_form_case_one_group_comunity_relation_created_at"  IS NULL;

COMMENT ON TABLE "public"."form_case_one_group_comunity_relation"  IS 'Tabla de relación muchos a muchos entre form_case_one y group_comunity';

--- END CREATE TABLE "public"."form_case_one_group_comunity_relation" ---

--- BEGIN CREATE TABLE "realtime"."messages_2025_08_07" ---

CREATE TABLE IF NOT EXISTS "realtime"."messages_2025_08_07" (
	"topic" text NOT NULL  ,
	"extension" text NOT NULL  ,
	"payload" jsonb NULL  ,
	"event" text NULL  ,
	"private" bool NULL DEFAULT false ,
	"updated_at" timestamp NOT NULL DEFAULT now() ,
	"inserted_at" timestamp NOT NULL DEFAULT now() ,
	"id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	CONSTRAINT "messages_2025_08_07_pkey" PRIMARY KEY (id, inserted_at) 
);

ALTER TABLE IF EXISTS "realtime"."messages_2025_08_07" OWNER TO supabase_admin;

GRANT SELECT ON TABLE "realtime"."messages_2025_08_07" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "realtime"."messages_2025_08_07" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "realtime"."messages_2025_08_07" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "realtime"."messages_2025_08_07" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "realtime"."messages_2025_08_07" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "realtime"."messages_2025_08_07" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "realtime"."messages_2025_08_07" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "realtime"."messages_2025_08_07" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "realtime"."messages_2025_08_07" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "realtime"."messages_2025_08_07" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "realtime"."messages_2025_08_07" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "realtime"."messages_2025_08_07" TO dashboard_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "realtime"."messages_2025_08_07" TO dashboard_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "realtime"."messages_2025_08_07" TO dashboard_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "realtime"."messages_2025_08_07" TO dashboard_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "realtime"."messages_2025_08_07" TO dashboard_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "realtime"."messages_2025_08_07" TO dashboard_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "realtime"."messages_2025_08_07" TO dashboard_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "realtime"."messages_2025_08_07" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "realtime"."messages_2025_08_07" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "realtime"."messages_2025_08_07" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "realtime"."messages_2025_08_07" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "realtime"."messages_2025_08_07" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "realtime"."messages_2025_08_07" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "realtime"."messages_2025_08_07" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "realtime"."messages_2025_08_07" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "realtime"."messages_2025_08_07"."topic"  IS NULL;


COMMENT ON COLUMN "realtime"."messages_2025_08_07"."extension"  IS NULL;


COMMENT ON COLUMN "realtime"."messages_2025_08_07"."payload"  IS NULL;


COMMENT ON COLUMN "realtime"."messages_2025_08_07"."event"  IS NULL;


COMMENT ON COLUMN "realtime"."messages_2025_08_07"."private"  IS NULL;


COMMENT ON COLUMN "realtime"."messages_2025_08_07"."updated_at"  IS NULL;


COMMENT ON COLUMN "realtime"."messages_2025_08_07"."inserted_at"  IS NULL;


COMMENT ON COLUMN "realtime"."messages_2025_08_07"."id"  IS NULL;

COMMENT ON CONSTRAINT "messages_2025_08_07_pkey" ON "realtime"."messages_2025_08_07" IS NULL;

COMMENT ON TABLE "realtime"."messages_2025_08_07"  IS NULL;

--- END CREATE TABLE "realtime"."messages_2025_08_07" ---

--- BEGIN CREATE TABLE "realtime"."messages_2025_08_09" ---

CREATE TABLE IF NOT EXISTS "realtime"."messages_2025_08_09" (
	"topic" text NOT NULL  ,
	"extension" text NOT NULL  ,
	"payload" jsonb NULL  ,
	"event" text NULL  ,
	"private" bool NULL DEFAULT false ,
	"updated_at" timestamp NOT NULL DEFAULT now() ,
	"inserted_at" timestamp NOT NULL DEFAULT now() ,
	"id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	CONSTRAINT "messages_2025_08_09_pkey" PRIMARY KEY (id, inserted_at) 
);

ALTER TABLE IF EXISTS "realtime"."messages_2025_08_09" OWNER TO supabase_admin;

GRANT SELECT ON TABLE "realtime"."messages_2025_08_09" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "realtime"."messages_2025_08_09" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "realtime"."messages_2025_08_09" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "realtime"."messages_2025_08_09" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "realtime"."messages_2025_08_09" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "realtime"."messages_2025_08_09" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "realtime"."messages_2025_08_09" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "realtime"."messages_2025_08_09" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "realtime"."messages_2025_08_09" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "realtime"."messages_2025_08_09" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "realtime"."messages_2025_08_09" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "realtime"."messages_2025_08_09" TO dashboard_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "realtime"."messages_2025_08_09" TO dashboard_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "realtime"."messages_2025_08_09" TO dashboard_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "realtime"."messages_2025_08_09" TO dashboard_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "realtime"."messages_2025_08_09" TO dashboard_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "realtime"."messages_2025_08_09" TO dashboard_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "realtime"."messages_2025_08_09" TO dashboard_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "realtime"."messages_2025_08_09" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "realtime"."messages_2025_08_09" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "realtime"."messages_2025_08_09" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "realtime"."messages_2025_08_09" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "realtime"."messages_2025_08_09" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "realtime"."messages_2025_08_09" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "realtime"."messages_2025_08_09" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "realtime"."messages_2025_08_09" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "realtime"."messages_2025_08_09"."topic"  IS NULL;


COMMENT ON COLUMN "realtime"."messages_2025_08_09"."extension"  IS NULL;


COMMENT ON COLUMN "realtime"."messages_2025_08_09"."payload"  IS NULL;


COMMENT ON COLUMN "realtime"."messages_2025_08_09"."event"  IS NULL;


COMMENT ON COLUMN "realtime"."messages_2025_08_09"."private"  IS NULL;


COMMENT ON COLUMN "realtime"."messages_2025_08_09"."updated_at"  IS NULL;


COMMENT ON COLUMN "realtime"."messages_2025_08_09"."inserted_at"  IS NULL;


COMMENT ON COLUMN "realtime"."messages_2025_08_09"."id"  IS NULL;

COMMENT ON CONSTRAINT "messages_2025_08_09_pkey" ON "realtime"."messages_2025_08_09" IS NULL;

COMMENT ON TABLE "realtime"."messages_2025_08_09"  IS NULL;

--- END CREATE TABLE "realtime"."messages_2025_08_09" ---

--- BEGIN ALTER TABLE "auth"."schema_migrations" ---



--- END ALTER TABLE "auth"."schema_migrations" ---

--- BEGIN ALTER TABLE "auth"."audit_log_entries" ---



--- END ALTER TABLE "auth"."audit_log_entries" ---

--- BEGIN ALTER TABLE "auth"."saml_relay_states" ---



--- END ALTER TABLE "auth"."saml_relay_states" ---

--- BEGIN ALTER TABLE "auth"."refresh_tokens" ---



--- END ALTER TABLE "auth"."refresh_tokens" ---

--- BEGIN CREATE TABLE "public"."form_case_one_all_form_files" ---

CREATE TABLE IF NOT EXISTS "public"."form_case_one_all_form_files" (
	"id" int8 NOT NULL  GENERATED BY DEFAULT AS IDENTITY,
	"created_at" timestamptz NOT NULL DEFAULT now() ,
	"form_case_one_id" uuid NULL DEFAULT gen_random_uuid() ,
	"all_form_files_id" uuid NULL DEFAULT gen_random_uuid() ,
	CONSTRAINT "form_case_one_all_form_files_all_form_files_id_fkey" FOREIGN KEY (all_form_files_id) REFERENCES all_form_files(id) ON DELETE CASCADE ,
	CONSTRAINT "form_case_one_all_form_files_form_case_one_id_fkey" FOREIGN KEY (form_case_one_id) REFERENCES form_case_one(id) ON DELETE CASCADE ,
	CONSTRAINT "form_case_one_all_form_files_pkey" PRIMARY KEY (id) 
);

ALTER TABLE IF EXISTS "public"."form_case_one_all_form_files" OWNER TO postgres;

GRANT SELECT ON TABLE "public"."form_case_one_all_form_files" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_all_form_files" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_all_form_files" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_all_form_files" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_all_form_files" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_all_form_files" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_all_form_files" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_all_form_files" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_all_form_files" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_all_form_files" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_all_form_files" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_all_form_files" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_all_form_files" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_all_form_files" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_all_form_files" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_all_form_files" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_all_form_files" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_all_form_files" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_all_form_files" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_all_form_files" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_all_form_files" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_all_form_files" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_all_form_files" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_all_form_files" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_all_form_files" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_all_form_files" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_all_form_files" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_all_form_files" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_all_form_files" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_all_form_files" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_all_form_files" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_all_form_files" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_all_form_files" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_all_form_files" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_all_form_files" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_all_form_files" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_all_form_files" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_all_form_files" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_all_form_files" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_all_form_files" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "public"."form_case_one_all_form_files"."id"  IS NULL;


COMMENT ON COLUMN "public"."form_case_one_all_form_files"."created_at"  IS NULL;


COMMENT ON COLUMN "public"."form_case_one_all_form_files"."form_case_one_id"  IS NULL;


COMMENT ON COLUMN "public"."form_case_one_all_form_files"."all_form_files_id"  IS NULL;

COMMENT ON CONSTRAINT "form_case_one_all_form_files_all_form_files_id_fkey" ON "public"."form_case_one_all_form_files" IS NULL;


COMMENT ON CONSTRAINT "form_case_one_all_form_files_form_case_one_id_fkey" ON "public"."form_case_one_all_form_files" IS NULL;


COMMENT ON CONSTRAINT "form_case_one_all_form_files_pkey" ON "public"."form_case_one_all_form_files" IS NULL;

COMMENT ON TABLE "public"."form_case_one_all_form_files"  IS 'form case one union table with all form files table';

--- END CREATE TABLE "public"."form_case_one_all_form_files" ---

--- BEGIN ALTER TABLE "auth"."sso_domains" ---



--- END ALTER TABLE "auth"."sso_domains" ---

--- BEGIN ALTER TABLE "auth"."mfa_amr_claims" ---



--- END ALTER TABLE "auth"."mfa_amr_claims" ---

--- BEGIN ALTER TABLE "auth"."saml_providers" ---



--- END ALTER TABLE "auth"."saml_providers" ---

--- BEGIN ALTER TABLE "auth"."identities" ---



--- END ALTER TABLE "auth"."identities" ---

--- BEGIN ALTER TABLE "auth"."one_time_tokens" ---



--- END ALTER TABLE "auth"."one_time_tokens" ---

--- BEGIN ALTER TABLE "realtime"."schema_migrations" ---



--- END ALTER TABLE "realtime"."schema_migrations" ---

--- BEGIN ALTER TABLE "auth"."mfa_challenges" ---



--- END ALTER TABLE "auth"."mfa_challenges" ---

--- BEGIN CREATE TABLE "reports"."extraction_errors" ---

CREATE TABLE IF NOT EXISTS "reports"."extraction_errors" (
	"id" int4 NOT NULL DEFAULT nextval('reports.extraction_errors_id_seq'::regclass) ,
	"document_id" uuid NOT NULL  ,
	"file_name" text NOT NULL  ,
	"error_message" text NOT NULL  ,
	"namespace" text NULL  ,
	"created_at" timestamptz NULL DEFAULT now() ,
	CONSTRAINT "extraction_errors_pkey" PRIMARY KEY (id) 
);

ALTER TABLE IF EXISTS "reports"."extraction_errors" OWNER TO postgres;

GRANT SELECT ON TABLE "reports"."extraction_errors" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "reports"."extraction_errors" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "reports"."extraction_errors" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "reports"."extraction_errors" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "reports"."extraction_errors" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "reports"."extraction_errors" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "reports"."extraction_errors" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "reports"."extraction_errors" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "reports"."extraction_errors" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "reports"."extraction_errors" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "reports"."extraction_errors" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "reports"."extraction_errors" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "reports"."extraction_errors" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "reports"."extraction_errors" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "reports"."extraction_errors" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "reports"."extraction_errors" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "reports"."extraction_errors" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "reports"."extraction_errors" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "reports"."extraction_errors" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "reports"."extraction_errors"."id"  IS NULL;


COMMENT ON COLUMN "reports"."extraction_errors"."document_id"  IS NULL;


COMMENT ON COLUMN "reports"."extraction_errors"."file_name"  IS NULL;


COMMENT ON COLUMN "reports"."extraction_errors"."error_message"  IS NULL;


COMMENT ON COLUMN "reports"."extraction_errors"."namespace"  IS NULL;


COMMENT ON COLUMN "reports"."extraction_errors"."created_at"  IS NULL;

COMMENT ON CONSTRAINT "extraction_errors_pkey" ON "reports"."extraction_errors" IS NULL;

COMMENT ON TABLE "reports"."extraction_errors"  IS NULL;

--- END CREATE TABLE "reports"."extraction_errors" ---

--- BEGIN CREATE TABLE "storage"."buckets_analytics" ---

CREATE TABLE IF NOT EXISTS "storage"."buckets_analytics" (
	"id" text NOT NULL  ,
	"type" buckettype NOT NULL DEFAULT 'ANALYTICS'::storage.buckettype ,
	"format" text NOT NULL DEFAULT 'ICEBERG'::text ,
	"created_at" timestamptz NOT NULL DEFAULT now() ,
	"updated_at" timestamptz NOT NULL DEFAULT now() ,
	CONSTRAINT "buckets_analytics_pkey" PRIMARY KEY (id) 
);

ALTER TABLE IF EXISTS "storage"."buckets_analytics" OWNER TO supabase_storage_admin;

GRANT SELECT ON TABLE "storage"."buckets_analytics" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "storage"."buckets_analytics" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "storage"."buckets_analytics" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "storage"."buckets_analytics" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "storage"."buckets_analytics" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "storage"."buckets_analytics" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "storage"."buckets_analytics" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "storage"."buckets_analytics" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "storage"."buckets_analytics" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "storage"."buckets_analytics" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "storage"."buckets_analytics" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "storage"."buckets_analytics" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "storage"."buckets_analytics" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "storage"."buckets_analytics" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "storage"."buckets_analytics" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "storage"."buckets_analytics" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "storage"."buckets_analytics" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "storage"."buckets_analytics" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "storage"."buckets_analytics" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "storage"."buckets_analytics" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "storage"."buckets_analytics" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "storage"."buckets_analytics" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "storage"."buckets_analytics" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "storage"."buckets_analytics" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "storage"."buckets_analytics" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "storage"."buckets_analytics" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "storage"."buckets_analytics" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "storage"."buckets_analytics" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "storage"."buckets_analytics" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "storage"."buckets_analytics" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "storage"."buckets_analytics" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "storage"."buckets_analytics" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "storage"."buckets_analytics" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "storage"."buckets_analytics" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "storage"."buckets_analytics" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "storage"."buckets_analytics" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "storage"."buckets_analytics" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "storage"."buckets_analytics" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "storage"."buckets_analytics" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "storage"."buckets_analytics" TO supabase_storage_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "storage"."buckets_analytics" TO supabase_storage_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "storage"."buckets_analytics" TO supabase_storage_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "storage"."buckets_analytics" TO supabase_storage_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "storage"."buckets_analytics" TO supabase_storage_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "storage"."buckets_analytics" TO supabase_storage_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "storage"."buckets_analytics" TO supabase_storage_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "storage"."buckets_analytics" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "storage"."buckets_analytics"."id"  IS NULL;


COMMENT ON COLUMN "storage"."buckets_analytics"."type"  IS NULL;


COMMENT ON COLUMN "storage"."buckets_analytics"."format"  IS NULL;


COMMENT ON COLUMN "storage"."buckets_analytics"."created_at"  IS NULL;


COMMENT ON COLUMN "storage"."buckets_analytics"."updated_at"  IS NULL;

COMMENT ON CONSTRAINT "buckets_analytics_pkey" ON "storage"."buckets_analytics" IS NULL;

COMMENT ON TABLE "storage"."buckets_analytics"  IS NULL;

--- END CREATE TABLE "storage"."buckets_analytics" ---

--- BEGIN CREATE TABLE "public"."form_case_two_actors_groups_values" ---

CREATE TABLE IF NOT EXISTS "public"."form_case_two_actors_groups_values" (
	"id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	"created_at" timestamptz NOT NULL DEFAULT now() ,
	"name" text NOT NULL  ,
	"actor_group_id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	CONSTRAINT "form_case_two_actors_groups_values_actor_group_id_fkey" FOREIGN KEY (actor_group_id) REFERENCES form_case_two_actors_groups(id) ON DELETE CASCADE ,
	CONSTRAINT "form_case_two_actors_groups_values_pkey" PRIMARY KEY (id) 
);

ALTER TABLE IF EXISTS "public"."form_case_two_actors_groups_values" OWNER TO postgres;

GRANT SELECT ON TABLE "public"."form_case_two_actors_groups_values" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_actors_groups_values" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_actors_groups_values" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_actors_groups_values" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_actors_groups_values" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_actors_groups_values" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_actors_groups_values" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_actors_groups_values" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_actors_groups_values" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_actors_groups_values" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_actors_groups_values" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_actors_groups_values" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_actors_groups_values" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_actors_groups_values" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_actors_groups_values" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_actors_groups_values" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_actors_groups_values" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_actors_groups_values" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_actors_groups_values" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_actors_groups_values" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_actors_groups_values" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_actors_groups_values" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_actors_groups_values" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_actors_groups_values" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_actors_groups_values" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_actors_groups_values" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_actors_groups_values" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_actors_groups_values" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_actors_groups_values" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_actors_groups_values" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_actors_groups_values" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_actors_groups_values" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_actors_groups_values" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_actors_groups_values" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_actors_groups_values" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_actors_groups_values" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_actors_groups_values" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_actors_groups_values" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_actors_groups_values" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_actors_groups_values" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "public"."form_case_two_actors_groups_values"."id"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two_actors_groups_values"."created_at"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two_actors_groups_values"."name"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two_actors_groups_values"."actor_group_id"  IS NULL;

COMMENT ON CONSTRAINT "form_case_two_actors_groups_values_actor_group_id_fkey" ON "public"."form_case_two_actors_groups_values" IS NULL;


COMMENT ON CONSTRAINT "form_case_two_actors_groups_values_pkey" ON "public"."form_case_two_actors_groups_values" IS NULL;

COMMENT ON TABLE "public"."form_case_two_actors_groups_values"  IS 'ny actors groups values';

--- END CREATE TABLE "public"."form_case_two_actors_groups_values" ---

--- BEGIN CREATE TABLE "realtime"."messages_2025_08_08" ---

CREATE TABLE IF NOT EXISTS "realtime"."messages_2025_08_08" (
	"topic" text NOT NULL  ,
	"extension" text NOT NULL  ,
	"payload" jsonb NULL  ,
	"event" text NULL  ,
	"private" bool NULL DEFAULT false ,
	"updated_at" timestamp NOT NULL DEFAULT now() ,
	"inserted_at" timestamp NOT NULL DEFAULT now() ,
	"id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	CONSTRAINT "messages_2025_08_08_pkey" PRIMARY KEY (id, inserted_at) 
);

ALTER TABLE IF EXISTS "realtime"."messages_2025_08_08" OWNER TO supabase_admin;

GRANT SELECT ON TABLE "realtime"."messages_2025_08_08" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "realtime"."messages_2025_08_08" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "realtime"."messages_2025_08_08" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "realtime"."messages_2025_08_08" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "realtime"."messages_2025_08_08" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "realtime"."messages_2025_08_08" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "realtime"."messages_2025_08_08" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "realtime"."messages_2025_08_08" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "realtime"."messages_2025_08_08" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "realtime"."messages_2025_08_08" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "realtime"."messages_2025_08_08" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "realtime"."messages_2025_08_08" TO dashboard_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "realtime"."messages_2025_08_08" TO dashboard_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "realtime"."messages_2025_08_08" TO dashboard_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "realtime"."messages_2025_08_08" TO dashboard_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "realtime"."messages_2025_08_08" TO dashboard_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "realtime"."messages_2025_08_08" TO dashboard_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "realtime"."messages_2025_08_08" TO dashboard_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "realtime"."messages_2025_08_08" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "realtime"."messages_2025_08_08" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "realtime"."messages_2025_08_08" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "realtime"."messages_2025_08_08" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "realtime"."messages_2025_08_08" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "realtime"."messages_2025_08_08" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "realtime"."messages_2025_08_08" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "realtime"."messages_2025_08_08" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "realtime"."messages_2025_08_08"."topic"  IS NULL;


COMMENT ON COLUMN "realtime"."messages_2025_08_08"."extension"  IS NULL;


COMMENT ON COLUMN "realtime"."messages_2025_08_08"."payload"  IS NULL;


COMMENT ON COLUMN "realtime"."messages_2025_08_08"."event"  IS NULL;


COMMENT ON COLUMN "realtime"."messages_2025_08_08"."private"  IS NULL;


COMMENT ON COLUMN "realtime"."messages_2025_08_08"."updated_at"  IS NULL;


COMMENT ON COLUMN "realtime"."messages_2025_08_08"."inserted_at"  IS NULL;


COMMENT ON COLUMN "realtime"."messages_2025_08_08"."id"  IS NULL;

COMMENT ON CONSTRAINT "messages_2025_08_08_pkey" ON "realtime"."messages_2025_08_08" IS NULL;

COMMENT ON TABLE "realtime"."messages_2025_08_08"  IS NULL;

--- END CREATE TABLE "realtime"."messages_2025_08_08" ---

--- BEGIN CREATE TABLE "realtime"."messages_2025_08_10" ---

CREATE TABLE IF NOT EXISTS "realtime"."messages_2025_08_10" (
	"topic" text NOT NULL  ,
	"extension" text NOT NULL  ,
	"payload" jsonb NULL  ,
	"event" text NULL  ,
	"private" bool NULL DEFAULT false ,
	"updated_at" timestamp NOT NULL DEFAULT now() ,
	"inserted_at" timestamp NOT NULL DEFAULT now() ,
	"id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	CONSTRAINT "messages_2025_08_10_pkey" PRIMARY KEY (id, inserted_at) 
);

ALTER TABLE IF EXISTS "realtime"."messages_2025_08_10" OWNER TO supabase_admin;

GRANT SELECT ON TABLE "realtime"."messages_2025_08_10" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "realtime"."messages_2025_08_10" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "realtime"."messages_2025_08_10" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "realtime"."messages_2025_08_10" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "realtime"."messages_2025_08_10" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "realtime"."messages_2025_08_10" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "realtime"."messages_2025_08_10" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "realtime"."messages_2025_08_10" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "realtime"."messages_2025_08_10" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "realtime"."messages_2025_08_10" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "realtime"."messages_2025_08_10" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "realtime"."messages_2025_08_10" TO dashboard_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "realtime"."messages_2025_08_10" TO dashboard_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "realtime"."messages_2025_08_10" TO dashboard_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "realtime"."messages_2025_08_10" TO dashboard_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "realtime"."messages_2025_08_10" TO dashboard_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "realtime"."messages_2025_08_10" TO dashboard_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "realtime"."messages_2025_08_10" TO dashboard_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "realtime"."messages_2025_08_10" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "realtime"."messages_2025_08_10" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "realtime"."messages_2025_08_10" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "realtime"."messages_2025_08_10" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "realtime"."messages_2025_08_10" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "realtime"."messages_2025_08_10" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "realtime"."messages_2025_08_10" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "realtime"."messages_2025_08_10" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "realtime"."messages_2025_08_10"."topic"  IS NULL;


COMMENT ON COLUMN "realtime"."messages_2025_08_10"."extension"  IS NULL;


COMMENT ON COLUMN "realtime"."messages_2025_08_10"."payload"  IS NULL;


COMMENT ON COLUMN "realtime"."messages_2025_08_10"."event"  IS NULL;


COMMENT ON COLUMN "realtime"."messages_2025_08_10"."private"  IS NULL;


COMMENT ON COLUMN "realtime"."messages_2025_08_10"."updated_at"  IS NULL;


COMMENT ON COLUMN "realtime"."messages_2025_08_10"."inserted_at"  IS NULL;


COMMENT ON COLUMN "realtime"."messages_2025_08_10"."id"  IS NULL;

COMMENT ON CONSTRAINT "messages_2025_08_10_pkey" ON "realtime"."messages_2025_08_10" IS NULL;

COMMENT ON TABLE "realtime"."messages_2025_08_10"  IS NULL;

--- END CREATE TABLE "realtime"."messages_2025_08_10" ---

--- BEGIN CREATE TABLE "public"."extraction_errors" ---

CREATE TABLE IF NOT EXISTS "public"."extraction_errors" (
	"id" int4 NOT NULL DEFAULT nextval('extraction_errors_id_seq'::regclass) ,
	"document_id" uuid NOT NULL  ,
	"file_name" text NOT NULL  ,
	"error_message" text NOT NULL  ,
	"namespace" text NULL  ,
	"created_at" timestamptz NULL DEFAULT now() ,
	CONSTRAINT "extraction_errors_pkey" PRIMARY KEY (id) 
);

ALTER TABLE IF EXISTS "public"."extraction_errors" OWNER TO postgres;

GRANT SELECT ON TABLE "public"."extraction_errors" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."extraction_errors" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."extraction_errors" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."extraction_errors" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."extraction_errors" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."extraction_errors" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."extraction_errors" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."extraction_errors" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."extraction_errors" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."extraction_errors" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."extraction_errors" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."extraction_errors" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."extraction_errors" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."extraction_errors" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."extraction_errors" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."extraction_errors" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."extraction_errors" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."extraction_errors" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."extraction_errors" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."extraction_errors" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."extraction_errors" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."extraction_errors" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."extraction_errors" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."extraction_errors" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."extraction_errors" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."extraction_errors" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."extraction_errors" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."extraction_errors" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."extraction_errors" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."extraction_errors" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."extraction_errors" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."extraction_errors" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."extraction_errors" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."extraction_errors" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."extraction_errors" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."extraction_errors" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."extraction_errors" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."extraction_errors" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."extraction_errors" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."extraction_errors" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "public"."extraction_errors"."id"  IS NULL;


COMMENT ON COLUMN "public"."extraction_errors"."document_id"  IS NULL;


COMMENT ON COLUMN "public"."extraction_errors"."file_name"  IS NULL;


COMMENT ON COLUMN "public"."extraction_errors"."error_message"  IS NULL;


COMMENT ON COLUMN "public"."extraction_errors"."namespace"  IS NULL;


COMMENT ON COLUMN "public"."extraction_errors"."created_at"  IS NULL;

COMMENT ON CONSTRAINT "extraction_errors_pkey" ON "public"."extraction_errors" IS NULL;

COMMENT ON TABLE "public"."extraction_errors"  IS NULL;

--- END CREATE TABLE "public"."extraction_errors" ---

--- BEGIN CREATE TABLE "public"."form_case_two_constrainsts_relation" ---

CREATE TABLE IF NOT EXISTS "public"."form_case_two_constrainsts_relation" (
	"id" int8 NOT NULL  GENERATED BY DEFAULT AS IDENTITY,
	"created_at" timestamptz NOT NULL DEFAULT now() ,
	"form_case_two_id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	"form_case_two_constraints_id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	CONSTRAINT "form_case_two_constrainsts_re_form_case_two_constraints_id_fkey" FOREIGN KEY (form_case_two_constraints_id) REFERENCES form_case_two_constraints(id) ON DELETE CASCADE ,
	CONSTRAINT "form_case_two_constrainsts_relation_form_case_two_id_fkey" FOREIGN KEY (form_case_two_id) REFERENCES form_case_two(id) ON DELETE CASCADE ,
	CONSTRAINT "form_case_two_constrainsts_relation_pkey" PRIMARY KEY (id) 
);

ALTER TABLE IF EXISTS "public"."form_case_two_constrainsts_relation" OWNER TO postgres;

GRANT SELECT ON TABLE "public"."form_case_two_constrainsts_relation" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_constrainsts_relation" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_constrainsts_relation" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_constrainsts_relation" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_constrainsts_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_constrainsts_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_constrainsts_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_constrainsts_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_constrainsts_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_constrainsts_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_constrainsts_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_constrainsts_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_constrainsts_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_constrainsts_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_constrainsts_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_constrainsts_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_constrainsts_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_constrainsts_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_constrainsts_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_constrainsts_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_constrainsts_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_constrainsts_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_constrainsts_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_constrainsts_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_constrainsts_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_constrainsts_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_constrainsts_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_constrainsts_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_constrainsts_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_constrainsts_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_constrainsts_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_constrainsts_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_constrainsts_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_constrainsts_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_constrainsts_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_constrainsts_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_constrainsts_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_constrainsts_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_constrainsts_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_constrainsts_relation" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "public"."form_case_two_constrainsts_relation"."id"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two_constrainsts_relation"."created_at"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two_constrainsts_relation"."form_case_two_id"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two_constrainsts_relation"."form_case_two_constraints_id"  IS NULL;

COMMENT ON CONSTRAINT "form_case_two_constrainsts_re_form_case_two_constraints_id_fkey" ON "public"."form_case_two_constrainsts_relation" IS NULL;


COMMENT ON CONSTRAINT "form_case_two_constrainsts_relation_form_case_two_id_fkey" ON "public"."form_case_two_constrainsts_relation" IS NULL;


COMMENT ON CONSTRAINT "form_case_two_constrainsts_relation_pkey" ON "public"."form_case_two_constrainsts_relation" IS NULL;

COMMENT ON TABLE "public"."form_case_two_constrainsts_relation"  IS 'relation many to many betwen form_case_two and form_case_two_constrainsts';

--- END CREATE TABLE "public"."form_case_two_constrainsts_relation" ---

--- BEGIN CREATE TABLE "public"."form_case_two_target_population_relation" ---

CREATE TABLE IF NOT EXISTS "public"."form_case_two_target_population_relation" (
	"id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	"created_at" timestamptz NOT NULL DEFAULT now() ,
	"form_case_two_id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	"form_case_two_target_population_id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	CONSTRAINT "form_case_two_target_populati_form_case_two_target_populat_fkey" FOREIGN KEY (form_case_two_target_population_id) REFERENCES form_case_two_target_population(id) ON DELETE CASCADE ,
	CONSTRAINT "form_case_two_target_pupolation_relation_form_case_two_id_fkey" FOREIGN KEY (form_case_two_id) REFERENCES form_case_two(id) ON DELETE CASCADE ,
	CONSTRAINT "form_case_two_target_pupolation_relation_pkey" PRIMARY KEY (id) 
);

ALTER TABLE IF EXISTS "public"."form_case_two_target_population_relation" OWNER TO postgres;

GRANT SELECT ON TABLE "public"."form_case_two_target_population_relation" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_target_population_relation" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_target_population_relation" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_target_population_relation" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_target_population_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_target_population_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_target_population_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_target_population_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_target_population_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_target_population_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_target_population_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_target_population_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_target_population_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_target_population_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_target_population_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_target_population_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_target_population_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_target_population_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_target_population_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_target_population_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_target_population_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_target_population_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_target_population_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_target_population_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_target_population_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_target_population_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_target_population_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_target_population_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_target_population_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_target_population_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_target_population_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_target_population_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_target_population_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_target_population_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_target_population_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_target_population_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_target_population_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_target_population_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_target_population_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_target_population_relation" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "public"."form_case_two_target_population_relation"."id"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two_target_population_relation"."created_at"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two_target_population_relation"."form_case_two_id"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two_target_population_relation"."form_case_two_target_population_id"  IS NULL;

COMMENT ON CONSTRAINT "form_case_two_target_populati_form_case_two_target_populat_fkey" ON "public"."form_case_two_target_population_relation" IS NULL;


COMMENT ON CONSTRAINT "form_case_two_target_pupolation_relation_form_case_two_id_fkey" ON "public"."form_case_two_target_population_relation" IS NULL;


COMMENT ON CONSTRAINT "form_case_two_target_pupolation_relation_pkey" ON "public"."form_case_two_target_population_relation" IS NULL;

COMMENT ON TABLE "public"."form_case_two_target_population_relation"  IS 'realtions many to many between form_case_two and form_case_two_target_population';

--- END CREATE TABLE "public"."form_case_two_target_population_relation" ---

--- BEGIN CREATE TABLE "public"."form_case_two_policy_objective_relation" ---

CREATE TABLE IF NOT EXISTS "public"."form_case_two_policy_objective_relation" (
	"id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	"created_at" timestamptz NOT NULL DEFAULT now() ,
	"form_case_two_id" uuid NULL DEFAULT gen_random_uuid() ,
	"form_case_two_policy_objetive_id" uuid NULL DEFAULT gen_random_uuid() ,
	CONSTRAINT "form_case_two_policy_objectiv_form_case_two_policy_objetiv_fkey" FOREIGN KEY (form_case_two_policy_objetive_id) REFERENCES form_case_two_policy_objective(id) ON DELETE CASCADE ,
	CONSTRAINT "form_case_two_policy_objective_relation_form_case_two_id_fkey" FOREIGN KEY (form_case_two_id) REFERENCES form_case_two(id) ON DELETE CASCADE ,
	CONSTRAINT "form_case_two_policy_objective_relation_pkey" PRIMARY KEY (id) 
);

ALTER TABLE IF EXISTS "public"."form_case_two_policy_objective_relation" OWNER TO postgres;

GRANT SELECT ON TABLE "public"."form_case_two_policy_objective_relation" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_policy_objective_relation" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_policy_objective_relation" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_policy_objective_relation" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_policy_objective_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_policy_objective_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_policy_objective_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_policy_objective_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_policy_objective_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_policy_objective_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_policy_objective_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_policy_objective_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_policy_objective_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_policy_objective_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_policy_objective_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_policy_objective_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_policy_objective_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_policy_objective_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_policy_objective_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_policy_objective_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_policy_objective_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_policy_objective_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_policy_objective_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_policy_objective_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_policy_objective_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_policy_objective_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_policy_objective_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_policy_objective_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_policy_objective_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_policy_objective_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_policy_objective_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_policy_objective_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_policy_objective_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_policy_objective_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_policy_objective_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_policy_objective_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_policy_objective_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_policy_objective_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_policy_objective_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_policy_objective_relation" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "public"."form_case_two_policy_objective_relation"."id"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two_policy_objective_relation"."created_at"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two_policy_objective_relation"."form_case_two_id"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two_policy_objective_relation"."form_case_two_policy_objetive_id"  IS NULL;

COMMENT ON CONSTRAINT "form_case_two_policy_objectiv_form_case_two_policy_objetiv_fkey" ON "public"."form_case_two_policy_objective_relation" IS NULL;


COMMENT ON CONSTRAINT "form_case_two_policy_objective_relation_form_case_two_id_fkey" ON "public"."form_case_two_policy_objective_relation" IS NULL;


COMMENT ON CONSTRAINT "form_case_two_policy_objective_relation_pkey" ON "public"."form_case_two_policy_objective_relation" IS NULL;

COMMENT ON TABLE "public"."form_case_two_policy_objective_relation"  IS 'Relations many to many between form_case_two_policy_objective and form_case_two';

--- END CREATE TABLE "public"."form_case_two_policy_objective_relation" ---

--- BEGIN CREATE TABLE "ai"."a2a_report_files" ---

CREATE TABLE IF NOT EXISTS "ai"."a2a_report_files" (
	"id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	"public_url" text NOT NULL  ,
	"object_path" text NOT NULL  ,
	"object_name" text NOT NULL  ,
	"agent_role" text NOT NULL  ,
	"created_at" timestamptz NOT NULL DEFAULT now() ,
	"case_id" uuid NULL  ,
	"agent_name" varchar(100) NULL  ,
	"identifier" text NULL  ,
	"flow" text NULL  ,
	"simulation_id" varchar NULL  ,
	CONSTRAINT "a2a_report_files_agent_role_check" CHECK ((agent_role = ANY (ARRAY['main'::text, 'collaborator'::text, 'None'::text]))) ,
	CONSTRAINT "a2a_report_files_flow_check" CHECK ((flow = ANY (ARRAY['factum'::text, 'agora'::text, 'politeia'::text]))) ,
	CONSTRAINT "a2a_report_files_identifier_check" CHECK ((identifier = ANY (ARRAY['case_id'::text, 'context_id'::text, 'simulation_id'::text, 'unknown'::text]))) ,
	CONSTRAINT "a2a_report_files_pkey" PRIMARY KEY (id) ,
	CONSTRAINT "a2a_report_files_simulation_id_fkey" FOREIGN KEY (simulation_id) REFERENCES ai.simulations(id) 
);

ALTER TABLE IF EXISTS "ai"."a2a_report_files" OWNER TO postgres;

GRANT SELECT ON TABLE "ai"."a2a_report_files" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."a2a_report_files" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."a2a_report_files" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."a2a_report_files" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."a2a_report_files" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."a2a_report_files" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."a2a_report_files" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."a2a_report_files" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "ai"."a2a_report_files" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "ai"."a2a_report_files" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "ai"."a2a_report_files" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."a2a_report_files" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."a2a_report_files" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."a2a_report_files" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."a2a_report_files" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "ai"."a2a_report_files" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "ai"."a2a_report_files" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "ai"."a2a_report_files" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."a2a_report_files" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."a2a_report_files" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."a2a_report_files" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."a2a_report_files" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "ai"."a2a_report_files" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "ai"."a2a_report_files" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "ai"."a2a_report_files" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."a2a_report_files" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."a2a_report_files" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."a2a_report_files" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."a2a_report_files" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "ai"."a2a_report_files" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "ai"."a2a_report_files" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "ai"."a2a_report_files" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."a2a_report_files" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."a2a_report_files" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."a2a_report_files" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."a2a_report_files" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "ai"."a2a_report_files" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "ai"."a2a_report_files" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "ai"."a2a_report_files" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."a2a_report_files" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "ai"."a2a_report_files"."id"  IS NULL;


COMMENT ON COLUMN "ai"."a2a_report_files"."public_url"  IS NULL;


COMMENT ON COLUMN "ai"."a2a_report_files"."object_path"  IS NULL;


COMMENT ON COLUMN "ai"."a2a_report_files"."object_name"  IS NULL;


COMMENT ON COLUMN "ai"."a2a_report_files"."agent_role"  IS NULL;


COMMENT ON COLUMN "ai"."a2a_report_files"."created_at"  IS NULL;


COMMENT ON COLUMN "ai"."a2a_report_files"."case_id"  IS NULL;


COMMENT ON COLUMN "ai"."a2a_report_files"."agent_name"  IS NULL;


COMMENT ON COLUMN "ai"."a2a_report_files"."identifier"  IS NULL;


COMMENT ON COLUMN "ai"."a2a_report_files"."flow"  IS NULL;


COMMENT ON COLUMN "ai"."a2a_report_files"."simulation_id"  IS NULL;

COMMENT ON CONSTRAINT "a2a_report_files_agent_role_check" ON "ai"."a2a_report_files" IS NULL;


COMMENT ON CONSTRAINT "a2a_report_files_flow_check" ON "ai"."a2a_report_files" IS NULL;


COMMENT ON CONSTRAINT "a2a_report_files_identifier_check" ON "ai"."a2a_report_files" IS NULL;


COMMENT ON CONSTRAINT "a2a_report_files_pkey" ON "ai"."a2a_report_files" IS NULL;


COMMENT ON CONSTRAINT "a2a_report_files_simulation_id_fkey" ON "ai"."a2a_report_files" IS NULL;

COMMENT ON TABLE "ai"."a2a_report_files"  IS NULL;

--- END CREATE TABLE "ai"."a2a_report_files" ---

--- BEGIN CREATE TABLE "public"."legal_documents" ---

CREATE TABLE IF NOT EXISTS "public"."legal_documents" (
	"id" int8 NOT NULL  GENERATED BY DEFAULT AS IDENTITY,
	"created_at" timestamptz NOT NULL DEFAULT now() ,
	"type" legal_document_type NOT NULL  ,
	"language" varchar NOT NULL  ,
	"version" int8 NOT NULL  ,
	"main_title" varchar NOT NULL  ,
	"content" text NOT NULL  ,
	CONSTRAINT "legal_documents_pkey" PRIMARY KEY (id) 
);

ALTER TABLE IF EXISTS "public"."legal_documents" OWNER TO postgres;

GRANT SELECT ON TABLE "public"."legal_documents" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."legal_documents" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."legal_documents" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."legal_documents" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."legal_documents" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."legal_documents" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."legal_documents" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."legal_documents" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."legal_documents" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."legal_documents" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."legal_documents" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."legal_documents" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."legal_documents" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."legal_documents" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."legal_documents" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."legal_documents" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."legal_documents" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."legal_documents" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."legal_documents" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."legal_documents" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."legal_documents" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."legal_documents" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."legal_documents" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."legal_documents" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."legal_documents" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."legal_documents" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."legal_documents" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."legal_documents" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."legal_documents" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."legal_documents" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."legal_documents" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."legal_documents" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."legal_documents" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."legal_documents" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."legal_documents" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."legal_documents" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."legal_documents" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."legal_documents" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."legal_documents" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."legal_documents" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "public"."legal_documents"."id"  IS NULL;


COMMENT ON COLUMN "public"."legal_documents"."created_at"  IS NULL;


COMMENT ON COLUMN "public"."legal_documents"."type"  IS NULL;


COMMENT ON COLUMN "public"."legal_documents"."language"  IS NULL;


COMMENT ON COLUMN "public"."legal_documents"."version"  IS NULL;


COMMENT ON COLUMN "public"."legal_documents"."main_title"  IS NULL;


COMMENT ON COLUMN "public"."legal_documents"."content"  IS NULL;

COMMENT ON CONSTRAINT "legal_documents_pkey" ON "public"."legal_documents" IS NULL;

COMMENT ON TABLE "public"."legal_documents"  IS 'legal documetns as a terms and privacy';

--- END CREATE TABLE "public"."legal_documents" ---

--- BEGIN CREATE TABLE "public"."form_case_two_locations" ---

CREATE TABLE IF NOT EXISTS "public"."form_case_two_locations" (
	"id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	"created_at" timestamptz NOT NULL DEFAULT now() ,
	"address" text NOT NULL  ,
	"lat" float8 NOT NULL  ,
	"lon" float8 NOT NULL  ,
	"form_case_two_id" uuid NULL DEFAULT gen_random_uuid() ,
	CONSTRAINT "form_case_two_locations_form_case_two_id_fkey" FOREIGN KEY (form_case_two_id) REFERENCES form_case_two(id) ON DELETE CASCADE ,
	CONSTRAINT "form_case_two_locations_pkey" PRIMARY KEY (id) 
);

ALTER TABLE IF EXISTS "public"."form_case_two_locations" OWNER TO postgres;

GRANT SELECT ON TABLE "public"."form_case_two_locations" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_locations" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_locations" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_locations" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_locations" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_locations" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_locations" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_locations" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_locations" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_locations" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_locations" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_locations" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_locations" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_locations" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_locations" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_locations" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_locations" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_locations" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_locations" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_locations" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_locations" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_locations" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_locations" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_locations" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_locations" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_locations" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_locations" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_locations" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_locations" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_locations" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_locations" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_locations" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_locations" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_locations" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_locations" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_locations" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_locations" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_locations" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_locations" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_locations" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "public"."form_case_two_locations"."id"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two_locations"."created_at"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two_locations"."address"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two_locations"."lat"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two_locations"."lon"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two_locations"."form_case_two_id"  IS NULL;

COMMENT ON CONSTRAINT "form_case_two_locations_form_case_two_id_fkey" ON "public"."form_case_two_locations" IS NULL;


COMMENT ON CONSTRAINT "form_case_two_locations_pkey" ON "public"."form_case_two_locations" IS NULL;

COMMENT ON TABLE "public"."form_case_two_locations"  IS NULL;

--- END CREATE TABLE "public"."form_case_two_locations" ---

--- BEGIN CREATE TABLE "public"."form_case_two_financing_options_relation" ---

CREATE TABLE IF NOT EXISTS "public"."form_case_two_financing_options_relation" (
	"id" int8 NOT NULL  GENERATED BY DEFAULT AS IDENTITY,
	"created_at" timestamptz NOT NULL DEFAULT now() ,
	"form_case_two_id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	"form_case_two_financing_options_id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	CONSTRAINT "form_case_two_financing_optio_form_case_two_financing_opti_fkey" FOREIGN KEY (form_case_two_financing_options_id) REFERENCES form_case_two_financing_options(id) ON DELETE CASCADE ,
	CONSTRAINT "form_case_two_financing_options_relation_form_case_two_id_fkey" FOREIGN KEY (form_case_two_id) REFERENCES form_case_two(id) ON DELETE CASCADE ,
	CONSTRAINT "form_case_two_financing_options_relation_pkey" PRIMARY KEY (id) 
);

ALTER TABLE IF EXISTS "public"."form_case_two_financing_options_relation" OWNER TO postgres;

GRANT SELECT ON TABLE "public"."form_case_two_financing_options_relation" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_financing_options_relation" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_financing_options_relation" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_financing_options_relation" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_financing_options_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_financing_options_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_financing_options_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_financing_options_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_financing_options_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_financing_options_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_financing_options_relation" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_financing_options_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_financing_options_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_financing_options_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_financing_options_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_financing_options_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_financing_options_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_financing_options_relation" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_financing_options_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_financing_options_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_financing_options_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_financing_options_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_financing_options_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_financing_options_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_financing_options_relation" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_financing_options_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_financing_options_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_financing_options_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_financing_options_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_financing_options_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_financing_options_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_financing_options_relation" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_financing_options_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_financing_options_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_financing_options_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_financing_options_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_financing_options_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_financing_options_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_financing_options_relation" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_financing_options_relation" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "public"."form_case_two_financing_options_relation"."id"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two_financing_options_relation"."created_at"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two_financing_options_relation"."form_case_two_id"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two_financing_options_relation"."form_case_two_financing_options_id"  IS NULL;

COMMENT ON CONSTRAINT "form_case_two_financing_optio_form_case_two_financing_opti_fkey" ON "public"."form_case_two_financing_options_relation" IS NULL;


COMMENT ON CONSTRAINT "form_case_two_financing_options_relation_form_case_two_id_fkey" ON "public"."form_case_two_financing_options_relation" IS NULL;


COMMENT ON CONSTRAINT "form_case_two_financing_options_relation_pkey" ON "public"."form_case_two_financing_options_relation" IS NULL;

COMMENT ON TABLE "public"."form_case_two_financing_options_relation"  IS 'relaations many to many beetwen form_case_two and form_case_two_financing_options';

--- END CREATE TABLE "public"."form_case_two_financing_options_relation" ---

--- BEGIN CREATE TABLE "public"."form_case_two_policy_sub_objective" ---

CREATE TABLE IF NOT EXISTS "public"."form_case_two_policy_sub_objective" (
	"name" text NOT NULL  ,
	"id" uuid NOT NULL  ,
	"form_cae_two_policy_objective_id" uuid NOT NULL  ,
	CONSTRAINT "form_cae_two_policy_sub_objec_form_cae_two_policy_objectiv_fkey" FOREIGN KEY (form_cae_two_policy_objective_id) REFERENCES form_case_two_policy_objective(id) ,
	CONSTRAINT "form_case_two_policy_sub_objective_pkey" PRIMARY KEY (id) 
);

ALTER TABLE IF EXISTS "public"."form_case_two_policy_sub_objective" OWNER TO postgres;

GRANT SELECT ON TABLE "public"."form_case_two_policy_sub_objective" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_policy_sub_objective" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_policy_sub_objective" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_policy_sub_objective" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_policy_sub_objective" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_policy_sub_objective" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_policy_sub_objective" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_policy_sub_objective" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_policy_sub_objective" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_policy_sub_objective" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_policy_sub_objective" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_policy_sub_objective" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_policy_sub_objective" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_policy_sub_objective" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_policy_sub_objective" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_policy_sub_objective" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_policy_sub_objective" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_policy_sub_objective" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_policy_sub_objective" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_policy_sub_objective" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_policy_sub_objective" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_policy_sub_objective" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_policy_sub_objective" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_policy_sub_objective" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_policy_sub_objective" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_policy_sub_objective" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_policy_sub_objective" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_policy_sub_objective" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_policy_sub_objective" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_policy_sub_objective" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_policy_sub_objective" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_policy_sub_objective" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_policy_sub_objective" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_two_policy_sub_objective" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_two_policy_sub_objective" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_two_policy_sub_objective" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_two_policy_sub_objective" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_two_policy_sub_objective" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_two_policy_sub_objective" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_two_policy_sub_objective" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "public"."form_case_two_policy_sub_objective"."name"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two_policy_sub_objective"."id"  IS NULL;


COMMENT ON COLUMN "public"."form_case_two_policy_sub_objective"."form_cae_two_policy_objective_id"  IS NULL;

COMMENT ON CONSTRAINT "form_cae_two_policy_sub_objec_form_cae_two_policy_objectiv_fkey" ON "public"."form_case_two_policy_sub_objective" IS NULL;


COMMENT ON CONSTRAINT "form_case_two_policy_sub_objective_pkey" ON "public"."form_case_two_policy_sub_objective" IS NULL;

COMMENT ON TABLE "public"."form_case_two_policy_sub_objective"  IS NULL;

--- END CREATE TABLE "public"."form_case_two_policy_sub_objective" ---

--- BEGIN CREATE TABLE "ai"."agent_model_settings" ---

CREATE TABLE IF NOT EXISTS "ai"."agent_model_settings" (
	"id" int8 NOT NULL  GENERATED BY DEFAULT AS IDENTITY,
	"name" text NULL  ,
	"model" ai_model NULL  ,
	CONSTRAINT "agent_model_settings_pkey" PRIMARY KEY (id) 
);

ALTER TABLE IF EXISTS "ai"."agent_model_settings" OWNER TO postgres;

GRANT SELECT ON TABLE "ai"."agent_model_settings" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."agent_model_settings" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."agent_model_settings" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."agent_model_settings" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."agent_model_settings" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."agent_model_settings" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."agent_model_settings" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."agent_model_settings" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "ai"."agent_model_settings" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "ai"."agent_model_settings" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "ai"."agent_model_settings" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."agent_model_settings" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."agent_model_settings" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."agent_model_settings" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."agent_model_settings" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "ai"."agent_model_settings" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "ai"."agent_model_settings" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "ai"."agent_model_settings" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."agent_model_settings" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."agent_model_settings" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."agent_model_settings" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."agent_model_settings" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "ai"."agent_model_settings" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "ai"."agent_model_settings" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "ai"."agent_model_settings" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."agent_model_settings" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."agent_model_settings" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."agent_model_settings" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."agent_model_settings" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "ai"."agent_model_settings" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "ai"."agent_model_settings" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "ai"."agent_model_settings" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."agent_model_settings" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."agent_model_settings" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."agent_model_settings" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."agent_model_settings" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "ai"."agent_model_settings" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "ai"."agent_model_settings" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "ai"."agent_model_settings" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."agent_model_settings" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "ai"."agent_model_settings"."id"  IS NULL;


COMMENT ON COLUMN "ai"."agent_model_settings"."name"  IS NULL;


COMMENT ON COLUMN "ai"."agent_model_settings"."model"  IS NULL;

COMMENT ON CONSTRAINT "agent_model_settings_pkey" ON "ai"."agent_model_settings" IS NULL;

COMMENT ON TABLE "ai"."agent_model_settings"  IS NULL;

--- END CREATE TABLE "ai"."agent_model_settings" ---

--- BEGIN CREATE TABLE "ai"."case_prompt_setting" ---

CREATE TABLE IF NOT EXISTS "ai"."case_prompt_setting" (
	"id" uuid NOT NULL DEFAULT gen_random_uuid() ,
	"name" text NULL  ,
	"prompt" text NULL  ,
	CONSTRAINT "case_prompt_setting_pkey" PRIMARY KEY (id) 
);

ALTER TABLE IF EXISTS "ai"."case_prompt_setting" OWNER TO postgres;

GRANT SELECT ON TABLE "ai"."case_prompt_setting" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."case_prompt_setting" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."case_prompt_setting" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."case_prompt_setting" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."case_prompt_setting" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."case_prompt_setting" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."case_prompt_setting" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."case_prompt_setting" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "ai"."case_prompt_setting" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "ai"."case_prompt_setting" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "ai"."case_prompt_setting" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."case_prompt_setting" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."case_prompt_setting" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."case_prompt_setting" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."case_prompt_setting" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "ai"."case_prompt_setting" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "ai"."case_prompt_setting" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "ai"."case_prompt_setting" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."case_prompt_setting" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."case_prompt_setting" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."case_prompt_setting" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."case_prompt_setting" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "ai"."case_prompt_setting" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "ai"."case_prompt_setting" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "ai"."case_prompt_setting" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."case_prompt_setting" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."case_prompt_setting" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."case_prompt_setting" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."case_prompt_setting" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "ai"."case_prompt_setting" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "ai"."case_prompt_setting" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "ai"."case_prompt_setting" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."case_prompt_setting" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."case_prompt_setting" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."case_prompt_setting" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."case_prompt_setting" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "ai"."case_prompt_setting" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "ai"."case_prompt_setting" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "ai"."case_prompt_setting" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."case_prompt_setting" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "ai"."case_prompt_setting"."id"  IS NULL;


COMMENT ON COLUMN "ai"."case_prompt_setting"."name"  IS NULL;


COMMENT ON COLUMN "ai"."case_prompt_setting"."prompt"  IS NULL;

COMMENT ON CONSTRAINT "case_prompt_setting_pkey" ON "ai"."case_prompt_setting" IS NULL;

COMMENT ON TABLE "ai"."case_prompt_setting"  IS NULL;

--- END CREATE TABLE "ai"."case_prompt_setting" ---

--- BEGIN CREATE TABLE "ai"."contents" ---

CREATE TABLE IF NOT EXISTS "ai"."contents" (
	"id" uuid NOT NULL DEFAULT uuid_generate_v4() ,
	"conversation_id" uuid NOT NULL  ,
	"user_id" uuid NOT NULL DEFAULT auth.uid() ,
	"role" role_content NOT NULL  ,
	"content" text NOT NULL  ,
	"created_at" timestamptz NOT NULL DEFAULT timezone('utc'::text, now()) ,
	"tool_call_id" varchar(100) NULL  ,
	"tool_name" varchar(100) NULL  ,
	"metadata" jsonb NULL  ,
	CONSTRAINT "contents_conversation_id_fkey" FOREIGN KEY (conversation_id) REFERENCES ai.conversations(id) ON DELETE CASCADE ,
	CONSTRAINT "contents_pkey" PRIMARY KEY (id) ,
	CONSTRAINT "contents_user_id_fkey" FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE 
);

ALTER TABLE IF EXISTS "ai"."contents" OWNER TO postgres;

GRANT SELECT ON TABLE "ai"."contents" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."contents" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."contents" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."contents" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."contents" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."contents" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."contents" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."contents" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "ai"."contents" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "ai"."contents" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "ai"."contents" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."contents" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."contents" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."contents" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."contents" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "ai"."contents" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "ai"."contents" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "ai"."contents" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."contents" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."contents" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."contents" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."contents" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "ai"."contents" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "ai"."contents" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "ai"."contents" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."contents" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."contents" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."contents" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."contents" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "ai"."contents" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "ai"."contents" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "ai"."contents" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."contents" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."contents" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."contents" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."contents" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "ai"."contents" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "ai"."contents" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "ai"."contents" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."contents" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "ai"."contents"."id"  IS NULL;


COMMENT ON COLUMN "ai"."contents"."conversation_id"  IS NULL;


COMMENT ON COLUMN "ai"."contents"."user_id"  IS NULL;


COMMENT ON COLUMN "ai"."contents"."role"  IS NULL;


COMMENT ON COLUMN "ai"."contents"."content"  IS NULL;


COMMENT ON COLUMN "ai"."contents"."created_at"  IS NULL;


COMMENT ON COLUMN "ai"."contents"."tool_call_id"  IS NULL;


COMMENT ON COLUMN "ai"."contents"."tool_name"  IS NULL;


COMMENT ON COLUMN "ai"."contents"."metadata"  IS NULL;

COMMENT ON CONSTRAINT "contents_conversation_id_fkey" ON "ai"."contents" IS NULL;


COMMENT ON CONSTRAINT "contents_pkey" ON "ai"."contents" IS NULL;


COMMENT ON CONSTRAINT "contents_user_id_fkey" ON "ai"."contents" IS NULL;

COMMENT ON TABLE "ai"."contents"  IS NULL;

--- END CREATE TABLE "ai"."contents" ---

--- BEGIN CREATE TABLE "ai"."profiles" ---

CREATE TABLE IF NOT EXISTS "ai"."profiles" (
	"id" uuid NOT NULL  ,
	"username" varchar(50) NULL  ,
	"first_name" varchar(50) NULL  ,
	"last_name" varchar(50) NULL  ,
	"avatar" varchar(255) NULL  ,
	"extra_data" jsonb NULL  ,
	"created_at" timestamptz NOT NULL DEFAULT timezone('utc'::text, now()) ,
	"updated_at" timestamptz NOT NULL DEFAULT timezone('utc'::text, now()) ,
	CONSTRAINT "profiles_id_fkey" FOREIGN KEY (id) REFERENCES auth.users(id) ON DELETE CASCADE ,
	CONSTRAINT "profiles_pkey" PRIMARY KEY (id) ,
	CONSTRAINT "profiles_username_key" UNIQUE (username) 
);

ALTER TABLE IF EXISTS "ai"."profiles" OWNER TO postgres;

GRANT SELECT ON TABLE "ai"."profiles" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."profiles" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."profiles" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."profiles" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."profiles" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."profiles" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."profiles" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."profiles" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "ai"."profiles" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "ai"."profiles" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "ai"."profiles" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."profiles" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."profiles" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."profiles" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."profiles" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "ai"."profiles" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "ai"."profiles" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "ai"."profiles" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."profiles" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."profiles" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."profiles" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."profiles" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "ai"."profiles" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "ai"."profiles" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "ai"."profiles" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."profiles" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."profiles" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."profiles" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."profiles" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "ai"."profiles" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "ai"."profiles" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "ai"."profiles" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."profiles" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "ai"."profiles" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "ai"."profiles" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "ai"."profiles" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "ai"."profiles" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "ai"."profiles" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "ai"."profiles" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "ai"."profiles" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "ai"."profiles"."id"  IS NULL;


COMMENT ON COLUMN "ai"."profiles"."username"  IS NULL;


COMMENT ON COLUMN "ai"."profiles"."first_name"  IS NULL;


COMMENT ON COLUMN "ai"."profiles"."last_name"  IS NULL;


COMMENT ON COLUMN "ai"."profiles"."avatar"  IS NULL;


COMMENT ON COLUMN "ai"."profiles"."extra_data"  IS NULL;


COMMENT ON COLUMN "ai"."profiles"."created_at"  IS NULL;


COMMENT ON COLUMN "ai"."profiles"."updated_at"  IS NULL;

COMMENT ON CONSTRAINT "profiles_id_fkey" ON "ai"."profiles" IS NULL;


COMMENT ON CONSTRAINT "profiles_pkey" ON "ai"."profiles" IS NULL;


COMMENT ON CONSTRAINT "profiles_username_key" ON "ai"."profiles" IS NULL;

COMMENT ON TABLE "ai"."profiles"  IS NULL;

--- END CREATE TABLE "ai"."profiles" ---

--- BEGIN CREATE TABLE "public"."form_case_one_data" ---

CREATE TABLE IF NOT EXISTS "public"."form_case_one_data" (
	"created_at" timestamptz NOT NULL DEFAULT now() ,
	"payload" json NOT NULL DEFAULT '{}'::json ,
	"id" uuid NOT NULL  ,
	CONSTRAINT "form_case_one_data_pkey" PRIMARY KEY (id) 
);

ALTER TABLE IF EXISTS "public"."form_case_one_data" OWNER TO postgres;

GRANT SELECT ON TABLE "public"."form_case_one_data" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_data" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_data" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_data" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_data" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_data" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_data" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_data" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_data" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_data" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_data" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_data" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_data" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_data" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_data" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_data" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_data" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_data" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_data" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_data" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_data" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_data" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_data" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_data" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_data" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_data" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_data" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_data" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_data" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_data" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_data" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_data" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_data" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "public"."form_case_one_data" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "public"."form_case_one_data" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "public"."form_case_one_data" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "public"."form_case_one_data" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "public"."form_case_one_data" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "public"."form_case_one_data" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "public"."form_case_one_data" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "public"."form_case_one_data"."created_at"  IS NULL;


COMMENT ON COLUMN "public"."form_case_one_data"."payload"  IS NULL;


COMMENT ON COLUMN "public"."form_case_one_data"."id"  IS NULL;

COMMENT ON CONSTRAINT "form_case_one_data_pkey" ON "public"."form_case_one_data" IS NULL;

COMMENT ON TABLE "public"."form_case_one_data"  IS NULL;

--- END CREATE TABLE "public"."form_case_one_data" ---

--- BEGIN CREATE TABLE "knowledge"."documents" ---

CREATE TABLE IF NOT EXISTS "knowledge"."documents" (
	"id" int8 NOT NULL DEFAULT nextval('knowledge.documents_id_seq'::regclass) ,
	"content" text NULL  ,
	"embedding" vector NULL  ,
	"namespace" text NULL  ,
	"metadata" jsonb NULL  ,
	CONSTRAINT "documents_pkey" PRIMARY KEY (id) 
);

ALTER TABLE IF EXISTS "knowledge"."documents" OWNER TO postgres;

GRANT SELECT ON TABLE "knowledge"."documents" TO pg_read_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "knowledge"."documents" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "knowledge"."documents" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "knowledge"."documents" TO pg_write_all_data; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "knowledge"."documents" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "knowledge"."documents" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "knowledge"."documents" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "knowledge"."documents" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "knowledge"."documents" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "knowledge"."documents" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "knowledge"."documents" TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "knowledge"."documents" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "knowledge"."documents" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "knowledge"."documents" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "knowledge"."documents" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "knowledge"."documents" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "knowledge"."documents" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "knowledge"."documents" TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "knowledge"."documents" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "knowledge"."documents" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "knowledge"."documents" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "knowledge"."documents" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "knowledge"."documents" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "knowledge"."documents" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "knowledge"."documents" TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "knowledge"."documents" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "knowledge"."documents" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "knowledge"."documents" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "knowledge"."documents" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "knowledge"."documents" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "knowledge"."documents" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "knowledge"."documents" TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "knowledge"."documents" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT INSERT ON TABLE "knowledge"."documents" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT UPDATE ON TABLE "knowledge"."documents" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT DELETE ON TABLE "knowledge"."documents" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRUNCATE ON TABLE "knowledge"."documents" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT REFERENCES ON TABLE "knowledge"."documents" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT TRIGGER ON TABLE "knowledge"."documents" TO supabase_admin; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT SELECT ON TABLE "knowledge"."documents" TO supabase_read_only_user; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON COLUMN "knowledge"."documents"."id"  IS NULL;


COMMENT ON COLUMN "knowledge"."documents"."content"  IS NULL;


COMMENT ON COLUMN "knowledge"."documents"."embedding"  IS NULL;


COMMENT ON COLUMN "knowledge"."documents"."namespace"  IS NULL;


COMMENT ON COLUMN "knowledge"."documents"."metadata"  IS NULL;

COMMENT ON CONSTRAINT "documents_pkey" ON "knowledge"."documents" IS NULL;

COMMENT ON TABLE "knowledge"."documents"  IS NULL;

--- END CREATE TABLE "knowledge"."documents" ---

--- BEGIN CREATE FUNCTION "public"."update_updated_at_column"() ---

CREATE OR REPLACE FUNCTION public.update_updated_at_column()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$function$
;
ALTER FUNCTION "public"."update_updated_at_column"() OWNER TO postgres;
GRANT EXECUTE ON FUNCTION "public"."update_updated_at_column"() TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT EXECUTE ON FUNCTION "public"."update_updated_at_column"() TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT EXECUTE ON FUNCTION "public"."update_updated_at_column"() TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT EXECUTE ON FUNCTION "public"."update_updated_at_column"() TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON FUNCTION "public"."update_updated_at_column"()  IS NULL;

--- END CREATE FUNCTION "public"."update_updated_at_column"() ---

--- BEGIN CREATE FUNCTION "storage"."search_v2"(text, text, integer, integer, text, text, text, text) ---

CREATE OR REPLACE FUNCTION storage.search_v2(prefix text, bucket_name text, limits integer DEFAULT 100, levels integer DEFAULT 1, start_after text DEFAULT ''::text, sort_order text DEFAULT 'asc'::text, sort_column text DEFAULT 'name'::text, sort_column_after text DEFAULT ''::text)
 RETURNS TABLE(key text, name text, id uuid, updated_at timestamp with time zone, created_at timestamp with time zone, last_accessed_at timestamp with time zone, metadata jsonb)
 LANGUAGE plpgsql
 STABLE
AS $function$
DECLARE
    sort_col text;
    sort_ord text;
    cursor_op text;
    cursor_expr text;
    sort_expr text;
BEGIN
    -- Validate sort_order
    sort_ord := lower(sort_order);
    IF sort_ord NOT IN ('asc', 'desc') THEN
        sort_ord := 'asc';
    END IF;

    -- Determine cursor comparison operator
    IF sort_ord = 'asc' THEN
        cursor_op := '>';
    ELSE
        cursor_op := '<';
    END IF;
    
    sort_col := lower(sort_column);
    -- Validate sort column  
    IF sort_col IN ('updated_at', 'created_at') THEN
        cursor_expr := format(
            '($5 = '''' OR ROW(date_trunc(''milliseconds'', %I), name COLLATE "C") %s ROW(COALESCE(NULLIF($6, '''')::timestamptz, ''epoch''::timestamptz), $5))',
            sort_col, cursor_op
        );
        sort_expr := format(
            'COALESCE(date_trunc(''milliseconds'', %I), ''epoch''::timestamptz) %s, name COLLATE "C" %s',
            sort_col, sort_ord, sort_ord
        );
    ELSE
        cursor_expr := format('($5 = '''' OR name COLLATE "C" %s $5)', cursor_op);
        sort_expr := format('name COLLATE "C" %s', sort_ord);
    END IF;

    RETURN QUERY EXECUTE format(
        $sql$
        SELECT * FROM (
            (
                SELECT
                    split_part(name, '/', $4) AS key,
                    name,
                    NULL::uuid AS id,
                    updated_at,
                    created_at,
                    NULL::timestamptz AS last_accessed_at,
                    NULL::jsonb AS metadata
                FROM storage.prefixes
                WHERE name COLLATE "C" LIKE $1 || '%%'
                    AND bucket_id = $2
                    AND level = $4
                    AND %s
                ORDER BY %s
                LIMIT $3
            )
            UNION ALL
            (
                SELECT
                    split_part(name, '/', $4) AS key,
                    name,
                    id,
                    updated_at,
                    created_at,
                    last_accessed_at,
                    metadata
                FROM storage.objects
                WHERE name COLLATE "C" LIKE $1 || '%%'
                    AND bucket_id = $2
                    AND level = $4
                    AND %s
                ORDER BY %s
                LIMIT $3
            )
        ) obj
        ORDER BY %s
        LIMIT $3
        $sql$,
        cursor_expr,    -- prefixes WHERE
        sort_expr,      -- prefixes ORDER BY
        cursor_expr,    -- objects WHERE
        sort_expr,      -- objects ORDER BY
        sort_expr       -- final ORDER BY
    )
    USING prefix, bucket_name, limits, levels, start_after, sort_column_after;
END;
$function$
;
ALTER FUNCTION "storage"."search_v2"(text, text, integer, integer, text, text, text, text) OWNER TO supabase_storage_admin;

COMMENT ON FUNCTION "storage"."search_v2"(text, text, integer, integer, text, text, text, text)  IS NULL;

--- END CREATE FUNCTION "storage"."search_v2"(text, text, integer, integer, text, text, text, text) ---

--- BEGIN CREATE FUNCTION "storage"."lock_top_prefixes"(text[], text[]) ---

CREATE OR REPLACE FUNCTION storage.lock_top_prefixes(bucket_ids text[], names text[])
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE
    v_bucket text;
    v_top text;
BEGIN
    FOR v_bucket, v_top IN
        SELECT DISTINCT t.bucket_id,
            split_part(t.name, '/', 1) AS top
        FROM unnest(bucket_ids, names) AS t(bucket_id, name)
        WHERE t.name <> ''
        ORDER BY 1, 2
        LOOP
            PERFORM pg_advisory_xact_lock(hashtextextended(v_bucket || '/' || v_top, 0));
        END LOOP;
END;
$function$
;
ALTER FUNCTION "storage"."lock_top_prefixes"(text[], text[]) OWNER TO supabase_storage_admin;

COMMENT ON FUNCTION "storage"."lock_top_prefixes"(text[], text[])  IS NULL;

--- END CREATE FUNCTION "storage"."lock_top_prefixes"(text[], text[]) ---

--- BEGIN CREATE FUNCTION "storage"."delete_leaf_prefixes"(text[], text[]) ---

CREATE OR REPLACE FUNCTION storage.delete_leaf_prefixes(bucket_ids text[], names text[])
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE
    v_rows_deleted integer;
BEGIN
    LOOP
        WITH candidates AS (
            SELECT DISTINCT t.bucket_id,
                unnest(storage.get_prefixes(t.name)) AS name
            FROM unnest(bucket_ids, names) AS t(bucket_id, name)
        ),
        uniq AS (
            SELECT bucket_id,
                   name,
                   storage.get_level(name) AS level
             FROM candidates
             WHERE name <> ''
             GROUP BY bucket_id, name
        ),
        leaf AS (
            SELECT p.bucket_id, p.name, p.level
            FROM storage.prefixes AS p
            JOIN uniq AS u
              ON u.bucket_id = p.bucket_id
                  AND u.name = p.name
                  AND u.level = p.level
            WHERE NOT EXISTS (
                SELECT 1
                FROM storage.objects AS o
                WHERE o.bucket_id = p.bucket_id
                  AND storage.get_level(o.name) = p.level + 1
                  AND o.name COLLATE "C" LIKE p.name || '/%'
            )
            AND NOT EXISTS (
                SELECT 1
                FROM storage.prefixes AS c
                WHERE c.bucket_id = p.bucket_id
                  AND c.level = p.level + 1
                  AND c.name COLLATE "C" LIKE p.name || '/%'
            )
        )
        DELETE FROM storage.prefixes AS p
        USING leaf AS l
        WHERE p.bucket_id = l.bucket_id
          AND p.name = l.name
          AND p.level = l.level;

        GET DIAGNOSTICS v_rows_deleted = ROW_COUNT;
        EXIT WHEN v_rows_deleted = 0;
    END LOOP;
END;
$function$
;
ALTER FUNCTION "storage"."delete_leaf_prefixes"(text[], text[]) OWNER TO supabase_storage_admin;

COMMENT ON FUNCTION "storage"."delete_leaf_prefixes"(text[], text[])  IS NULL;

--- END CREATE FUNCTION "storage"."delete_leaf_prefixes"(text[], text[]) ---

--- BEGIN CREATE FUNCTION "storage"."objects_delete_cleanup"() ---

CREATE OR REPLACE FUNCTION storage.objects_delete_cleanup()
 RETURNS trigger
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE
    v_bucket_ids text[];
    v_names      text[];
BEGIN
    IF current_setting('storage.gc.prefixes', true) = '1' THEN
        RETURN NULL;
    END IF;

    PERFORM set_config('storage.gc.prefixes', '1', true);

    SELECT COALESCE(array_agg(d.bucket_id), '{}'),
           COALESCE(array_agg(d.name), '{}')
    INTO v_bucket_ids, v_names
    FROM deleted AS d
    WHERE d.name <> '';

    PERFORM storage.lock_top_prefixes(v_bucket_ids, v_names);
    PERFORM storage.delete_leaf_prefixes(v_bucket_ids, v_names);

    RETURN NULL;
END;
$function$
;
ALTER FUNCTION "storage"."objects_delete_cleanup"() OWNER TO supabase_storage_admin;

COMMENT ON FUNCTION "storage"."objects_delete_cleanup"()  IS NULL;

--- END CREATE FUNCTION "storage"."objects_delete_cleanup"() ---

--- BEGIN CREATE FUNCTION "storage"."objects_update_cleanup"() ---

CREATE OR REPLACE FUNCTION storage.objects_update_cleanup()
 RETURNS trigger
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE
    -- NEW - OLD (destinations to create prefixes for)
    v_add_bucket_ids text[];
    v_add_names      text[];

    -- OLD - NEW (sources to prune)
    v_src_bucket_ids text[];
    v_src_names      text[];
BEGIN
    IF TG_OP <> 'UPDATE' THEN
        RETURN NULL;
    END IF;

    -- 1) Compute NEW−OLD (added paths) and OLD−NEW (moved-away paths)
    WITH added AS (
        SELECT n.bucket_id, n.name
        FROM new_rows n
        WHERE n.name <> '' AND position('/' in n.name) > 0
        EXCEPT
        SELECT o.bucket_id, o.name FROM old_rows o WHERE o.name <> ''
    ),
    moved AS (
         SELECT o.bucket_id, o.name
         FROM old_rows o
         WHERE o.name <> ''
         EXCEPT
         SELECT n.bucket_id, n.name FROM new_rows n WHERE n.name <> ''
    )
    SELECT
        -- arrays for ADDED (dest) in stable order
        COALESCE( (SELECT array_agg(a.bucket_id ORDER BY a.bucket_id, a.name) FROM added a), '{}' ),
        COALESCE( (SELECT array_agg(a.name      ORDER BY a.bucket_id, a.name) FROM added a), '{}' ),
        -- arrays for MOVED (src) in stable order
        COALESCE( (SELECT array_agg(m.bucket_id ORDER BY m.bucket_id, m.name) FROM moved m), '{}' ),
        COALESCE( (SELECT array_agg(m.name      ORDER BY m.bucket_id, m.name) FROM moved m), '{}' )
    INTO v_add_bucket_ids, v_add_names, v_src_bucket_ids, v_src_names;

    -- Nothing to do?
    IF (array_length(v_add_bucket_ids, 1) IS NULL) AND (array_length(v_src_bucket_ids, 1) IS NULL) THEN
        RETURN NULL;
    END IF;

    -- 2) Take per-(bucket, top) locks: ALL prefixes in consistent global order to prevent deadlocks
    DECLARE
        v_all_bucket_ids text[];
        v_all_names text[];
    BEGIN
        -- Combine source and destination arrays for consistent lock ordering
        v_all_bucket_ids := COALESCE(v_src_bucket_ids, '{}') || COALESCE(v_add_bucket_ids, '{}');
        v_all_names := COALESCE(v_src_names, '{}') || COALESCE(v_add_names, '{}');

        -- Single lock call ensures consistent global ordering across all transactions
        IF array_length(v_all_bucket_ids, 1) IS NOT NULL THEN
            PERFORM storage.lock_top_prefixes(v_all_bucket_ids, v_all_names);
        END IF;
    END;

    -- 3) Create destination prefixes (NEW−OLD) BEFORE pruning sources
    IF array_length(v_add_bucket_ids, 1) IS NOT NULL THEN
        WITH candidates AS (
            SELECT DISTINCT t.bucket_id, unnest(storage.get_prefixes(t.name)) AS name
            FROM unnest(v_add_bucket_ids, v_add_names) AS t(bucket_id, name)
            WHERE name <> ''
        )
        INSERT INTO storage.prefixes (bucket_id, name)
        SELECT c.bucket_id, c.name
        FROM candidates c
        ON CONFLICT DO NOTHING;
    END IF;

    -- 4) Prune source prefixes bottom-up for OLD−NEW
    IF array_length(v_src_bucket_ids, 1) IS NOT NULL THEN
        -- re-entrancy guard so DELETE on prefixes won't recurse
        IF current_setting('storage.gc.prefixes', true) <> '1' THEN
            PERFORM set_config('storage.gc.prefixes', '1', true);
        END IF;

        PERFORM storage.delete_leaf_prefixes(v_src_bucket_ids, v_src_names);
    END IF;

    RETURN NULL;
END;
$function$
;
ALTER FUNCTION "storage"."objects_update_cleanup"() OWNER TO supabase_storage_admin;

COMMENT ON FUNCTION "storage"."objects_update_cleanup"()  IS NULL;

--- END CREATE FUNCTION "storage"."objects_update_cleanup"() ---

--- BEGIN CREATE FUNCTION "storage"."prefixes_delete_cleanup"() ---

CREATE OR REPLACE FUNCTION storage.prefixes_delete_cleanup()
 RETURNS trigger
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE
    v_bucket_ids text[];
    v_names      text[];
BEGIN
    IF current_setting('storage.gc.prefixes', true) = '1' THEN
        RETURN NULL;
    END IF;

    PERFORM set_config('storage.gc.prefixes', '1', true);

    SELECT COALESCE(array_agg(d.bucket_id), '{}'),
           COALESCE(array_agg(d.name), '{}')
    INTO v_bucket_ids, v_names
    FROM deleted AS d
    WHERE d.name <> '';

    PERFORM storage.lock_top_prefixes(v_bucket_ids, v_names);
    PERFORM storage.delete_leaf_prefixes(v_bucket_ids, v_names);

    RETURN NULL;
END;
$function$
;
ALTER FUNCTION "storage"."prefixes_delete_cleanup"() OWNER TO supabase_storage_admin;

COMMENT ON FUNCTION "storage"."prefixes_delete_cleanup"()  IS NULL;

--- END CREATE FUNCTION "storage"."prefixes_delete_cleanup"() ---

--- BEGIN CREATE FUNCTION "public"."match_knowledge"(vector, integer, jsonb) ---

CREATE OR REPLACE FUNCTION public.match_knowledge(query_embedding vector, match_count integer DEFAULT NULL::integer, filter jsonb DEFAULT '{}'::jsonb)
 RETURNS TABLE(id bigint, content text, metadata jsonb, similarity double precision)
 LANGUAGE plpgsql
AS $function$
#variable_conflict use_column
BEGIN
  RETURN QUERY
  SELECT
    id,
    content,
    metadata,
    1 - (knowledge.documents.embedding <=> query_embedding) AS similarity
  FROM knowledge.documents
  WHERE metadata @> filter
  ORDER BY knowledge.documents.embedding <=> query_embedding
  LIMIT match_count;
END;
$function$
;
ALTER FUNCTION "public"."match_knowledge"(vector, integer, jsonb) OWNER TO postgres;
GRANT EXECUTE ON FUNCTION "public"."match_knowledge"(vector, integer, jsonb) TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT EXECUTE ON FUNCTION "public"."match_knowledge"(vector, integer, jsonb) TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT EXECUTE ON FUNCTION "public"."match_knowledge"(vector, integer, jsonb) TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT EXECUTE ON FUNCTION "public"."match_knowledge"(vector, integer, jsonb) TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON FUNCTION "public"."match_knowledge"(vector, integer, jsonb)  IS NULL;

--- END CREATE FUNCTION "public"."match_knowledge"(vector, integer, jsonb) ---

--- BEGIN CREATE FUNCTION "public"."match_knowledge"(vector, integer, double precision, text) ---

CREATE OR REPLACE FUNCTION public.match_knowledge(query_embedding vector, match_count integer DEFAULT 5, match_threshold double precision DEFAULT 0.0, metric text DEFAULT 'cosine'::text)
 RETURNS TABLE(id bigint, content text, metadata jsonb, similarity double precision)
 LANGUAGE sql
 STABLE
AS $function$
  SELECT
    id,
    content,
    metadata,
    CASE
      WHEN metric = 'cosine' THEN 1 - (embedding <=> query_embedding)
      WHEN metric = 'l2' THEN embedding <-> query_embedding
      WHEN metric = 'inner' THEN -(embedding <#> query_embedding)
    END as similarity
  FROM knowledge.documents
  WHERE
    CASE
      WHEN metric = 'cosine' THEN 1 - (embedding <=> query_embedding) > match_threshold
      WHEN metric = 'l2' THEN embedding <-> query_embedding < match_threshold
      WHEN metric = 'inner' THEN -(embedding <#> query_embedding) > match_threshold
    END
  ORDER BY
    CASE
      WHEN metric = 'cosine' THEN embedding <=> query_embedding
      WHEN metric = 'l2' THEN embedding <-> query_embedding
      WHEN metric = 'inner' THEN embedding <#> query_embedding
    END
  LIMIT match_count;
$function$
;
ALTER FUNCTION "public"."match_knowledge"(vector, integer, double precision, text) OWNER TO postgres;
GRANT EXECUTE ON FUNCTION "public"."match_knowledge"(vector, integer, double precision, text) TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT EXECUTE ON FUNCTION "public"."match_knowledge"(vector, integer, double precision, text) TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT EXECUTE ON FUNCTION "public"."match_knowledge"(vector, integer, double precision, text) TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT EXECUTE ON FUNCTION "public"."match_knowledge"(vector, integer, double precision, text) TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON FUNCTION "public"."match_knowledge"(vector, integer, double precision, text)  IS NULL;

--- END CREATE FUNCTION "public"."match_knowledge"(vector, integer, double precision, text) ---

--- BEGIN CREATE FUNCTION "knowledge"."match_knowledge"(vector, integer, jsonb) ---

CREATE OR REPLACE FUNCTION knowledge.match_knowledge(query_embedding vector, match_count integer DEFAULT NULL::integer, filter jsonb DEFAULT '{}'::jsonb)
 RETURNS TABLE(id bigint, content text, metadata jsonb, similarity double precision)
 LANGUAGE plpgsql
AS $function$
#variable_conflict use_column
BEGIN
  RETURN QUERY
  SELECT
    id,
    content,
    metadata,
    1 - (knowledge.documents.embedding <=> query_embedding) AS similarity
  FROM knowledge.documents
  WHERE metadata @> filter
  ORDER BY knowledge.documents.embedding <=> query_embedding
  LIMIT match_count;
END;
$function$
;
ALTER FUNCTION "knowledge"."match_knowledge"(vector, integer, jsonb) OWNER TO postgres;
GRANT EXECUTE ON FUNCTION "knowledge"."match_knowledge"(vector, integer, jsonb) TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT EXECUTE ON FUNCTION "knowledge"."match_knowledge"(vector, integer, jsonb) TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT EXECUTE ON FUNCTION "knowledge"."match_knowledge"(vector, integer, jsonb) TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT EXECUTE ON FUNCTION "knowledge"."match_knowledge"(vector, integer, jsonb) TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON FUNCTION "knowledge"."match_knowledge"(vector, integer, jsonb)  IS NULL;

--- END CREATE FUNCTION "knowledge"."match_knowledge"(vector, integer, jsonb) ---

--- BEGIN CREATE FUNCTION "knowledge"."match_knowledge"(vector, integer, double precision, text) ---

CREATE OR REPLACE FUNCTION knowledge.match_knowledge(query_embedding vector, match_count integer DEFAULT 5, match_threshold double precision DEFAULT 0.0, metric text DEFAULT 'cosine'::text)
 RETURNS TABLE(id bigint, content text, metadata jsonb, similarity double precision)
 LANGUAGE sql
 STABLE
AS $function$
  SELECT
    id,
    content,
    metadata,
    CASE
      WHEN metric = 'cosine' THEN 1 - (embedding <=> query_embedding)
      WHEN metric = 'l2' THEN embedding <-> query_embedding
      WHEN metric = 'inner' THEN -(embedding <#> query_embedding)
    END as similarity
  FROM knowledge.documents
  WHERE
    CASE
      WHEN metric = 'cosine' THEN 1 - (embedding <=> query_embedding) > match_threshold
      WHEN metric = 'l2' THEN embedding <-> query_embedding < match_threshold
      WHEN metric = 'inner' THEN -(embedding <#> query_embedding) > match_threshold
    END
  ORDER BY
    CASE
      WHEN metric = 'cosine' THEN embedding <=> query_embedding
      WHEN metric = 'l2' THEN embedding <-> query_embedding
      WHEN metric = 'inner' THEN embedding <#> query_embedding
    END
  LIMIT match_count;
$function$
;
ALTER FUNCTION "knowledge"."match_knowledge"(vector, integer, double precision, text) OWNER TO postgres;
GRANT EXECUTE ON FUNCTION "knowledge"."match_knowledge"(vector, integer, double precision, text) TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT EXECUTE ON FUNCTION "knowledge"."match_knowledge"(vector, integer, double precision, text) TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT EXECUTE ON FUNCTION "knowledge"."match_knowledge"(vector, integer, double precision, text) TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT EXECUTE ON FUNCTION "knowledge"."match_knowledge"(vector, integer, double precision, text) TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON FUNCTION "knowledge"."match_knowledge"(vector, integer, double precision, text)  IS NULL;

--- END CREATE FUNCTION "knowledge"."match_knowledge"(vector, integer, double precision, text) ---

--- BEGIN CREATE FUNCTION "public"."handle_updated_at"() ---

CREATE OR REPLACE FUNCTION public.handle_updated_at()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
BEGIN
    NEW.updated_at = timezone('utc'::text, now());
    RETURN NEW;
END;
$function$
;
ALTER FUNCTION "public"."handle_updated_at"() OWNER TO postgres;
GRANT EXECUTE ON FUNCTION "public"."handle_updated_at"() TO postgres; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT EXECUTE ON FUNCTION "public"."handle_updated_at"() TO anon; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT EXECUTE ON FUNCTION "public"."handle_updated_at"() TO authenticated; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!
GRANT EXECUTE ON FUNCTION "public"."handle_updated_at"() TO service_role; --WARN: Grant\Revoke privileges to a role can occure in a sql error during execution if role is missing to the target database!

COMMENT ON FUNCTION "public"."handle_updated_at"()  IS NULL;

--- END CREATE FUNCTION "public"."handle_updated_at"() ---

--- BEGIN CREATE FUNCTION "storage"."get_level"(text) ---

CREATE OR REPLACE FUNCTION storage.get_level(name text)
 RETURNS integer
 LANGUAGE sql
 IMMUTABLE STRICT
AS $function$
SELECT array_length(string_to_array("name", '/'), 1);
$function$
;
ALTER FUNCTION "storage"."get_level"(text) OWNER TO supabase_storage_admin;

COMMENT ON FUNCTION "storage"."get_level"(text)  IS NULL;

--- END CREATE FUNCTION "storage"."get_level"(text) ---

--- BEGIN CREATE FUNCTION "storage"."get_prefix"(text) ---

CREATE OR REPLACE FUNCTION storage.get_prefix(name text)
 RETURNS text
 LANGUAGE sql
 IMMUTABLE STRICT
AS $function$
SELECT
    CASE WHEN strpos("name", '/') > 0 THEN
             regexp_replace("name", '[\/]{1}[^\/]+\/?$', '')
         ELSE
             ''
        END;
$function$
;
ALTER FUNCTION "storage"."get_prefix"(text) OWNER TO supabase_storage_admin;

COMMENT ON FUNCTION "storage"."get_prefix"(text)  IS NULL;

--- END CREATE FUNCTION "storage"."get_prefix"(text) ---

--- BEGIN CREATE FUNCTION "storage"."get_prefixes"(text) ---

CREATE OR REPLACE FUNCTION storage.get_prefixes(name text)
 RETURNS text[]
 LANGUAGE plpgsql
 IMMUTABLE STRICT
AS $function$
DECLARE
    parts text[];
    prefixes text[];
    prefix text;
BEGIN
    -- Split the name into parts by '/'
    parts := string_to_array("name", '/');
    prefixes := '{}';

    -- Construct the prefixes, stopping one level below the last part
    FOR i IN 1..array_length(parts, 1) - 1 LOOP
            prefix := array_to_string(parts[1:i], '/');
            prefixes := array_append(prefixes, prefix);
    END LOOP;

    RETURN prefixes;
END;
$function$
;
ALTER FUNCTION "storage"."get_prefixes"(text) OWNER TO supabase_storage_admin;

COMMENT ON FUNCTION "storage"."get_prefixes"(text)  IS NULL;

--- END CREATE FUNCTION "storage"."get_prefixes"(text) ---

--- BEGIN CREATE FUNCTION "storage"."add_prefixes"(text, text) ---

CREATE OR REPLACE FUNCTION storage.add_prefixes(_bucket_id text, _name text)
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE
    prefixes text[];
BEGIN
    prefixes := "storage"."get_prefixes"("_name");

    IF array_length(prefixes, 1) > 0 THEN
        INSERT INTO storage.prefixes (name, bucket_id)
        SELECT UNNEST(prefixes) as name, "_bucket_id" ON CONFLICT DO NOTHING;
    END IF;
END;
$function$
;
ALTER FUNCTION "storage"."add_prefixes"(text, text) OWNER TO supabase_storage_admin;

COMMENT ON FUNCTION "storage"."add_prefixes"(text, text)  IS NULL;

--- END CREATE FUNCTION "storage"."add_prefixes"(text, text) ---

--- BEGIN CREATE FUNCTION "storage"."delete_prefix"(text, text) ---

CREATE OR REPLACE FUNCTION storage.delete_prefix(_bucket_id text, _name text)
 RETURNS boolean
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
BEGIN
    -- Check if we can delete the prefix
    IF EXISTS(
        SELECT FROM "storage"."prefixes"
        WHERE "prefixes"."bucket_id" = "_bucket_id"
          AND level = "storage"."get_level"("_name") + 1
          AND "prefixes"."name" COLLATE "C" LIKE "_name" || '/%'
        LIMIT 1
    )
    OR EXISTS(
        SELECT FROM "storage"."objects"
        WHERE "objects"."bucket_id" = "_bucket_id"
          AND "storage"."get_level"("objects"."name") = "storage"."get_level"("_name") + 1
          AND "objects"."name" COLLATE "C" LIKE "_name" || '/%'
        LIMIT 1
    ) THEN
    -- There are sub-objects, skip deletion
    RETURN false;
    ELSE
        DELETE FROM "storage"."prefixes"
        WHERE "prefixes"."bucket_id" = "_bucket_id"
          AND level = "storage"."get_level"("_name")
          AND "prefixes"."name" = "_name";
        RETURN true;
    END IF;
END;
$function$
;
ALTER FUNCTION "storage"."delete_prefix"(text, text) OWNER TO supabase_storage_admin;

COMMENT ON FUNCTION "storage"."delete_prefix"(text, text)  IS NULL;

--- END CREATE FUNCTION "storage"."delete_prefix"(text, text) ---

--- BEGIN CREATE FUNCTION "storage"."prefixes_insert_trigger"() ---

CREATE OR REPLACE FUNCTION storage.prefixes_insert_trigger()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
BEGIN
    PERFORM "storage"."add_prefixes"(NEW."bucket_id", NEW."name");
    RETURN NEW;
END;
$function$
;
ALTER FUNCTION "storage"."prefixes_insert_trigger"() OWNER TO supabase_storage_admin;

COMMENT ON FUNCTION "storage"."prefixes_insert_trigger"()  IS NULL;

--- END CREATE FUNCTION "storage"."prefixes_insert_trigger"() ---

--- BEGIN CREATE FUNCTION "storage"."objects_insert_prefix_trigger"() ---

CREATE OR REPLACE FUNCTION storage.objects_insert_prefix_trigger()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
BEGIN
    PERFORM "storage"."add_prefixes"(NEW."bucket_id", NEW."name");
    NEW.level := "storage"."get_level"(NEW."name");

    RETURN NEW;
END;
$function$
;
ALTER FUNCTION "storage"."objects_insert_prefix_trigger"() OWNER TO supabase_storage_admin;

COMMENT ON FUNCTION "storage"."objects_insert_prefix_trigger"()  IS NULL;

--- END CREATE FUNCTION "storage"."objects_insert_prefix_trigger"() ---

--- BEGIN CREATE FUNCTION "storage"."delete_prefix_hierarchy_trigger"() ---

CREATE OR REPLACE FUNCTION storage.delete_prefix_hierarchy_trigger()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
DECLARE
    prefix text;
BEGIN
    prefix := "storage"."get_prefix"(OLD."name");

    IF coalesce(prefix, '') != '' THEN
        PERFORM "storage"."delete_prefix"(OLD."bucket_id", prefix);
    END IF;

    RETURN OLD;
END;
$function$
;
ALTER FUNCTION "storage"."delete_prefix_hierarchy_trigger"() OWNER TO supabase_storage_admin;

COMMENT ON FUNCTION "storage"."delete_prefix_hierarchy_trigger"()  IS NULL;

--- END CREATE FUNCTION "storage"."delete_prefix_hierarchy_trigger"() ---

--- BEGIN CREATE FUNCTION "storage"."search_v1_optimised"(text, text, integer, integer, integer, text, text, text) ---

CREATE OR REPLACE FUNCTION storage.search_v1_optimised(prefix text, bucketname text, limits integer DEFAULT 100, levels integer DEFAULT 1, offsets integer DEFAULT 0, search text DEFAULT ''::text, sortcolumn text DEFAULT 'name'::text, sortorder text DEFAULT 'asc'::text)
 RETURNS TABLE(name text, id uuid, updated_at timestamp with time zone, created_at timestamp with time zone, last_accessed_at timestamp with time zone, metadata jsonb)
 LANGUAGE plpgsql
 STABLE
AS $function$
declare
    v_order_by text;
    v_sort_order text;
begin
    case
        when sortcolumn = 'name' then
            v_order_by = 'name';
        when sortcolumn = 'updated_at' then
            v_order_by = 'updated_at';
        when sortcolumn = 'created_at' then
            v_order_by = 'created_at';
        when sortcolumn = 'last_accessed_at' then
            v_order_by = 'last_accessed_at';
        else
            v_order_by = 'name';
        end case;

    case
        when sortorder = 'asc' then
            v_sort_order = 'asc';
        when sortorder = 'desc' then
            v_sort_order = 'desc';
        else
            v_sort_order = 'asc';
        end case;

    v_order_by = v_order_by || ' ' || v_sort_order;

    return query execute
        'with folders as (
           select (string_to_array(name, ''/''))[level] as name
           from storage.prefixes
             where lower(prefixes.name) like lower($2 || $3) || ''%''
               and bucket_id = $4
               and level = $1
           order by name ' || v_sort_order || '
     )
     (select name,
            null as id,
            null as updated_at,
            null as created_at,
            null as last_accessed_at,
            null as metadata from folders)
     union all
     (select path_tokens[level] as "name",
            id,
            updated_at,
            created_at,
            last_accessed_at,
            metadata
     from storage.objects
     where lower(objects.name) like lower($2 || $3) || ''%''
       and bucket_id = $4
       and level = $1
     order by ' || v_order_by || ')
     limit $5
     offset $6' using levels, prefix, search, bucketname, limits, offsets;
end;
$function$
;
ALTER FUNCTION "storage"."search_v1_optimised"(text, text, integer, integer, integer, text, text, text) OWNER TO supabase_storage_admin;

COMMENT ON FUNCTION "storage"."search_v1_optimised"(text, text, integer, integer, integer, text, text, text)  IS NULL;

--- END CREATE FUNCTION "storage"."search_v1_optimised"(text, text, integer, integer, integer, text, text, text) ---

--- BEGIN CREATE FUNCTION "storage"."search_legacy_v1"(text, text, integer, integer, integer, text, text, text) ---

CREATE OR REPLACE FUNCTION storage.search_legacy_v1(prefix text, bucketname text, limits integer DEFAULT 100, levels integer DEFAULT 1, offsets integer DEFAULT 0, search text DEFAULT ''::text, sortcolumn text DEFAULT 'name'::text, sortorder text DEFAULT 'asc'::text)
 RETURNS TABLE(name text, id uuid, updated_at timestamp with time zone, created_at timestamp with time zone, last_accessed_at timestamp with time zone, metadata jsonb)
 LANGUAGE plpgsql
 STABLE
AS $function$
declare
    v_order_by text;
    v_sort_order text;
begin
    case
        when sortcolumn = 'name' then
            v_order_by = 'name';
        when sortcolumn = 'updated_at' then
            v_order_by = 'updated_at';
        when sortcolumn = 'created_at' then
            v_order_by = 'created_at';
        when sortcolumn = 'last_accessed_at' then
            v_order_by = 'last_accessed_at';
        else
            v_order_by = 'name';
        end case;

    case
        when sortorder = 'asc' then
            v_sort_order = 'asc';
        when sortorder = 'desc' then
            v_sort_order = 'desc';
        else
            v_sort_order = 'asc';
        end case;

    v_order_by = v_order_by || ' ' || v_sort_order;

    return query execute
        'with folders as (
           select path_tokens[$1] as folder
           from storage.objects
             where objects.name ilike $2 || $3 || ''%''
               and bucket_id = $4
               and array_length(objects.path_tokens, 1) <> $1
           group by folder
           order by folder ' || v_sort_order || '
     )
     (select folder as "name",
            null as id,
            null as updated_at,
            null as created_at,
            null as last_accessed_at,
            null as metadata from folders)
     union all
     (select path_tokens[$1] as "name",
            id,
            updated_at,
            created_at,
            last_accessed_at,
            metadata
     from storage.objects
     where objects.name ilike $2 || $3 || ''%''
       and bucket_id = $4
       and array_length(objects.path_tokens, 1) = $1
     order by ' || v_order_by || ')
     limit $5
     offset $6' using levels, prefix, search, bucketname, limits, offsets;
end;
$function$
;
ALTER FUNCTION "storage"."search_legacy_v1"(text, text, integer, integer, integer, text, text, text) OWNER TO supabase_storage_admin;

COMMENT ON FUNCTION "storage"."search_legacy_v1"(text, text, integer, integer, integer, text, text, text)  IS NULL;

--- END CREATE FUNCTION "storage"."search_legacy_v1"(text, text, integer, integer, integer, text, text, text) ---

--- BEGIN ALTER FUNCTION "storage"."search"(text, text, integer, integer, integer, text, text, text) ---

DROP FUNCTION IF EXISTS "storage"."search"(text, text, integer, integer, integer, text, text, text);

CREATE OR REPLACE FUNCTION storage.search(prefix text, bucketname text, limits integer DEFAULT 100, levels integer DEFAULT 1, offsets integer DEFAULT 0, search text DEFAULT ''::text, sortcolumn text DEFAULT 'name'::text, sortorder text DEFAULT 'asc'::text)
 RETURNS TABLE(name text, id uuid, updated_at timestamp with time zone, created_at timestamp with time zone, last_accessed_at timestamp with time zone, metadata jsonb)
 LANGUAGE plpgsql
AS $function$
declare
    can_bypass_rls BOOLEAN;
begin
    SELECT rolbypassrls
    INTO can_bypass_rls
    FROM pg_roles
    WHERE rolname = coalesce(nullif(current_setting('role', true), 'none'), current_user);

    IF can_bypass_rls THEN
        RETURN QUERY SELECT * FROM storage.search_v1_optimised(prefix, bucketname, limits, levels, offsets, search, sortcolumn, sortorder);
    ELSE
        RETURN QUERY SELECT * FROM storage.search_legacy_v1(prefix, bucketname, limits, levels, offsets, search, sortcolumn, sortorder);
    END IF;
end;
$function$
;
ALTER FUNCTION "storage"."search"(text, text, integer, integer, integer, text, text, text) OWNER TO supabase_storage_admin;

COMMENT ON FUNCTION "storage"."search"(text, text, integer, integer, integer, text, text, text)  IS NULL;

--- END ALTER FUNCTION "storage"."search"(text, text, integer, integer, integer, text, text, text) ---

--- BEGIN ALTER FUNCTION "storage"."get_size_by_bucket"() ---

DROP FUNCTION IF EXISTS "storage"."get_size_by_bucket"();

CREATE OR REPLACE FUNCTION storage.get_size_by_bucket()
 RETURNS TABLE(size bigint, bucket_id text)
 LANGUAGE plpgsql
 STABLE
AS $function$
BEGIN
    return query
        select sum((metadata->>'size')::bigint) as size, obj.bucket_id
        from "storage".objects as obj
        group by obj.bucket_id;
END
$function$
;
ALTER FUNCTION "storage"."get_size_by_bucket"() OWNER TO supabase_storage_admin;

COMMENT ON FUNCTION "storage"."get_size_by_bucket"()  IS NULL;

--- END ALTER FUNCTION "storage"."get_size_by_bucket"() ---

--- BEGIN ALTER FUNCTION "storage"."foldername"(text) ---

DROP FUNCTION IF EXISTS "storage"."foldername"(text);

CREATE OR REPLACE FUNCTION storage.foldername(name text)
 RETURNS text[]
 LANGUAGE plpgsql
 IMMUTABLE
AS $function$
DECLARE
    _parts text[];
BEGIN
    -- Split on "/" to get path segments
    SELECT string_to_array(name, '/') INTO _parts;
    -- Return everything except the last segment
    RETURN _parts[1 : array_length(_parts,1) - 1];
END
$function$
;
ALTER FUNCTION "storage"."foldername"(text) OWNER TO supabase_storage_admin;

COMMENT ON FUNCTION "storage"."foldername"(text)  IS NULL;

--- END ALTER FUNCTION "storage"."foldername"(text) ---

--- BEGIN ALTER FUNCTION "storage"."extension"(text) ---

DROP FUNCTION IF EXISTS "storage"."extension"(text);

CREATE OR REPLACE FUNCTION storage.extension(name text)
 RETURNS text
 LANGUAGE plpgsql
 IMMUTABLE
AS $function$
DECLARE
    _parts text[];
    _filename text;
BEGIN
    SELECT string_to_array(name, '/') INTO _parts;
    SELECT _parts[array_length(_parts,1)] INTO _filename;
    RETURN reverse(split_part(reverse(_filename), '.', 1));
END
$function$
;
ALTER FUNCTION "storage"."extension"(text) OWNER TO supabase_storage_admin;

COMMENT ON FUNCTION "storage"."extension"(text)  IS NULL;

--- END ALTER FUNCTION "storage"."extension"(text) ---

--- BEGIN CREATE FUNCTION "storage"."objects_update_prefix_trigger"() ---

CREATE OR REPLACE FUNCTION storage.objects_update_prefix_trigger()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
DECLARE
    old_prefixes TEXT[];
BEGIN
    -- Ensure this is an update operation and the name has changed
    IF TG_OP = 'UPDATE' AND (NEW."name" <> OLD."name" OR NEW."bucket_id" <> OLD."bucket_id") THEN
        -- Retrieve old prefixes
        old_prefixes := "storage"."get_prefixes"(OLD."name");

        -- Remove old prefixes that are only used by this object
        WITH all_prefixes as (
            SELECT unnest(old_prefixes) as prefix
        ),
        can_delete_prefixes as (
             SELECT prefix
             FROM all_prefixes
             WHERE NOT EXISTS (
                 SELECT 1 FROM "storage"."objects"
                 WHERE "bucket_id" = OLD."bucket_id"
                   AND "name" <> OLD."name"
                   AND "name" LIKE (prefix || '%')
             )
         )
        DELETE FROM "storage"."prefixes" WHERE name IN (SELECT prefix FROM can_delete_prefixes);

        -- Add new prefixes
        PERFORM "storage"."add_prefixes"(NEW."bucket_id", NEW."name");
    END IF;
    -- Set the new level
    NEW."level" := "storage"."get_level"(NEW."name");

    RETURN NEW;
END;
$function$
;
ALTER FUNCTION "storage"."objects_update_prefix_trigger"() OWNER TO supabase_storage_admin;

COMMENT ON FUNCTION "storage"."objects_update_prefix_trigger"()  IS NULL;

--- END CREATE FUNCTION "storage"."objects_update_prefix_trigger"() ---

--- BEGIN CREATE FUNCTION "storage"."enforce_bucket_name_length"() ---

CREATE OR REPLACE FUNCTION storage.enforce_bucket_name_length()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
begin
    if length(new.name) > 100 then
        raise exception 'bucket name "%" is too long (% characters). Max is 100.', new.name, length(new.name);
    end if;
    return new;
end;
$function$
;
ALTER FUNCTION "storage"."enforce_bucket_name_length"() OWNER TO supabase_storage_admin;

COMMENT ON FUNCTION "storage"."enforce_bucket_name_length"()  IS NULL;

--- END CREATE FUNCTION "storage"."enforce_bucket_name_length"() ---

--- BEGIN SET TRIGGERS FOR "public"."form_case_one_extend_docs" ---

CREATE TRIGGER update_form_case_one_extend_docs_updated_at BEFORE UPDATE ON public.form_case_one_extend_docs FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

COMMENT ON TRIGGER update_form_case_one_extend_docs_updated_at ON "public"."form_case_one_extend_docs" IS NULL;

--- END SET TRIGGERS FOR "public"."form_case_one_extend_docs" ---

--- BEGIN SET TRIGGERS FOR "public"."form_case_one" ---

CREATE TRIGGER update_form_case_one_updated_at BEFORE UPDATE ON public.form_case_one FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

COMMENT ON TRIGGER update_form_case_one_updated_at ON "public"."form_case_one" IS NULL;

--- END SET TRIGGERS FOR "public"."form_case_one" ---

--- BEGIN SET TRIGGERS FOR "storage"."buckets" ---

CREATE TRIGGER enforce_bucket_name_length_trigger BEFORE INSERT OR UPDATE OF name ON storage.buckets FOR EACH ROW EXECUTE FUNCTION storage.enforce_bucket_name_length();

COMMENT ON TRIGGER enforce_bucket_name_length_trigger ON "storage"."buckets" IS NULL;

--- END SET TRIGGERS FOR "storage"."buckets" ---

--- BEGIN SET TRIGGERS FOR "public"."form_case_one_causes_relation" ---

CREATE TRIGGER update_form_case_one_causes_relation_updated_at BEFORE UPDATE ON public.form_case_one_causes_relation FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

COMMENT ON TRIGGER update_form_case_one_causes_relation_updated_at ON "public"."form_case_one_causes_relation" IS NULL;

--- END SET TRIGGERS FOR "public"."form_case_one_causes_relation" ---

--- BEGIN SET TRIGGERS FOR "public"."form_case_one_consequences_relation" ---

CREATE TRIGGER update_form_case_one_consequences_relation_updated_at BEFORE UPDATE ON public.form_case_one_consequences_relation FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

COMMENT ON TRIGGER update_form_case_one_consequences_relation_updated_at ON "public"."form_case_one_consequences_relation" IS NULL;

--- END SET TRIGGERS FOR "public"."form_case_one_consequences_relation" ---

--- BEGIN SET TRIGGERS FOR "public"."form_case_one_sub_consequences_relation" ---

CREATE TRIGGER update_form_case_one_sub_consequences_relation_updated_at BEFORE UPDATE ON public.form_case_one_sub_consequences_relation FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

COMMENT ON TRIGGER update_form_case_one_sub_consequences_relation_updated_at ON "public"."form_case_one_sub_consequences_relation" IS NULL;

--- END SET TRIGGERS FOR "public"."form_case_one_sub_consequences_relation" ---

--- BEGIN SET TRIGGERS FOR "storage"."objects" ---

CREATE TRIGGER objects_delete_cleanup AFTER DELETE ON storage.objects REFERENCING OLD TABLE AS deleted FOR EACH STATEMENT EXECUTE FUNCTION storage.objects_delete_cleanup();

COMMENT ON TRIGGER objects_delete_cleanup ON "storage"."objects" IS NULL;

CREATE TRIGGER objects_insert_create_prefix BEFORE INSERT ON storage.objects FOR EACH ROW EXECUTE FUNCTION storage.objects_insert_prefix_trigger();

COMMENT ON TRIGGER objects_insert_create_prefix ON "storage"."objects" IS NULL;

CREATE TRIGGER objects_update_cleanup AFTER UPDATE ON storage.objects REFERENCING OLD TABLE AS old_rows NEW TABLE AS new_rows FOR EACH STATEMENT EXECUTE FUNCTION storage.objects_update_cleanup();

COMMENT ON TRIGGER objects_update_cleanup ON "storage"."objects" IS NULL;

--- END SET TRIGGERS FOR "storage"."objects" ---

--- BEGIN SET TRIGGERS FOR "public"."form_case_one_sub_consequences_data" ---

CREATE TRIGGER update_form_case_one_sub_consequences_data_updated_at BEFORE UPDATE ON public.form_case_one_sub_consequences_data FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

COMMENT ON TRIGGER update_form_case_one_sub_consequences_data_updated_at ON "public"."form_case_one_sub_consequences_data" IS NULL;

--- END SET TRIGGERS FOR "public"."form_case_one_sub_consequences_data" ---

--- BEGIN SET TRIGGERS FOR "public"."form_case_one_constraints_relation" ---

CREATE TRIGGER update_form_case_one_constraints_relation_updated_at BEFORE UPDATE ON public.form_case_one_constraints_relation FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

COMMENT ON TRIGGER update_form_case_one_constraints_relation_updated_at ON "public"."form_case_one_constraints_relation" IS NULL;

--- END SET TRIGGERS FOR "public"."form_case_one_constraints_relation" ---

--- BEGIN SET TRIGGERS FOR "storage"."prefixes" ---

CREATE TRIGGER prefixes_create_hierarchy BEFORE INSERT ON storage.prefixes FOR EACH ROW WHEN ((pg_trigger_depth() < 1)) EXECUTE FUNCTION storage.prefixes_insert_trigger();

COMMENT ON TRIGGER prefixes_create_hierarchy ON "storage"."prefixes" IS NULL;

CREATE TRIGGER prefixes_delete_cleanup AFTER DELETE ON storage.prefixes REFERENCING OLD TABLE AS deleted FOR EACH STATEMENT EXECUTE FUNCTION storage.prefixes_delete_cleanup();

COMMENT ON TRIGGER prefixes_delete_cleanup ON "storage"."prefixes" IS NULL;

--- END SET TRIGGERS FOR "storage"."prefixes" ---

--- BEGIN SET TRIGGERS FOR "public"."form_case_one_group_comunity_relation" ---

CREATE TRIGGER update_form_case_one_group_comunity_relation_updated_at BEFORE UPDATE ON public.form_case_one_group_comunity_relation FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

COMMENT ON TRIGGER update_form_case_one_group_comunity_relation_updated_at ON "public"."form_case_one_group_comunity_relation" IS NULL;

--- END SET TRIGGERS FOR "public"."form_case_one_group_comunity_relation" ---
