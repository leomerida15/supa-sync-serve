/************************************************************/
/*** SCRIPT AUTHOR: leomerida15 (dimasmerida15@gmail.com) ***/
/***    CREATED ON: 2025-09-25T04:57:58.112Z              ***/
/************************************************************/
DO $$
BEGIN
CREATE SCHEMA IF NOT EXISTS "knowledge";
END $$;

DO $$
BEGIN
CREATE SCHEMA IF NOT EXISTS "ai";
END $$;


-- Crear enum "public"."effect_category" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'effect_category' AND typnamespace = (SELECT oid FROM pg_namespace WHERE nspname = 'public')) THEN
        CREATE TYPE "public"."effect_category" AS ENUM ('HUMAN_DEVELOPMENT', 'URBAN PLANNING_AND_SERVICES', 'SUSTAINABILITY_AND_RISK', 'COEXISTENCE_AND_GOVERNANCE', 'ECONOMIC_MANAGEMENT', 'INSTITUTIONAL_OR_STRUCTURAL_EFFECTS');
    END IF;
END $$;

-- Crear enum "public"."legal_document_type" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'legal_document_type' AND typnamespace = (SELECT oid FROM pg_namespace WHERE nspname = 'public')) THEN
        CREATE TYPE "public"."legal_document_type" AS ENUM ('privacy', 'terms');
    END IF;
END $$;

-- Crear enum "ai"."ai_model" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'ai_model' AND typnamespace = (SELECT oid FROM pg_namespace WHERE nspname = 'ai')) THEN
        CREATE TYPE "ai"."ai_model" AS ENUM ('anthropic/claude-3-haiku', 'anthropic/claude-3-opus', 'anthropic/claude-3.5-sonnet', 'anthropic/claude-opus-4', 'anthropic/claude-sonnet-4', 'deepseek/deepseek-r1', 'deepseek/deepseek-v3.1', 'google/gemini-pro', 'google/gemini-pro-1.5', 'meta-llama/llama-3.1-405b-instruct', 'meta-llama/llama-3.1-70b-instruct', 'meta-llama/llama-3.1-8b-instruct', 'mistralai/mistral-large', 'mistralai/mistral-medium', 'mistralai/mixtral-8x7b-instruct', 'perplexity/llama-3.1-sonar-large-128k-online', 'qwen/qwen-2.5-72b-instruct', 'openai/gpt-5-thinking', 'openai/gpt-5-pro', 'openai/gpt-5-nano', 'openai/gpt-5-mini', 'openai/gpt-5', 'openai/gpt-4.1', 'openai/gpt-4.1-mini', 'openai/gpt-4o', 'openai/gpt-4o-mini', 'openai/gpt-4-turbo', 'openai/gpt-4', 'openai/gpt-3.5-turbo', 'openai/gpt-3.5-turbo-16k');
    END IF;
END $$;

-- Crear enum "ai"."role_content" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'role_content' AND typnamespace = (SELECT oid FROM pg_namespace WHERE nspname = 'ai')) THEN
        CREATE TYPE "ai"."role_content" AS ENUM ('user', 'assistant', 'system', 'tool');
    END IF;
END $$;

-- Crear tabla "ai"."simulations" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'ai' AND table_name = 'simulations') THEN
        CREATE TABLE "ai"."simulations" (
            "id" character varying NOT NULL,
            "created_at" timestamp with time zone NOT NULL DEFAULT now(),
            "case_id" character varying,
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "public"."all_form_files" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'all_form_files') THEN
        CREATE TABLE "public"."all_form_files" (
            "id" uuid NOT NULL DEFAULT gen_random_uuid(),
            "created_at" timestamp with time zone NOT NULL DEFAULT now(),
            "name" text,
            "path" text,
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "public"."form_case_one" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one') THEN
        CREATE TABLE "public"."form_case_one" (
            "id" uuid NOT NULL DEFAULT gen_random_uuid(),
            "description" uuid DEFAULT gen_random_uuid(),
            "time_existence_error_id" uuid,
            "final_goal" uuid DEFAULT gen_random_uuid(),
            "pressure_id" uuid,
            "previous_measures" uuid DEFAULT gen_random_uuid(),
            "created_at" timestamp with time zone DEFAULT now(),
            "updated_at" timestamp with time zone DEFAULT now(),
            "cause_custom" uuid DEFAULT gen_random_uuid(),
            "constraint_custom" uuid DEFAULT gen_random_uuid(),
            "metadata" jsonb,
            "name" text,
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "public"."form_case_one_causes_relation" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_causes_relation') THEN
        CREATE TABLE "public"."form_case_one_causes_relation" (
            "id" uuid NOT NULL DEFAULT gen_random_uuid(),
            "form_case_one_id" uuid NOT NULL,
            "form_case_one_cause_id" uuid NOT NULL,
            "is_checked" boolean DEFAULT false,
            "created_at" timestamp with time zone DEFAULT now(),
            "updated_at" timestamp with time zone DEFAULT now(),
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "public"."form_case_one_pressure" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_pressure') THEN
        CREATE TABLE "public"."form_case_one_pressure" (
            "id" uuid NOT NULL DEFAULT gen_random_uuid(),
            "created_at" timestamp with time zone NOT NULL DEFAULT now(),
            "name" text NOT NULL,
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "public"."form_case_one_consequences_relation" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_consequences_relation') THEN
        CREATE TABLE "public"."form_case_one_consequences_relation" (
            "id" uuid NOT NULL DEFAULT gen_random_uuid(),
            "form_case_one_id" uuid NOT NULL,
            "form_case_one_consequence_id" uuid NOT NULL,
            "created_at" timestamp with time zone DEFAULT now(),
            "updated_at" timestamp with time zone DEFAULT now(),
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "public"."form_case_one_sub_consequences_relation" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_sub_consequences_relation') THEN
        CREATE TABLE "public"."form_case_one_sub_consequences_relation" (
            "id" uuid NOT NULL DEFAULT gen_random_uuid(),
            "form_case_one_id" uuid NOT NULL,
            "form_case_one_sub_consequence_id" uuid NOT NULL,
            "created_at" timestamp with time zone DEFAULT now(),
            "updated_at" timestamp with time zone DEFAULT now(),
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "public"."form_case_one_sub_consequences_data" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_sub_consequences_data') THEN
        CREATE TABLE "public"."form_case_one_sub_consequences_data" (
            "id" uuid NOT NULL DEFAULT gen_random_uuid(),
            "form_case_one_id" uuid NOT NULL,
            "form_case_one_consequence_id" uuid NOT NULL,
            "form_case_one_sub_consequence_id" uuid NOT NULL,
            "content" text,
            "created_at" timestamp with time zone DEFAULT now(),
            "updated_at" timestamp with time zone DEFAULT now(),
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "public"."form_case_one_constraints_relation" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_constraints_relation') THEN
        CREATE TABLE "public"."form_case_one_constraints_relation" (
            "id" uuid NOT NULL DEFAULT gen_random_uuid(),
            "form_case_one_id" uuid NOT NULL,
            "form_case_one_constraint_id" uuid NOT NULL,
            "created_at" timestamp with time zone DEFAULT now(),
            "updated_at" timestamp with time zone DEFAULT now(),
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "public"."form_case_one_group_comunity_relation" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_group_comunity_relation') THEN
        CREATE TABLE "public"."form_case_one_group_comunity_relation" (
            "id" uuid NOT NULL DEFAULT gen_random_uuid(),
            "form_case_one_id" uuid NOT NULL,
            "group_comunity_id" uuid NOT NULL,
            "created_at" timestamp with time zone DEFAULT now(),
            "updated_at" timestamp with time zone DEFAULT now(),
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "public"."form_case_one_all_form_files" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_all_form_files') THEN
        CREATE TABLE "public"."form_case_one_all_form_files" (
            "id" bigint NOT NULL,
            "created_at" timestamp with time zone NOT NULL DEFAULT now(),
            "form_case_one_id" uuid DEFAULT gen_random_uuid(),
            "all_form_files_id" uuid DEFAULT gen_random_uuid(),
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "public"."form_case_one_extend_docs" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_extend_docs') THEN
        CREATE TABLE "public"."form_case_one_extend_docs" (
            "id" uuid NOT NULL DEFAULT gen_random_uuid(),
            "name" text NOT NULL,
            "created_at" timestamp with time zone DEFAULT now(),
            "updated_at" timestamp with time zone DEFAULT now(),
            "path" text NOT NULL,
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "public"."form_case_two_actors_groups_values" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_actors_groups_values') THEN
        CREATE TABLE "public"."form_case_two_actors_groups_values" (
            "id" uuid NOT NULL DEFAULT gen_random_uuid(),
            "created_at" timestamp with time zone NOT NULL DEFAULT now(),
            "name" text NOT NULL,
            "actor_group_id" uuid NOT NULL DEFAULT gen_random_uuid(),
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "public"."form_case_one_consequences" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_consequences') THEN
        CREATE TABLE "public"."form_case_one_consequences" (
            "id" uuid NOT NULL DEFAULT gen_random_uuid(),
            "name" text NOT NULL,
            "created_at" timestamp with time zone NOT NULL DEFAULT now(),
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "public"."form_case_one_time_existence_error" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_time_existence_error') THEN
        CREATE TABLE "public"."form_case_one_time_existence_error" (
            "id" uuid NOT NULL DEFAULT gen_random_uuid(),
            "created_at" timestamp with time zone NOT NULL DEFAULT now(),
            "name" text NOT NULL,
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "public"."form_case_two_actors_groups" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_actors_groups') THEN
        CREATE TABLE "public"."form_case_two_actors_groups" (
            "id" uuid NOT NULL DEFAULT gen_random_uuid(),
            "created_at" timestamp with time zone NOT NULL DEFAULT now(),
            "name" text NOT NULL,
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "public"."extraction_errors" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'extraction_errors') THEN
        CREATE TABLE "public"."extraction_errors" (
            "id" SERIAL NOT NULL,
            "document_id" uuid NOT NULL,
            "file_name" text NOT NULL,
            "error_message" text NOT NULL,
            "namespace" text,
            "created_at" timestamp with time zone DEFAULT now(),
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "public"."form_case_one_causes" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_causes') THEN
        CREATE TABLE "public"."form_case_one_causes" (
            "id" uuid NOT NULL DEFAULT gen_random_uuid(),
            "created_at" timestamp with time zone NOT NULL DEFAULT now(),
            "group" text NOT NULL,
            "value" text NOT NULL,
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "public"."group_comunity" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'group_comunity') THEN
        CREATE TABLE "public"."group_comunity" (
            "created_at" timestamp with time zone NOT NULL DEFAULT now(),
            "name" text NOT NULL,
            "id" uuid NOT NULL DEFAULT gen_random_uuid(),
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "public"."form_case_two_extended_docs" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_extended_docs') THEN
        CREATE TABLE "public"."form_case_two_extended_docs" (
            "id" uuid NOT NULL DEFAULT gen_random_uuid(),
            "created_at" timestamp with time zone NOT NULL DEFAULT now(),
            "name" text NOT NULL,
            "path" text NOT NULL,
            "updated_at" timestamp with time zone,
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "public"."form_case_two_target_population_relation" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_target_population_relation') THEN
        CREATE TABLE "public"."form_case_two_target_population_relation" (
            "id" uuid NOT NULL DEFAULT gen_random_uuid(),
            "created_at" timestamp with time zone NOT NULL DEFAULT now(),
            "form_case_two_id" uuid NOT NULL DEFAULT gen_random_uuid(),
            "form_case_two_target_population_id" uuid NOT NULL DEFAULT gen_random_uuid(),
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "public"."form_case_two_policy_objective_relation" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_policy_objective_relation') THEN
        CREATE TABLE "public"."form_case_two_policy_objective_relation" (
            "id" uuid NOT NULL DEFAULT gen_random_uuid(),
            "created_at" timestamp with time zone NOT NULL DEFAULT now(),
            "form_case_two_id" uuid DEFAULT gen_random_uuid(),
            "form_case_two_policy_sub_objective_id" uuid NOT NULL DEFAULT gen_random_uuid(),
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "public"."form_case_two_constraints_relation" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_constraints_relation') THEN
        CREATE TABLE "public"."form_case_two_constraints_relation" (
            "id" bigint NOT NULL,
            "created_at" timestamp with time zone NOT NULL DEFAULT now(),
            "form_case_two_id" uuid NOT NULL DEFAULT gen_random_uuid(),
            "form_case_two_constraints_id" uuid NOT NULL DEFAULT gen_random_uuid(),
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "ai"."a2a_report_files" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'ai' AND table_name = 'a2a_report_files') THEN
        CREATE TABLE "ai"."a2a_report_files" (
            "id" uuid NOT NULL DEFAULT gen_random_uuid(),
            "public_url" text NOT NULL,
            "object_path" text NOT NULL,
            "object_name" text NOT NULL,
            "agent_role" text NOT NULL,
            "created_at" timestamp with time zone NOT NULL DEFAULT now(),
            "case_id" uuid,
            "agent_name" character varying(100),
            "identifier" text,
            "flow" text,
            "simulation_id" character varying,
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "public"."form_case_two_target_population" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_target_population') THEN
        CREATE TABLE "public"."form_case_two_target_population" (
            "id" uuid NOT NULL DEFAULT gen_random_uuid(),
            "created_at" timestamp with time zone NOT NULL DEFAULT now(),
            "name" text NOT NULL,
            "group" text NOT NULL,
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "public"."form_case_two_financing_options" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_financing_options') THEN
        CREATE TABLE "public"."form_case_two_financing_options" (
            "id" uuid NOT NULL DEFAULT gen_random_uuid(),
            "created_at" timestamp with time zone NOT NULL DEFAULT now(),
            "name" text NOT NULL,
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "public"."legal_documents" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'legal_documents') THEN
        CREATE TABLE "public"."legal_documents" (
            "id" bigint NOT NULL,
            "created_at" timestamp with time zone NOT NULL DEFAULT now(),
            "type" legal_document_type NOT NULL,
            "language" character varying NOT NULL,
            "version" bigint NOT NULL,
            "main_title" character varying NOT NULL,
            "content" text NOT NULL,
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "public"."form_case_one_constraints" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_constraints') THEN
        CREATE TABLE "public"."form_case_one_constraints" (
            "id" uuid NOT NULL DEFAULT gen_random_uuid(),
            "created_at" timestamp with time zone NOT NULL DEFAULT now(),
            "name" text NOT NULL,
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "public"."form_case_two_locations" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_locations') THEN
        CREATE TABLE "public"."form_case_two_locations" (
            "id" uuid NOT NULL DEFAULT gen_random_uuid(),
            "created_at" timestamp with time zone NOT NULL DEFAULT now(),
            "address" text NOT NULL,
            "lat" double precision NOT NULL,
            "lon" double precision NOT NULL,
            "form_case_two_id" uuid DEFAULT gen_random_uuid(),
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "public"."form_case_two_financing_options_relation" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_financing_options_relation') THEN
        CREATE TABLE "public"."form_case_two_financing_options_relation" (
            "id" bigint NOT NULL,
            "created_at" timestamp with time zone NOT NULL DEFAULT now(),
            "form_case_two_id" uuid NOT NULL DEFAULT gen_random_uuid(),
            "form_case_two_financing_options_id" uuid NOT NULL DEFAULT gen_random_uuid(),
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "public"."form_case_two_policy_sub_objective" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_policy_sub_objective') THEN
        CREATE TABLE "public"."form_case_two_policy_sub_objective" (
            "name" text NOT NULL,
            "id" uuid NOT NULL,
            "form_cae_two_policy_objective_id" uuid NOT NULL,
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "ai"."agent_model_settings" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'ai' AND table_name = 'agent_model_settings') THEN
        CREATE TABLE "ai"."agent_model_settings" (
            "id" bigint NOT NULL,
            "name" text,
            "model" ai.ai_model,
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "ai"."case_prompt_setting" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'ai' AND table_name = 'case_prompt_setting') THEN
        CREATE TABLE "ai"."case_prompt_setting" (
            "id" uuid NOT NULL DEFAULT gen_random_uuid(),
            "name" text,
            "prompt" text,
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "public"."form_case_two_constraints" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_constraints') THEN
        CREATE TABLE "public"."form_case_two_constraints" (
            "id" uuid NOT NULL DEFAULT gen_random_uuid(),
            "created_at" timestamp with time zone NOT NULL DEFAULT now(),
            "name" text NOT NULL,
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "public"."form_case_one_sub_consequences" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_sub_consequences') THEN
        CREATE TABLE "public"."form_case_one_sub_consequences" (
            "id" uuid NOT NULL DEFAULT gen_random_uuid(),
            "name" text NOT NULL,
            "id_form_case_one_consequences" uuid NOT NULL DEFAULT gen_random_uuid(),
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "ai"."contents" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'ai' AND table_name = 'contents') THEN
        CREATE TABLE "ai"."contents" (
            "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
            "conversation_id" uuid NOT NULL,
            "user_id" uuid NOT NULL DEFAULT auth.uid(),
            "role" ai.role_content NOT NULL,
            "content" text NOT NULL,
            "created_at" timestamp with time zone NOT NULL DEFAULT timezone('utc'::text, now()),
            "tool_call_id" character varying(100),
            "tool_name" character varying(100),
            "metadata" jsonb,
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "ai"."conversations" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'ai' AND table_name = 'conversations') THEN
        CREATE TABLE "ai"."conversations" (
            "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
            "title" character varying(200),
            "created_at" timestamp with time zone NOT NULL DEFAULT timezone('utc'::text, now()),
            "updated_at" timestamp with time zone NOT NULL DEFAULT timezone('utc'::text, now()),
            "is_active" boolean NOT NULL DEFAULT true,
            "user_id" uuid NOT NULL DEFAULT auth.uid(),
            "case_id" character varying,
            "simulation_id" character varying,
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "ai"."profiles" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'ai' AND table_name = 'profiles') THEN
        CREATE TABLE "ai"."profiles" (
            "id" uuid NOT NULL,
            "username" character varying(50),
            "first_name" character varying(50),
            "last_name" character varying(50),
            "avatar" character varying(255),
            "extra_data" jsonb,
            "created_at" timestamp with time zone NOT NULL DEFAULT timezone('utc'::text, now()),
            "updated_at" timestamp with time zone NOT NULL DEFAULT timezone('utc'::text, now()),
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "public"."form_case_one_data" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_data') THEN
        CREATE TABLE "public"."form_case_one_data" (
            "created_at" timestamp with time zone NOT NULL DEFAULT now(),
            "payload" json NOT NULL DEFAULT '{}'::json,
            "id" uuid NOT NULL,
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "public"."form_case_two_policy_objective" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_policy_objective') THEN
        CREATE TABLE "public"."form_case_two_policy_objective" (
            "name" text NOT NULL,
            "id" uuid NOT NULL,
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "public"."form_case_two" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two') THEN
        CREATE TABLE "public"."form_case_two" (
            "id" uuid NOT NULL DEFAULT gen_random_uuid(),
            "created_at" timestamp with time zone NOT NULL DEFAULT now(),
            "name" text NOT NULL,
            "description" uuid NOT NULL DEFAULT gen_random_uuid(),
            "aditional_financing" uuid DEFAULT gen_random_uuid(),
            "constraint_custom" uuid DEFAULT gen_random_uuid(),
            "estimated_budget_amount" numeric NOT NULL,
            "estimated_budget_currency" text,
            "aditional_financing_amount" numeric,
            "aditional_financing_currency" text,
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "public"."form_case_two_actors_relations" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_actors_relations') THEN
        CREATE TABLE "public"."form_case_two_actors_relations" (
            "id" uuid NOT NULL DEFAULT gen_random_uuid(),
            "created_at" timestamp with time zone NOT NULL DEFAULT now(),
            "form_case_two_actors_groups_values_id" uuid NOT NULL DEFAULT gen_random_uuid(),
            "form_case_two_id" uuid NOT NULL DEFAULT gen_random_uuid(),
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear tabla "knowledge"."documents" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'knowledge' AND table_name = 'documents') THEN
        CREATE TABLE "knowledge"."documents" (
            "id" bigint NOT NULL,
            "content" text,
            "embedding" vector(1024),
            "namespace" text,
            "metadata" jsonb,
            PRIMARY KEY ("id")
        );
    END IF;
END $$;

-- Crear foreign key "public"."form_case_one"."form_case_one_cause_custom_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_extend_docs')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_one_extend_docs' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_one_cause_custom_fkey' AND table_name = 'form_case_one' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_one" ADD CONSTRAINT form_case_one_cause_custom_fkey
        FOREIGN KEY (cause_custom) REFERENCES "public"."form_case_one_extend_docs"(id)
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_one"."form_case_one_constraint_custom_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_extend_docs')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_one_extend_docs' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_one_constraint_custom_fkey' AND table_name = 'form_case_one' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_one" ADD CONSTRAINT form_case_one_constraint_custom_fkey
        FOREIGN KEY (constraint_custom) REFERENCES "public"."form_case_one_extend_docs"(id)
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_one"."form_case_one_description_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_extend_docs')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_one_extend_docs' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_one_description_fkey' AND table_name = 'form_case_one' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_one" ADD CONSTRAINT form_case_one_description_fkey
        FOREIGN KEY (description) REFERENCES "public"."form_case_one_extend_docs"(id)
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_one"."form_case_one_final_goal_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_extend_docs')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_one_extend_docs' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_one_final_goal_fkey' AND table_name = 'form_case_one' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_one" ADD CONSTRAINT form_case_one_final_goal_fkey
        FOREIGN KEY (final_goal) REFERENCES "public"."form_case_one_extend_docs"(id)
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_one"."form_case_one_pressure_id_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_pressure')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_one_pressure' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_one_pressure_id_fkey' AND table_name = 'form_case_one' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_one" ADD CONSTRAINT form_case_one_pressure_id_fkey
        FOREIGN KEY (pressure_id) REFERENCES "public"."form_case_one_pressure"(id)
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_one"."form_case_one_previous_measures_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_extend_docs')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_one_extend_docs' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_one_previous_measures_fkey' AND table_name = 'form_case_one' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_one" ADD CONSTRAINT form_case_one_previous_measures_fkey
        FOREIGN KEY (previous_measures) REFERENCES "public"."form_case_one_extend_docs"(id)
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_one"."form_case_one_time_existence_error_id_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_time_existence_error')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_one_time_existence_error' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_one_time_existence_error_id_fkey' AND table_name = 'form_case_one' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_one" ADD CONSTRAINT form_case_one_time_existence_error_id_fkey
        FOREIGN KEY (time_existence_error_id) REFERENCES "public"."form_case_one_time_existence_error"(id)
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_one_all_form_files"."form_case_one_all_form_files_all_form_files_id_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'all_form_files')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'all_form_files' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_one_all_form_files_all_form_files_id_fkey' AND table_name = 'form_case_one_all_form_files' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_one_all_form_files" ADD CONSTRAINT form_case_one_all_form_files_all_form_files_id_fkey
        FOREIGN KEY (all_form_files_id) REFERENCES "public"."all_form_files"(id)
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_one_all_form_files"."form_case_one_all_form_files_form_case_one_id_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_one' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_one_all_form_files_form_case_one_id_fkey' AND table_name = 'form_case_one_all_form_files' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_one_all_form_files" ADD CONSTRAINT form_case_one_all_form_files_form_case_one_id_fkey
        FOREIGN KEY (form_case_one_id) REFERENCES "public"."form_case_one"(id)
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_one_causes_relation"."form_case_one_causes_relation_form_case_one_cause_id_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_causes')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_one_causes' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_one_causes_relation_form_case_one_cause_id_fkey' AND table_name = 'form_case_one_causes_relation' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_one_causes_relation" ADD CONSTRAINT form_case_one_causes_relation_form_case_one_cause_id_fkey
        FOREIGN KEY (form_case_one_cause_id) REFERENCES "public"."form_case_one_causes"(id)
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_one_causes_relation"."form_case_one_causes_relation_form_case_one_id_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_one' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_one_causes_relation_form_case_one_id_fkey' AND table_name = 'form_case_one_causes_relation' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_one_causes_relation" ADD CONSTRAINT form_case_one_causes_relation_form_case_one_id_fkey
        FOREIGN KEY (form_case_one_id) REFERENCES "public"."form_case_one"(id)
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_one_consequences_relation"."form_case_one_consequences_re_form_case_one_consequence_id_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_consequences')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_one_consequences' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_one_consequences_re_form_case_one_consequence_id_fkey' AND table_name = 'form_case_one_consequences_relation' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_one_consequences_relation" ADD CONSTRAINT form_case_one_consequences_re_form_case_one_consequence_id_fkey
        FOREIGN KEY (form_case_one_consequence_id) REFERENCES "public"."form_case_one_consequences"(id)
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_one_consequences_relation"."form_case_one_consequences_relation_form_case_one_id_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_one' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_one_consequences_relation_form_case_one_id_fkey' AND table_name = 'form_case_one_consequences_relation' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_one_consequences_relation" ADD CONSTRAINT form_case_one_consequences_relation_form_case_one_id_fkey
        FOREIGN KEY (form_case_one_id) REFERENCES "public"."form_case_one"(id)
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_one_constraints_relation"."form_case_one_constraints_rela_form_case_one_constraint_id_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_constraints')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_one_constraints' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_one_constraints_rela_form_case_one_constraint_id_fkey' AND table_name = 'form_case_one_constraints_relation' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_one_constraints_relation" ADD CONSTRAINT form_case_one_constraints_rela_form_case_one_constraint_id_fkey
        FOREIGN KEY (form_case_one_constraint_id) REFERENCES "public"."form_case_one_constraints"(id)
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_one_constraints_relation"."form_case_one_constraints_relation_form_case_one_id_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_one' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_one_constraints_relation_form_case_one_id_fkey' AND table_name = 'form_case_one_constraints_relation' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_one_constraints_relation" ADD CONSTRAINT form_case_one_constraints_relation_form_case_one_id_fkey
        FOREIGN KEY (form_case_one_id) REFERENCES "public"."form_case_one"(id)
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_one_group_comunity_relation"."form_case_one_group_comunity_relation_form_case_one_id_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_one' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_one_group_comunity_relation_form_case_one_id_fkey' AND table_name = 'form_case_one_group_comunity_relation' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_one_group_comunity_relation" ADD CONSTRAINT form_case_one_group_comunity_relation_form_case_one_id_fkey
        FOREIGN KEY (form_case_one_id) REFERENCES "public"."form_case_one"(id)
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_one_group_comunity_relation"."form_case_one_group_comunity_relation_group_comunity_id_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'group_comunity')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'group_comunity' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_one_group_comunity_relation_group_comunity_id_fkey' AND table_name = 'form_case_one_group_comunity_relation' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_one_group_comunity_relation" ADD CONSTRAINT form_case_one_group_comunity_relation_group_comunity_id_fkey
        FOREIGN KEY (group_comunity_id) REFERENCES "public"."group_comunity"(id)
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_one_sub_consequences"."form_case_one_sub_consequence_id_form_case_one_consequence_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_consequences')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_one_consequences' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_one_sub_consequence_id_form_case_one_consequence_fkey' AND table_name = 'form_case_one_sub_consequences' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_one_sub_consequences" ADD CONSTRAINT form_case_one_sub_consequence_id_form_case_one_consequence_fkey
        FOREIGN KEY (id_form_case_one_consequences) REFERENCES "public"."form_case_one_consequences"(id)
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_one_sub_consequences_data"."form_case_one_sub_consequenc_form_case_one_sub_consequenc_fkey1" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_sub_consequences')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_one_sub_consequences' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_one_sub_consequenc_form_case_one_sub_consequenc_fkey1' AND table_name = 'form_case_one_sub_consequences_data' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_one_sub_consequences_data" ADD CONSTRAINT form_case_one_sub_consequenc_form_case_one_sub_consequenc_fkey1
        FOREIGN KEY (form_case_one_sub_consequence_id) REFERENCES "public"."form_case_one_sub_consequences"(id)
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_one_sub_consequences_data"."form_case_one_sub_consequence_form_case_one_consequence_id_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_consequences')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_one_consequences' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_one_sub_consequence_form_case_one_consequence_id_fkey' AND table_name = 'form_case_one_sub_consequences_data' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_one_sub_consequences_data" ADD CONSTRAINT form_case_one_sub_consequence_form_case_one_consequence_id_fkey
        FOREIGN KEY (form_case_one_consequence_id) REFERENCES "public"."form_case_one_consequences"(id)
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_one_sub_consequences_data"."form_case_one_sub_consequences_data_form_case_one_id_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_one' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_one_sub_consequences_data_form_case_one_id_fkey' AND table_name = 'form_case_one_sub_consequences_data' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_one_sub_consequences_data" ADD CONSTRAINT form_case_one_sub_consequences_data_form_case_one_id_fkey
        FOREIGN KEY (form_case_one_id) REFERENCES "public"."form_case_one"(id)
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_one_sub_consequences_relation"."form_case_one_sub_consequence_form_case_one_sub_consequenc_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_sub_consequences')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_one_sub_consequences' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_one_sub_consequence_form_case_one_sub_consequenc_fkey' AND table_name = 'form_case_one_sub_consequences_relation' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_one_sub_consequences_relation" ADD CONSTRAINT form_case_one_sub_consequence_form_case_one_sub_consequenc_fkey
        FOREIGN KEY (form_case_one_sub_consequence_id) REFERENCES "public"."form_case_one_sub_consequences"(id)
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_one_sub_consequences_relation"."form_case_one_sub_consequences_relation_form_case_one_id_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_one' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_one_sub_consequences_relation_form_case_one_id_fkey' AND table_name = 'form_case_one_sub_consequences_relation' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_one_sub_consequences_relation" ADD CONSTRAINT form_case_one_sub_consequences_relation_form_case_one_id_fkey
        FOREIGN KEY (form_case_one_id) REFERENCES "public"."form_case_one"(id)
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_two"."form_case_two_aditional_financing_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_extended_docs')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_two_extended_docs' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_two_aditional_financing_fkey' AND table_name = 'form_case_two' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_two" ADD CONSTRAINT form_case_two_aditional_financing_fkey
        FOREIGN KEY (aditional_financing) REFERENCES "public"."form_case_two_extended_docs"(id)
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_two"."form_case_two_constraint_custom_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_extended_docs')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_two_extended_docs' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_two_constraint_custom_fkey' AND table_name = 'form_case_two' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_two" ADD CONSTRAINT form_case_two_constraint_custom_fkey
        FOREIGN KEY (constraint_custom) REFERENCES "public"."form_case_two_extended_docs"(id)
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_two"."form_case_two_description_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_extended_docs')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_two_extended_docs' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_two_description_fkey' AND table_name = 'form_case_two' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_two" ADD CONSTRAINT form_case_two_description_fkey
        FOREIGN KEY (description) REFERENCES "public"."form_case_two_extended_docs"(id)
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_two_actors_groups_values"."form_case_two_actors_groups_values_actor_group_id_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_actors_groups')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_two_actors_groups' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_two_actors_groups_values_actor_group_id_fkey' AND table_name = 'form_case_two_actors_groups_values' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_two_actors_groups_values" ADD CONSTRAINT form_case_two_actors_groups_values_actor_group_id_fkey
        FOREIGN KEY (actor_group_id) REFERENCES "public"."form_case_two_actors_groups"(id)
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_two_actors_relations"."form_case_two_actors_relation_form_case_two_actors_groups__fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_actors_groups_values')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_two_actors_groups_values' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_two_actors_relation_form_case_two_actors_groups__fkey' AND table_name = 'form_case_two_actors_relations' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_two_actors_relations" ADD CONSTRAINT form_case_two_actors_relation_form_case_two_actors_groups__fkey
        FOREIGN KEY (form_case_two_actors_groups_values_id) REFERENCES "public"."form_case_two_actors_groups_values"(id)
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_two_actors_relations"."form_case_two_actors_relations_form_case_two_id_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_two' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_two_actors_relations_form_case_two_id_fkey' AND table_name = 'form_case_two_actors_relations' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_two_actors_relations" ADD CONSTRAINT form_case_two_actors_relations_form_case_two_id_fkey
        FOREIGN KEY (form_case_two_id) REFERENCES "public"."form_case_two"(id)
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_two_constraints_relation"."form_case_two_constrainsts_re_form_case_two_constraints_id_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_constraints')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_two_constraints' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_two_constrainsts_re_form_case_two_constraints_id_fkey' AND table_name = 'form_case_two_constraints_relation' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_two_constraints_relation" ADD CONSTRAINT form_case_two_constrainsts_re_form_case_two_constraints_id_fkey
        FOREIGN KEY (form_case_two_constraints_id) REFERENCES "public"."form_case_two_constraints"(id)
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_two_constraints_relation"."form_case_two_constrainsts_relation_form_case_two_id_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_two' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_two_constrainsts_relation_form_case_two_id_fkey' AND table_name = 'form_case_two_constraints_relation' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_two_constraints_relation" ADD CONSTRAINT form_case_two_constrainsts_relation_form_case_two_id_fkey
        FOREIGN KEY (form_case_two_id) REFERENCES "public"."form_case_two"(id)
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_two_financing_options_relation"."form_case_two_financing_optio_form_case_two_financing_opti_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_financing_options')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_two_financing_options' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_two_financing_optio_form_case_two_financing_opti_fkey' AND table_name = 'form_case_two_financing_options_relation' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_two_financing_options_relation" ADD CONSTRAINT form_case_two_financing_optio_form_case_two_financing_opti_fkey
        FOREIGN KEY (form_case_two_financing_options_id) REFERENCES "public"."form_case_two_financing_options"(id)
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_two_financing_options_relation"."form_case_two_financing_options_relation_form_case_two_id_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_two' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_two_financing_options_relation_form_case_two_id_fkey' AND table_name = 'form_case_two_financing_options_relation' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_two_financing_options_relation" ADD CONSTRAINT form_case_two_financing_options_relation_form_case_two_id_fkey
        FOREIGN KEY (form_case_two_id) REFERENCES "public"."form_case_two"(id)
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_two_locations"."form_case_two_locations_form_case_two_id_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_two' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_two_locations_form_case_two_id_fkey' AND table_name = 'form_case_two_locations' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_two_locations" ADD CONSTRAINT form_case_two_locations_form_case_two_id_fkey
        FOREIGN KEY (form_case_two_id) REFERENCES "public"."form_case_two"(id)
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_two_policy_objective_relation"."form_case_two_policy_objectiv_form_case_two_policy_sub_obj_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_policy_sub_objective')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_two_policy_sub_objective' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_two_policy_objectiv_form_case_two_policy_sub_obj_fkey' AND table_name = 'form_case_two_policy_objective_relation' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_two_policy_objective_relation" ADD CONSTRAINT form_case_two_policy_objectiv_form_case_two_policy_sub_obj_fkey
        FOREIGN KEY (form_case_two_policy_sub_objective_id) REFERENCES "public"."form_case_two_policy_sub_objective"(id)
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_two_policy_objective_relation"."form_case_two_policy_objective_relation_form_case_two_id_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_two' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_two_policy_objective_relation_form_case_two_id_fkey' AND table_name = 'form_case_two_policy_objective_relation' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_two_policy_objective_relation" ADD CONSTRAINT form_case_two_policy_objective_relation_form_case_two_id_fkey
        FOREIGN KEY (form_case_two_id) REFERENCES "public"."form_case_two"(id)
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_two_policy_sub_objective"."form_cae_two_policy_sub_objec_form_cae_two_policy_objectiv_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_policy_objective')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_two_policy_objective' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_cae_two_policy_sub_objec_form_cae_two_policy_objectiv_fkey' AND table_name = 'form_case_two_policy_sub_objective' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_two_policy_sub_objective" ADD CONSTRAINT form_cae_two_policy_sub_objec_form_cae_two_policy_objectiv_fkey
        FOREIGN KEY (form_cae_two_policy_objective_id) REFERENCES "public"."form_case_two_policy_objective"(id)
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_two_target_population_relation"."form_case_two_target_populati_form_case_two_target_populat_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_target_population')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_two_target_population' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_two_target_populati_form_case_two_target_populat_fkey' AND table_name = 'form_case_two_target_population_relation' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_two_target_population_relation" ADD CONSTRAINT form_case_two_target_populati_form_case_two_target_populat_fkey
        FOREIGN KEY (form_case_two_target_population_id) REFERENCES "public"."form_case_two_target_population"(id)
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        ;
    END IF;
END $$;

-- Crear foreign key "public"."form_case_two_target_population_relation"."form_case_two_target_pupolation_relation_form_case_two_id_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'form_case_two' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'form_case_two_target_pupolation_relation_form_case_two_id_fkey' AND table_name = 'form_case_two_target_population_relation' AND table_schema = 'public') THEN
        ALTER TABLE "public"."form_case_two_target_population_relation" ADD CONSTRAINT form_case_two_target_pupolation_relation_form_case_two_id_fkey
        FOREIGN KEY (form_case_two_id) REFERENCES "public"."form_case_two"(id)
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        ;
    END IF;
END $$;

-- Crear foreign key "ai"."a2a_report_files"."a2a_report_files_simulation_id_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'ai' AND table_name = 'simulations')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'ai' AND table_name = 'simulations' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'a2a_report_files_simulation_id_fkey' AND table_name = 'a2a_report_files' AND table_schema = 'ai') THEN
        ALTER TABLE "ai"."a2a_report_files" ADD CONSTRAINT a2a_report_files_simulation_id_fkey
        FOREIGN KEY (simulation_id) REFERENCES "ai"."simulations"(id)
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        ;
    END IF;
END $$;

-- Crear foreign key "ai"."contents"."contents_conversation_id_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'ai' AND table_name = 'conversations')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'ai' AND table_name = 'conversations' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'contents_conversation_id_fkey' AND table_name = 'contents' AND table_schema = 'ai') THEN
        ALTER TABLE "ai"."contents" ADD CONSTRAINT contents_conversation_id_fkey
        FOREIGN KEY (conversation_id) REFERENCES "ai"."conversations"(id)
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        ;
    END IF;
END $$;

-- Crear foreign key "ai"."conversations"."conversations_simulation_id_fkey" si no existe
DO $$
BEGIN
    -- Verificar que la tabla referenciada existe y tiene la columna
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'ai' AND table_name = 'simulations')
    AND EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'ai' AND table_name = 'simulations' AND column_name = 'id')
    AND NOT EXISTS (SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'conversations_simulation_id_fkey' AND table_name = 'conversations' AND table_schema = 'ai') THEN
        ALTER TABLE "ai"."conversations" ADD CONSTRAINT conversations_simulation_id_fkey
        FOREIGN KEY (simulation_id) REFERENCES "ai"."simulations"(id)
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        ;
    END IF;
END $$;

