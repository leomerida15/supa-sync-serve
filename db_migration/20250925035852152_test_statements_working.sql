/************************************************************/
/*** SCRIPT AUTHOR: leomerida15 (dimasmerida15@gmail.com) ***/
/***    CREATED ON: 2025-09-25T03:58:52.152Z              ***/
/************************************************************/
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

-- Verificar y crear políticas RLS para "ai"."simulations"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'simulations' AND relrowsecurity = true) THEN
        ALTER TABLE "ai"."simulations" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'ai' AND tablename = 'simulations' AND policyname = 'simulations_policy') THEN
        CREATE POLICY "simulations_policy" ON "ai"."simulations" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "public"."all_form_files"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'all_form_files' AND relrowsecurity = true) THEN
        ALTER TABLE "public"."all_form_files" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'public' AND tablename = 'all_form_files' AND policyname = 'all_form_files_policy') THEN
        CREATE POLICY "all_form_files_policy" ON "public"."all_form_files" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "public"."form_case_one"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'form_case_one' AND relrowsecurity = true) THEN
        ALTER TABLE "public"."form_case_one" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'public' AND tablename = 'form_case_one' AND policyname = 'form_case_one_policy') THEN
        CREATE POLICY "form_case_one_policy" ON "public"."form_case_one" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "public"."form_case_one_causes_relation"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'form_case_one_causes_relation' AND relrowsecurity = true) THEN
        ALTER TABLE "public"."form_case_one_causes_relation" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'public' AND tablename = 'form_case_one_causes_relation' AND policyname = 'form_case_one_causes_relation_policy') THEN
        CREATE POLICY "form_case_one_causes_relation_policy" ON "public"."form_case_one_causes_relation" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "public"."form_case_one_pressure"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'form_case_one_pressure' AND relrowsecurity = true) THEN
        ALTER TABLE "public"."form_case_one_pressure" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'public' AND tablename = 'form_case_one_pressure' AND policyname = 'form_case_one_pressure_policy') THEN
        CREATE POLICY "form_case_one_pressure_policy" ON "public"."form_case_one_pressure" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "public"."form_case_one_consequences_relation"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'form_case_one_consequences_relation' AND relrowsecurity = true) THEN
        ALTER TABLE "public"."form_case_one_consequences_relation" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'public' AND tablename = 'form_case_one_consequences_relation' AND policyname = 'form_case_one_consequences_relation_policy') THEN
        CREATE POLICY "form_case_one_consequences_relation_policy" ON "public"."form_case_one_consequences_relation" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "public"."form_case_one_sub_consequences_relation"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'form_case_one_sub_consequences_relation' AND relrowsecurity = true) THEN
        ALTER TABLE "public"."form_case_one_sub_consequences_relation" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'public' AND tablename = 'form_case_one_sub_consequences_relation' AND policyname = 'form_case_one_sub_consequences_relation_policy') THEN
        CREATE POLICY "form_case_one_sub_consequences_relation_policy" ON "public"."form_case_one_sub_consequences_relation" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "public"."form_case_one_sub_consequences_data"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'form_case_one_sub_consequences_data' AND relrowsecurity = true) THEN
        ALTER TABLE "public"."form_case_one_sub_consequences_data" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'public' AND tablename = 'form_case_one_sub_consequences_data' AND policyname = 'form_case_one_sub_consequences_data_policy') THEN
        CREATE POLICY "form_case_one_sub_consequences_data_policy" ON "public"."form_case_one_sub_consequences_data" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "public"."form_case_one_constraints_relation"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'form_case_one_constraints_relation' AND relrowsecurity = true) THEN
        ALTER TABLE "public"."form_case_one_constraints_relation" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'public' AND tablename = 'form_case_one_constraints_relation' AND policyname = 'form_case_one_constraints_relation_policy') THEN
        CREATE POLICY "form_case_one_constraints_relation_policy" ON "public"."form_case_one_constraints_relation" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "public"."form_case_one_group_comunity_relation"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'form_case_one_group_comunity_relation' AND relrowsecurity = true) THEN
        ALTER TABLE "public"."form_case_one_group_comunity_relation" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'public' AND tablename = 'form_case_one_group_comunity_relation' AND policyname = 'form_case_one_group_comunity_relation_policy') THEN
        CREATE POLICY "form_case_one_group_comunity_relation_policy" ON "public"."form_case_one_group_comunity_relation" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "public"."form_case_one_all_form_files"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'form_case_one_all_form_files' AND relrowsecurity = true) THEN
        ALTER TABLE "public"."form_case_one_all_form_files" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'public' AND tablename = 'form_case_one_all_form_files' AND policyname = 'form_case_one_all_form_files_policy') THEN
        CREATE POLICY "form_case_one_all_form_files_policy" ON "public"."form_case_one_all_form_files" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "public"."form_case_one_extend_docs"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'form_case_one_extend_docs' AND relrowsecurity = true) THEN
        ALTER TABLE "public"."form_case_one_extend_docs" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'public' AND tablename = 'form_case_one_extend_docs' AND policyname = 'form_case_one_extend_docs_policy') THEN
        CREATE POLICY "form_case_one_extend_docs_policy" ON "public"."form_case_one_extend_docs" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "public"."form_case_two_actors_groups_values"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'form_case_two_actors_groups_values' AND relrowsecurity = true) THEN
        ALTER TABLE "public"."form_case_two_actors_groups_values" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'public' AND tablename = 'form_case_two_actors_groups_values' AND policyname = 'form_case_two_actors_groups_values_policy') THEN
        CREATE POLICY "form_case_two_actors_groups_values_policy" ON "public"."form_case_two_actors_groups_values" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "public"."form_case_one_consequences"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'form_case_one_consequences' AND relrowsecurity = true) THEN
        ALTER TABLE "public"."form_case_one_consequences" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'public' AND tablename = 'form_case_one_consequences' AND policyname = 'form_case_one_consequences_policy') THEN
        CREATE POLICY "form_case_one_consequences_policy" ON "public"."form_case_one_consequences" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "public"."form_case_one_time_existence_error"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'form_case_one_time_existence_error' AND relrowsecurity = true) THEN
        ALTER TABLE "public"."form_case_one_time_existence_error" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'public' AND tablename = 'form_case_one_time_existence_error' AND policyname = 'form_case_one_time_existence_error_policy') THEN
        CREATE POLICY "form_case_one_time_existence_error_policy" ON "public"."form_case_one_time_existence_error" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "public"."form_case_two_actors_groups"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'form_case_two_actors_groups' AND relrowsecurity = true) THEN
        ALTER TABLE "public"."form_case_two_actors_groups" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'public' AND tablename = 'form_case_two_actors_groups' AND policyname = 'form_case_two_actors_groups_policy') THEN
        CREATE POLICY "form_case_two_actors_groups_policy" ON "public"."form_case_two_actors_groups" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "public"."extraction_errors"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'extraction_errors' AND relrowsecurity = true) THEN
        ALTER TABLE "public"."extraction_errors" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'public' AND tablename = 'extraction_errors' AND policyname = 'extraction_errors_policy') THEN
        CREATE POLICY "extraction_errors_policy" ON "public"."extraction_errors" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "public"."form_case_one_causes"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'form_case_one_causes' AND relrowsecurity = true) THEN
        ALTER TABLE "public"."form_case_one_causes" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'public' AND tablename = 'form_case_one_causes' AND policyname = 'form_case_one_causes_policy') THEN
        CREATE POLICY "form_case_one_causes_policy" ON "public"."form_case_one_causes" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "public"."group_comunity"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'group_comunity' AND relrowsecurity = true) THEN
        ALTER TABLE "public"."group_comunity" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'public' AND tablename = 'group_comunity' AND policyname = 'group_comunity_policy') THEN
        CREATE POLICY "group_comunity_policy" ON "public"."group_comunity" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "public"."form_case_two_extended_docs"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'form_case_two_extended_docs' AND relrowsecurity = true) THEN
        ALTER TABLE "public"."form_case_two_extended_docs" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'public' AND tablename = 'form_case_two_extended_docs' AND policyname = 'form_case_two_extended_docs_policy') THEN
        CREATE POLICY "form_case_two_extended_docs_policy" ON "public"."form_case_two_extended_docs" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "public"."form_case_two_target_population_relation"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'form_case_two_target_population_relation' AND relrowsecurity = true) THEN
        ALTER TABLE "public"."form_case_two_target_population_relation" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'public' AND tablename = 'form_case_two_target_population_relation' AND policyname = 'form_case_two_target_population_relation_policy') THEN
        CREATE POLICY "form_case_two_target_population_relation_policy" ON "public"."form_case_two_target_population_relation" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "public"."form_case_two_policy_objective_relation"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'form_case_two_policy_objective_relation' AND relrowsecurity = true) THEN
        ALTER TABLE "public"."form_case_two_policy_objective_relation" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'public' AND tablename = 'form_case_two_policy_objective_relation' AND policyname = 'form_case_two_policy_objective_relation_policy') THEN
        CREATE POLICY "form_case_two_policy_objective_relation_policy" ON "public"."form_case_two_policy_objective_relation" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "public"."form_case_two_constraints_relation"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'form_case_two_constraints_relation' AND relrowsecurity = true) THEN
        ALTER TABLE "public"."form_case_two_constraints_relation" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'public' AND tablename = 'form_case_two_constraints_relation' AND policyname = 'form_case_two_constraints_relation_policy') THEN
        CREATE POLICY "form_case_two_constraints_relation_policy" ON "public"."form_case_two_constraints_relation" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "ai"."a2a_report_files"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'a2a_report_files' AND relrowsecurity = true) THEN
        ALTER TABLE "ai"."a2a_report_files" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'ai' AND tablename = 'a2a_report_files' AND policyname = 'a2a_report_files_policy') THEN
        CREATE POLICY "a2a_report_files_policy" ON "ai"."a2a_report_files" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "public"."form_case_two_target_population"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'form_case_two_target_population' AND relrowsecurity = true) THEN
        ALTER TABLE "public"."form_case_two_target_population" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'public' AND tablename = 'form_case_two_target_population' AND policyname = 'form_case_two_target_population_policy') THEN
        CREATE POLICY "form_case_two_target_population_policy" ON "public"."form_case_two_target_population" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "public"."form_case_two_financing_options"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'form_case_two_financing_options' AND relrowsecurity = true) THEN
        ALTER TABLE "public"."form_case_two_financing_options" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'public' AND tablename = 'form_case_two_financing_options' AND policyname = 'form_case_two_financing_options_policy') THEN
        CREATE POLICY "form_case_two_financing_options_policy" ON "public"."form_case_two_financing_options" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "public"."legal_documents"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'legal_documents' AND relrowsecurity = true) THEN
        ALTER TABLE "public"."legal_documents" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'public' AND tablename = 'legal_documents' AND policyname = 'legal_documents_policy') THEN
        CREATE POLICY "legal_documents_policy" ON "public"."legal_documents" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "public"."form_case_one_constraints"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'form_case_one_constraints' AND relrowsecurity = true) THEN
        ALTER TABLE "public"."form_case_one_constraints" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'public' AND tablename = 'form_case_one_constraints' AND policyname = 'form_case_one_constraints_policy') THEN
        CREATE POLICY "form_case_one_constraints_policy" ON "public"."form_case_one_constraints" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "public"."form_case_two_locations"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'form_case_two_locations' AND relrowsecurity = true) THEN
        ALTER TABLE "public"."form_case_two_locations" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'public' AND tablename = 'form_case_two_locations' AND policyname = 'form_case_two_locations_policy') THEN
        CREATE POLICY "form_case_two_locations_policy" ON "public"."form_case_two_locations" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "public"."form_case_two_financing_options_relation"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'form_case_two_financing_options_relation' AND relrowsecurity = true) THEN
        ALTER TABLE "public"."form_case_two_financing_options_relation" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'public' AND tablename = 'form_case_two_financing_options_relation' AND policyname = 'form_case_two_financing_options_relation_policy') THEN
        CREATE POLICY "form_case_two_financing_options_relation_policy" ON "public"."form_case_two_financing_options_relation" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "public"."form_case_two_policy_sub_objective"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'form_case_two_policy_sub_objective' AND relrowsecurity = true) THEN
        ALTER TABLE "public"."form_case_two_policy_sub_objective" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'public' AND tablename = 'form_case_two_policy_sub_objective' AND policyname = 'form_case_two_policy_sub_objective_policy') THEN
        CREATE POLICY "form_case_two_policy_sub_objective_policy" ON "public"."form_case_two_policy_sub_objective" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "ai"."agent_model_settings"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'agent_model_settings' AND relrowsecurity = true) THEN
        ALTER TABLE "ai"."agent_model_settings" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'ai' AND tablename = 'agent_model_settings' AND policyname = 'agent_model_settings_policy') THEN
        CREATE POLICY "agent_model_settings_policy" ON "ai"."agent_model_settings" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "ai"."case_prompt_setting"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'case_prompt_setting' AND relrowsecurity = true) THEN
        ALTER TABLE "ai"."case_prompt_setting" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'ai' AND tablename = 'case_prompt_setting' AND policyname = 'case_prompt_setting_policy') THEN
        CREATE POLICY "case_prompt_setting_policy" ON "ai"."case_prompt_setting" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "public"."form_case_two_constraints"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'form_case_two_constraints' AND relrowsecurity = true) THEN
        ALTER TABLE "public"."form_case_two_constraints" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'public' AND tablename = 'form_case_two_constraints' AND policyname = 'form_case_two_constraints_policy') THEN
        CREATE POLICY "form_case_two_constraints_policy" ON "public"."form_case_two_constraints" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "public"."form_case_one_sub_consequences"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'form_case_one_sub_consequences' AND relrowsecurity = true) THEN
        ALTER TABLE "public"."form_case_one_sub_consequences" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'public' AND tablename = 'form_case_one_sub_consequences' AND policyname = 'form_case_one_sub_consequences_policy') THEN
        CREATE POLICY "form_case_one_sub_consequences_policy" ON "public"."form_case_one_sub_consequences" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "ai"."contents"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'contents' AND relrowsecurity = true) THEN
        ALTER TABLE "ai"."contents" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'ai' AND tablename = 'contents' AND policyname = 'contents_policy') THEN
        CREATE POLICY "contents_policy" ON "ai"."contents" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "ai"."conversations"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'conversations' AND relrowsecurity = true) THEN
        ALTER TABLE "ai"."conversations" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'ai' AND tablename = 'conversations' AND policyname = 'conversations_policy') THEN
        CREATE POLICY "conversations_policy" ON "ai"."conversations" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "ai"."profiles"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'profiles' AND relrowsecurity = true) THEN
        ALTER TABLE "ai"."profiles" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'ai' AND tablename = 'profiles' AND policyname = 'profiles_policy') THEN
        CREATE POLICY "profiles_policy" ON "ai"."profiles" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "public"."form_case_one_data"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'form_case_one_data' AND relrowsecurity = true) THEN
        ALTER TABLE "public"."form_case_one_data" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'public' AND tablename = 'form_case_one_data' AND policyname = 'form_case_one_data_policy') THEN
        CREATE POLICY "form_case_one_data_policy" ON "public"."form_case_one_data" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "public"."form_case_two_policy_objective"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'form_case_two_policy_objective' AND relrowsecurity = true) THEN
        ALTER TABLE "public"."form_case_two_policy_objective" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'public' AND tablename = 'form_case_two_policy_objective' AND policyname = 'form_case_two_policy_objective_policy') THEN
        CREATE POLICY "form_case_two_policy_objective_policy" ON "public"."form_case_two_policy_objective" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "public"."form_case_two"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'form_case_two' AND relrowsecurity = true) THEN
        ALTER TABLE "public"."form_case_two" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'public' AND tablename = 'form_case_two' AND policyname = 'form_case_two_policy') THEN
        CREATE POLICY "form_case_two_policy" ON "public"."form_case_two" FOR ALL USING (true);
    END IF;
END $$;

-- Verificar y crear políticas RLS para "public"."form_case_two_actors_relations"
DO $$
BEGIN
    -- Habilitar RLS si no está activo
    IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relname = 'form_case_two_actors_relations' AND relrowsecurity = true) THEN
        ALTER TABLE "public"."form_case_two_actors_relations" ENABLE ROW LEVEL SECURITY;
    END IF;

    -- Crear política básica si no existe
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname = 'public' AND tablename = 'form_case_two_actors_relations' AND policyname = 'form_case_two_actors_relations_policy') THEN
        CREATE POLICY "form_case_two_actors_relations_policy" ON "public"."form_case_two_actors_relations" FOR ALL USING (true);
    END IF;
END $$;

