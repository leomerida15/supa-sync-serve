-- RLS Policies Migration Script
-- Generated automatically

-- Add RLS policy: auth_delete_a2a_reports on ai.a2a_report_files
ALTER TABLE ai.a2a_report_files ENABLE ROW LEVEL SECURITY;
CREATE POLICY auth_delete_a2a_reports ON ai.a2a_report_files FOR DELETE TO {authenticated} USING (true);

-- Add RLS policy: auth_insert_a2a_reports on ai.a2a_report_files
ALTER TABLE ai.a2a_report_files ENABLE ROW LEVEL SECURITY;
CREATE POLICY auth_insert_a2a_reports ON ai.a2a_report_files FOR INSERT TO {authenticated} WITH CHECK (true);

-- Add RLS policy: auth_read_a2a_reports on ai.a2a_report_files
ALTER TABLE ai.a2a_report_files ENABLE ROW LEVEL SECURITY;
CREATE POLICY auth_read_a2a_reports ON ai.a2a_report_files FOR SELECT TO {authenticated} USING (true);

-- Add RLS policy: auth_update_a2a_reports on ai.a2a_report_files
ALTER TABLE ai.a2a_report_files ENABLE ROW LEVEL SECURITY;
CREATE POLICY auth_update_a2a_reports ON ai.a2a_report_files FOR UPDATE TO {authenticated} USING (true) WITH CHECK (true);

-- Add RLS policy: Users can create content in own conversations on ai.contents
ALTER TABLE ai.contents ENABLE ROW LEVEL SECURITY;
CREATE POLICY Users can create content in own conversations ON ai.contents FOR INSERT TO {public} WITH CHECK ((EXISTS ( SELECT 1
   FROM ai.conversations
  WHERE ((conversations.id = contents.conversation_id) AND (conversations.user_id = auth.uid())))));

-- Add RLS policy: Users can update content in own conversations on ai.contents
ALTER TABLE ai.contents ENABLE ROW LEVEL SECURITY;
CREATE POLICY Users can update content in own conversations ON ai.contents FOR UPDATE TO {public} USING ((EXISTS ( SELECT 1
   FROM ai.conversations
  WHERE ((conversations.id = contents.conversation_id) AND (conversations.user_id = auth.uid()))))) WITH CHECK ((EXISTS ( SELECT 1
   FROM ai.conversations
  WHERE ((conversations.id = contents.conversation_id) AND (conversations.user_id = auth.uid())))));

-- Add RLS policy: Users can view content in own conversations on ai.contents
ALTER TABLE ai.contents ENABLE ROW LEVEL SECURITY;
CREATE POLICY Users can view content in own conversations ON ai.contents FOR SELECT TO {public} USING ((EXISTS ( SELECT 1
   FROM ai.conversations
  WHERE ((conversations.id = contents.conversation_id) AND (conversations.user_id = auth.uid())))));

-- Add RLS policy: authenticated_can_read on ai.contents
ALTER TABLE ai.contents ENABLE ROW LEVEL SECURITY;
CREATE POLICY authenticated_can_read ON ai.contents FOR SELECT TO {authenticated} USING (true);

-- Add RLS policy: authenticated_can_read_contents on ai.contents
ALTER TABLE ai.contents ENABLE ROW LEVEL SECURITY;
CREATE POLICY authenticated_can_read_contents ON ai.contents FOR SELECT TO {authenticated} USING (true);

-- Add RLS policy: insert_by_auth on ai.contents
ALTER TABLE ai.contents ENABLE ROW LEVEL SECURITY;
CREATE POLICY insert_by_auth ON ai.contents FOR INSERT TO {authenticated} WITH CHECK (true);

-- Add RLS policy: Enable users to view their own data only on ai.conversations
ALTER TABLE ai.conversations ENABLE ROW LEVEL SECURITY;
CREATE POLICY Enable users to view their own data only ON ai.conversations FOR SELECT TO {authenticated} USING ((( SELECT auth.uid() AS uid) = user_id));

-- Add RLS policy: authenticated_can_read_conversations on ai.conversations
ALTER TABLE ai.conversations ENABLE ROW LEVEL SECURITY;
CREATE POLICY authenticated_can_read_conversations ON ai.conversations FOR SELECT TO {authenticated} USING (true);

-- Add RLS policy: create_conversations_by_auth on ai.conversations
ALTER TABLE ai.conversations ENABLE ROW LEVEL SECURITY;
CREATE POLICY create_conversations_by_auth ON ai.conversations FOR INSERT TO {public} WITH CHECK ((auth.uid() = user_id));

-- Add RLS policy: update_conversations_by_auth on ai.conversations
ALTER TABLE ai.conversations ENABLE ROW LEVEL SECURITY;
CREATE POLICY update_conversations_by_auth ON ai.conversations FOR UPDATE TO {public} USING ((auth.uid() = user_id)) WITH CHECK ((auth.uid() = user_id));

-- Add RLS policy: authenticated_can_read_profiles on ai.profiles
ALTER TABLE ai.profiles ENABLE ROW LEVEL SECURITY;
CREATE POLICY authenticated_can_read_profiles ON ai.profiles FOR SELECT TO {authenticated} USING (true);

-- Add RLS policy: insert_by_profile on ai.profiles
ALTER TABLE ai.profiles ENABLE ROW LEVEL SECURITY;
CREATE POLICY insert_by_profile ON ai.profiles FOR INSERT TO {public} WITH CHECK ((auth.uid() = id));

-- Add RLS policy: select_by_profile on ai.profiles
ALTER TABLE ai.profiles ENABLE ROW LEVEL SECURITY;
CREATE POLICY select_by_profile ON ai.profiles FOR SELECT TO {public} USING ((auth.uid() = id));

-- Add RLS policy: update_by_profile on ai.profiles
ALTER TABLE ai.profiles ENABLE ROW LEVEL SECURITY;
CREATE POLICY update_by_profile ON ai.profiles FOR UPDATE TO {public} USING ((auth.uid() = id)) WITH CHECK ((auth.uid() = id));

-- Add RLS policy: Service role can do everything on knowledge.documents
ALTER TABLE knowledge.documents ENABLE ROW LEVEL SECURITY;
CREATE POLICY Service role can do everything ON knowledge.documents FOR ALL TO {service_role} USING (true) WITH CHECK (true);

-- Add RLS policy: select_by_auth on public.form_case_one_time_existence_error
ALTER TABLE public.form_case_one_time_existence_error ENABLE ROW LEVEL SECURITY;
CREATE POLICY select_by_auth ON public.form_case_one_time_existence_error FOR SELECT TO {authenticated} USING (true);

-- Add RLS policy: select_by_auth on public.group_comunity
ALTER TABLE public.group_comunity ENABLE ROW LEVEL SECURITY;
CREATE POLICY select_by_auth ON public.group_comunity FOR SELECT TO {authenticated} USING (true);

-- Add RLS policy: Allow authenticated user uploads 1lgoawz_0 on storage.objects
ALTER TABLE storage.objects ENABLE ROW LEVEL SECURITY;
CREATE POLICY Allow authenticated user uploads 1lgoawz_0 ON storage.objects FOR INSERT TO {authenticated} WITH CHECK ((bucket_id = 'case'::text));

-- Add RLS policy: Allow authenticated user uploads 1lgoawz_1 on storage.objects
ALTER TABLE storage.objects ENABLE ROW LEVEL SECURITY;
CREATE POLICY Allow authenticated user uploads 1lgoawz_1 ON storage.objects FOR SELECT TO {authenticated} USING ((bucket_id = 'case'::text));

-- Add RLS policy: all 1lgoawz_0 on storage.objects
ALTER TABLE storage.objects ENABLE ROW LEVEL SECURITY;
CREATE POLICY all 1lgoawz_0 ON storage.objects FOR SELECT TO {anon} USING ((bucket_id = 'vector'::text));

-- Add RLS policy: all 1lgoawz_1 on storage.objects
ALTER TABLE storage.objects ENABLE ROW LEVEL SECURITY;
CREATE POLICY all 1lgoawz_1 ON storage.objects FOR INSERT TO {anon} WITH CHECK ((bucket_id = 'vector'::text));

-- Add RLS policy: all 1lgoawz_2 on storage.objects
ALTER TABLE storage.objects ENABLE ROW LEVEL SECURITY;
CREATE POLICY all 1lgoawz_2 ON storage.objects FOR UPDATE TO {anon} USING ((bucket_id = 'vector'::text));

-- Add RLS policy: all 1lgoawz_3 on storage.objects
ALTER TABLE storage.objects ENABLE ROW LEVEL SECURITY;
CREATE POLICY all 1lgoawz_3 ON storage.objects FOR DELETE TO {anon} USING ((bucket_id = 'vector'::text));

-- Add RLS policy: auth_delete_a2a on storage.objects
ALTER TABLE storage.objects ENABLE ROW LEVEL SECURITY;
CREATE POLICY auth_delete_a2a ON storage.objects FOR DELETE TO {authenticated} USING ((bucket_id = 'a2a'::text));

-- Add RLS policy: auth_delete_vector on storage.objects
ALTER TABLE storage.objects ENABLE ROW LEVEL SECURITY;
CREATE POLICY auth_delete_vector ON storage.objects FOR DELETE TO {authenticated} USING ((bucket_id = 'vector'::text));

-- Add RLS policy: auth_read_a2a on storage.objects
ALTER TABLE storage.objects ENABLE ROW LEVEL SECURITY;
CREATE POLICY auth_read_a2a ON storage.objects FOR SELECT TO {authenticated} USING ((bucket_id = 'a2a'::text));

-- Add RLS policy: auth_read_vector on storage.objects
ALTER TABLE storage.objects ENABLE ROW LEVEL SECURITY;
CREATE POLICY auth_read_vector ON storage.objects FOR SELECT TO {authenticated} USING ((bucket_id = 'vector'::text));

-- Add RLS policy: auth_update_a2a on storage.objects
ALTER TABLE storage.objects ENABLE ROW LEVEL SECURITY;
CREATE POLICY auth_update_a2a ON storage.objects FOR UPDATE TO {authenticated} USING ((bucket_id = 'a2a'::text));

-- Add RLS policy: auth_update_vector on storage.objects
ALTER TABLE storage.objects ENABLE ROW LEVEL SECURITY;
CREATE POLICY auth_update_vector ON storage.objects FOR UPDATE TO {authenticated} USING ((bucket_id = 'vector'::text));

-- Add RLS policy: auth_upload_a2a on storage.objects
ALTER TABLE storage.objects ENABLE ROW LEVEL SECURITY;
CREATE POLICY auth_upload_a2a ON storage.objects FOR INSERT TO {authenticated} WITH CHECK ((bucket_id = 'a2a'::text));

-- Add RLS policy: auth_upload_vector on storage.objects
ALTER TABLE storage.objects ENABLE ROW LEVEL SECURITY;
CREATE POLICY auth_upload_vector ON storage.objects FOR INSERT TO {authenticated} WITH CHECK ((bucket_id = 'vector'::text));
