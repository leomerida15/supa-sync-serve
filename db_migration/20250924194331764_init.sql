/************************************************************/
/*** SCRIPT AUTHOR: leomerida15 (dimasmerida15@gmail.com) ***/
/***    CREATED ON: 2025-09-24T19:43:31.764Z              ***/
/************************************************************/
-- Crear schemas necesarios
CREATE SCHEMA IF NOT EXISTS "ai";
CREATE SCHEMA IF NOT EXISTS "knowledge";

-- Crear tabla "ai"."simulations" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'ai' AND table_name = 'simulations') THEN
        CREATE TABLE "ai"."simulations" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "ai"."simulations" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "simulations_policy" ON "ai"."simulations" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "public"."all_form_files" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'all_form_files') THEN
        CREATE TABLE "public"."all_form_files" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "public"."all_form_files" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "all_form_files_policy" ON "public"."all_form_files" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "public"."form_case_one" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one') THEN
        CREATE TABLE "public"."form_case_one" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "public"."form_case_one" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "form_case_one_policy" ON "public"."form_case_one" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "public"."form_case_one_causes_relation" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_causes_relation') THEN
        CREATE TABLE "public"."form_case_one_causes_relation" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "public"."form_case_one_causes_relation" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "form_case_one_causes_relation_policy" ON "public"."form_case_one_causes_relation" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "public"."form_case_one_pressure" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_pressure') THEN
        CREATE TABLE "public"."form_case_one_pressure" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "public"."form_case_one_pressure" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "form_case_one_pressure_policy" ON "public"."form_case_one_pressure" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "public"."form_case_one_consequences_relation" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_consequences_relation') THEN
        CREATE TABLE "public"."form_case_one_consequences_relation" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "public"."form_case_one_consequences_relation" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "form_case_one_consequences_relation_policy" ON "public"."form_case_one_consequences_relation" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "public"."form_case_one_sub_consequences_relation" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_sub_consequences_relation') THEN
        CREATE TABLE "public"."form_case_one_sub_consequences_relation" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "public"."form_case_one_sub_consequences_relation" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "form_case_one_sub_consequences_relation_policy" ON "public"."form_case_one_sub_consequences_relation" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "public"."form_case_one_sub_consequences_data" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_sub_consequences_data') THEN
        CREATE TABLE "public"."form_case_one_sub_consequences_data" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "public"."form_case_one_sub_consequences_data" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "form_case_one_sub_consequences_data_policy" ON "public"."form_case_one_sub_consequences_data" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "public"."form_case_one_constraints_relation" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_constraints_relation') THEN
        CREATE TABLE "public"."form_case_one_constraints_relation" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "public"."form_case_one_constraints_relation" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "form_case_one_constraints_relation_policy" ON "public"."form_case_one_constraints_relation" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "public"."form_case_one_group_comunity_relation" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_group_comunity_relation') THEN
        CREATE TABLE "public"."form_case_one_group_comunity_relation" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "public"."form_case_one_group_comunity_relation" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "form_case_one_group_comunity_relation_policy" ON "public"."form_case_one_group_comunity_relation" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "public"."form_case_one_all_form_files" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_all_form_files') THEN
        CREATE TABLE "public"."form_case_one_all_form_files" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "public"."form_case_one_all_form_files" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "form_case_one_all_form_files_policy" ON "public"."form_case_one_all_form_files" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "public"."form_case_one_extend_docs" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_extend_docs') THEN
        CREATE TABLE "public"."form_case_one_extend_docs" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "public"."form_case_one_extend_docs" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "form_case_one_extend_docs_policy" ON "public"."form_case_one_extend_docs" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "public"."form_case_two_actors_groups_values" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_actors_groups_values') THEN
        CREATE TABLE "public"."form_case_two_actors_groups_values" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "public"."form_case_two_actors_groups_values" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "form_case_two_actors_groups_values_policy" ON "public"."form_case_two_actors_groups_values" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "public"."form_case_one_consequences" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_consequences') THEN
        CREATE TABLE "public"."form_case_one_consequences" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "public"."form_case_one_consequences" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "form_case_one_consequences_policy" ON "public"."form_case_one_consequences" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "public"."form_case_one_time_existence_error" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_time_existence_error') THEN
        CREATE TABLE "public"."form_case_one_time_existence_error" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "public"."form_case_one_time_existence_error" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "form_case_one_time_existence_error_policy" ON "public"."form_case_one_time_existence_error" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "public"."form_case_two_actors_groups" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_actors_groups') THEN
        CREATE TABLE "public"."form_case_two_actors_groups" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "public"."form_case_two_actors_groups" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "form_case_two_actors_groups_policy" ON "public"."form_case_two_actors_groups" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "public"."extraction_errors" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'extraction_errors') THEN
        CREATE TABLE "public"."extraction_errors" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "public"."extraction_errors" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "extraction_errors_policy" ON "public"."extraction_errors" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "public"."form_case_one_causes" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_causes') THEN
        CREATE TABLE "public"."form_case_one_causes" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "public"."form_case_one_causes" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "form_case_one_causes_policy" ON "public"."form_case_one_causes" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "public"."group_comunity" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'group_comunity') THEN
        CREATE TABLE "public"."group_comunity" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "public"."group_comunity" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "group_comunity_policy" ON "public"."group_comunity" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "public"."form_case_two_extended_docs" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_extended_docs') THEN
        CREATE TABLE "public"."form_case_two_extended_docs" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "public"."form_case_two_extended_docs" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "form_case_two_extended_docs_policy" ON "public"."form_case_two_extended_docs" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "public"."form_case_two_target_population_relation" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_target_population_relation') THEN
        CREATE TABLE "public"."form_case_two_target_population_relation" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "public"."form_case_two_target_population_relation" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "form_case_two_target_population_relation_policy" ON "public"."form_case_two_target_population_relation" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "public"."form_case_two_policy_objective_relation" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_policy_objective_relation') THEN
        CREATE TABLE "public"."form_case_two_policy_objective_relation" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "public"."form_case_two_policy_objective_relation" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "form_case_two_policy_objective_relation_policy" ON "public"."form_case_two_policy_objective_relation" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "public"."form_case_two_constraints_relation" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_constraints_relation') THEN
        CREATE TABLE "public"."form_case_two_constraints_relation" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "public"."form_case_two_constraints_relation" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "form_case_two_constraints_relation_policy" ON "public"."form_case_two_constraints_relation" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "ai"."a2a_report_files" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'ai' AND table_name = 'a2a_report_files') THEN
        CREATE TABLE "ai"."a2a_report_files" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "ai"."a2a_report_files" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "a2a_report_files_policy" ON "ai"."a2a_report_files" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "public"."form_case_two_target_population" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_target_population') THEN
        CREATE TABLE "public"."form_case_two_target_population" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "public"."form_case_two_target_population" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "form_case_two_target_population_policy" ON "public"."form_case_two_target_population" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "public"."form_case_two_financing_options" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_financing_options') THEN
        CREATE TABLE "public"."form_case_two_financing_options" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "public"."form_case_two_financing_options" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "form_case_two_financing_options_policy" ON "public"."form_case_two_financing_options" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "public"."legal_documents" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'legal_documents') THEN
        CREATE TABLE "public"."legal_documents" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "public"."legal_documents" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "legal_documents_policy" ON "public"."legal_documents" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "public"."form_case_one_constraints" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_constraints') THEN
        CREATE TABLE "public"."form_case_one_constraints" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "public"."form_case_one_constraints" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "form_case_one_constraints_policy" ON "public"."form_case_one_constraints" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "public"."form_case_two_locations" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_locations') THEN
        CREATE TABLE "public"."form_case_two_locations" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "public"."form_case_two_locations" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "form_case_two_locations_policy" ON "public"."form_case_two_locations" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "public"."form_case_two_financing_options_relation" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_financing_options_relation') THEN
        CREATE TABLE "public"."form_case_two_financing_options_relation" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "public"."form_case_two_financing_options_relation" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "form_case_two_financing_options_relation_policy" ON "public"."form_case_two_financing_options_relation" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "public"."form_case_two_policy_sub_objective" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_policy_sub_objective') THEN
        CREATE TABLE "public"."form_case_two_policy_sub_objective" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "public"."form_case_two_policy_sub_objective" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "form_case_two_policy_sub_objective_policy" ON "public"."form_case_two_policy_sub_objective" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "ai"."agent_model_settings" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'ai' AND table_name = 'agent_model_settings') THEN
        CREATE TABLE "ai"."agent_model_settings" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "ai"."agent_model_settings" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "agent_model_settings_policy" ON "ai"."agent_model_settings" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "ai"."case_prompt_setting" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'ai' AND table_name = 'case_prompt_setting') THEN
        CREATE TABLE "ai"."case_prompt_setting" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "ai"."case_prompt_setting" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "case_prompt_setting_policy" ON "ai"."case_prompt_setting" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "public"."form_case_two_constraints" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_constraints') THEN
        CREATE TABLE "public"."form_case_two_constraints" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "public"."form_case_two_constraints" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "form_case_two_constraints_policy" ON "public"."form_case_two_constraints" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "public"."form_case_one_sub_consequences" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_sub_consequences') THEN
        CREATE TABLE "public"."form_case_one_sub_consequences" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "public"."form_case_one_sub_consequences" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "form_case_one_sub_consequences_policy" ON "public"."form_case_one_sub_consequences" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "ai"."contents" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'ai' AND table_name = 'contents') THEN
        CREATE TABLE "ai"."contents" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "ai"."contents" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "contents_policy" ON "ai"."contents" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "ai"."conversations" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'ai' AND table_name = 'conversations') THEN
        CREATE TABLE "ai"."conversations" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "ai"."conversations" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "conversations_policy" ON "ai"."conversations" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "ai"."profiles" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'ai' AND table_name = 'profiles') THEN
        CREATE TABLE "ai"."profiles" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "ai"."profiles" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "profiles_policy" ON "ai"."profiles" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "public"."form_case_one_data" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_one_data') THEN
        CREATE TABLE "public"."form_case_one_data" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "public"."form_case_one_data" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "form_case_one_data_policy" ON "public"."form_case_one_data" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "public"."form_case_two_policy_objective" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_policy_objective') THEN
        CREATE TABLE "public"."form_case_two_policy_objective" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "public"."form_case_two_policy_objective" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "form_case_two_policy_objective_policy" ON "public"."form_case_two_policy_objective" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "public"."form_case_two" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two') THEN
        CREATE TABLE "public"."form_case_two" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "public"."form_case_two" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "form_case_two_policy" ON "public"."form_case_two" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "public"."form_case_two_actors_relations" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'form_case_two_actors_relations') THEN
        CREATE TABLE "public"."form_case_two_actors_relations" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "public"."form_case_two_actors_relations" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "form_case_two_actors_relations_policy" ON "public"."form_case_two_actors_relations" FOR ALL USING (true);
    END IF;
END $$;

-- Crear tabla "knowledge"."documents" si no existe
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'knowledge' AND table_name = 'documents') THEN
        CREATE TABLE "knowledge"."documents" (
            id SERIAL PRIMARY KEY,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );

        -- Habilitar RLS en la tabla
        ALTER TABLE "knowledge"."documents" ENABLE ROW LEVEL SECURITY;

        -- Crear política RLS básica
        CREATE POLICY "documents_policy" ON "knowledge"."documents" FOR ALL USING (true);
    END IF;
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

