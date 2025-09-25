-- Seed data for form_case_one_time_existence_error table
-- These values correspond to the TIME EXISTENCE ERROR section in ConsequenceI18nMap.ts

INSERT INTO form_case_one_time_existence_error (id, name, created_at) VALUES
  (
    '084d4e43-a0ba-4bc9-9312-6ce8ade7f70c',
    'T<1',
    '2025-08-02 21:14:02.574054+00'
  ),
  (
    'e1f97e27-50ef-4939-9d54-232b465357fe',
    '1<T<3',
    '2025-08-02 21:14:56.863755+00'
  ),
  (
    'cb888acb-deb6-4768-84f7-939dd6bf04ce',
    '3<T<5',
    '2025-08-02 21:15:10.576199+00'
  ),
  (
    'f556925c-7d15-4f76-9fa7-b10dff88d109',
    '5<T',
    '2025-08-02 21:15:23.259622+00'
  )
ON CONFLICT (id) DO NOTHING; 