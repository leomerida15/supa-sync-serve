-- Insertar sub-consecuencias con UUIDs fijos y relación al padre
INSERT INTO public.form_case_one_sub_consequences (id, name, id_form_case_one_consequences)
VALUES -- HUMAN DEVELOPMENT
  (
    'a1b2c3d4-1111-2222-3333-111111111111',
    'Increased school dropout rate',
    '5d7f3a9b-1e5c-4a2a-9d3e-1b8c7a6b4d21'
  ),
  (
    'a1b2c3d4-1111-2222-3333-111111111112',
    'Deterioration of physical or mental health',
    '5d7f3a9b-1e5c-4a2a-9d3e-1b8c7a6b4d21'
  ),
  (
    'a1b2c3d4-1111-2222-3333-111111111113',
    'Lack of access to basic services (water, electricity, internet, healthcare)',
    '5d7f3a9b-1e5c-4a2a-9d3e-1b8c7a6b4d21'
  ),
  (
    'a1b2c3d4-1111-2222-3333-111111111114',
    'Increased care workload for women or families',
    '5d7f3a9b-1e5c-4a2a-9d3e-1b8c7a6b4d21'
  ),
  (
    'a1b2c3d4-1111-2222-3333-111111111115',
    'Increased poverty or social exclusion',
    '5d7f3a9b-1e5c-4a2a-9d3e-1b8c7a6b4d21'
  ),
  -- URBAN PLANNING AND SERVICES
  (
    'a1b2c3d4-2222-2222-3333-222222222221',
    'Poor or deteriorated infrastructure',
    '7c4e8d1f-2a3b-4c5d-9e6f-2c9d8b7a5e32'
  ),
  (
    'a1b2c3d4-2222-2222-3333-222222222222',
    'Severe mobility or transportation problems',
    '7c4e8d1f-2a3b-4c5d-9e6f-2c9d8b7a5e32'
  ),
  (
    'a1b2c3d4-2222-2222-3333-222222222223',
    'Housing deficit or overcrowding',
    '7c4e8d1f-2a3b-4c5d-9e6f-2c9d8b7a5e32'
  ),
  (
    'a1b2c3d4-2222-2222-3333-222222222224',
    'Unsafe or abandoned public spaces',
    '7c4e8d1f-2a3b-4c5d-9e6f-2c9d8b7a5e32'
  ),
  -- SUSTAINABILITY AND RISK
  (
    'a1b2c3d4-3333-2222-3333-333333333331',
    'Unaddressed environmental or climate risks',
    '3a5b7c9d-4e6f-4a8b-8c9d-3e6f9a8b7c43'
  ),
  (
    'a1b2c3d4-3333-2222-3333-333333333332',
    'Increased waste, pollution, or environmental degradation',
    '3a5b7c9d-4e6f-4a8b-8c9d-3e6f9a8b7c43'
  ),
  (
    'a1b2c3d4-3333-2222-3333-333333333333',
    'High-risk zones for disasters',
    '3a5b7c9d-4e6f-4a8b-8c9d-3e6f9a8b7c43'
  ),
  -- COEXISTENCE AND GOVERNABILITY
  (
    'a1b2c3d4-4444-2222-3333-444444444441',
    'Increased violence or insecurity',
    '9f8e7d6c-5b4a-3c2b-1a9f-4d7c6b5a4e54'
  ),
  (
    'a1b2c3d4-4444-2222-3333-444444444442',
    'Social conflicts or protests',
    '9f8e7d6c-5b4a-3c2b-1a9f-4d7c6b5a4e54'
  ),
  (
    'a1b2c3d4-4444-2222-3333-444444444443',
    'Lack of citizen participation or institutional trust',
    '9f8e7d6c-5b4a-3c2b-1a9f-4d7c6b5a4e54'
  ),
  (
    'a1b2c3d4-4444-2222-3333-444444444444',
    'Perception of corruption or inefficient resource use',
    '9f8e7d6c-5b4a-3c2b-1a9f-4d7c6b5a4e54'
  ),
  -- ECONOMIC MANAGEMENT
  (
    'a1b2c3d4-5555-2222-3333-555555555551',
    'Job losses or rising informality',
    '2b3c4d5e-6f7a-8b9c-0d1e-5f8d7c6b9a65'
  ),
  (
    'a1b2c3d4-5555-2222-3333-555555555552',
    'Low investment or closure of local businesses',
    '2b3c4d5e-6f7a-8b9c-0d1e-5f8d7c6b9a65'
  ),
  (
    'a1b2c3d4-5555-2222-3333-555555555553',
    'Inefficiency in public management or lack of coordination',
    '2b3c4d5e-6f7a-8b9c-0d1e-5f8d7c6b9a65'
  ),
  (
    'a1b2c3d4-5555-2222-3333-555555555554',
    'Weak government execution capacity',
    '2b3c4d5e-6f7a-8b9c-0d1e-5f8d7c6b9a65'
  ),
  -- INSTITUTIONAL OR STRUCTURAL EFFECTS
  (
    'a1b2c3d4-6666-2222-3333-666666666661',
    'Legal risks or conflicts with current regulations',
    '8c7d6e5f-4a3b-2c1d-0e9f-6a5b4c3d2e76'
  ),
  (
    'a1b2c3d4-6666-2222-3333-666666666662',
    'Lack of budget or financial sustainability',
    '8c7d6e5f-4a3b-2c1d-0e9f-6a5b4c3d2e76'
  ),
  (
    'a1b2c3d4-6666-2222-3333-666666666663',
    'Political resistance or internal government conflicts',
    '8c7d6e5f-4a3b-2c1d-0e9f-6a5b4c3d2e76'
  ),
  (
    'a1b2c3d4-6666-2222-3333-666666666664',
    'Implementation problems due to low institutional capacity',
    '8c7d6e5f-4a3b-2c1d-0e9f-6a5b4c3d2e76'
  ),
  (
    'a1b2c3d4-6666-2222-3333-666666666665',
    'Poor public image or loss of citizen support',
    '8c7d6e5f-4a3b-2c1d-0e9f-6a5b4c3d2e76'
  ),
  -- CUSTOM
  (
    'ae772a9f-8877-4a84-9835-40db9e15f2a7',
    'Custom',
    '1d2e3f4a-5b6c-7d8e-9f0a-7b4c8d9e0f87'
  ) ON CONFLICT (id) DO NOTHING;
-- Note: Time existence error data is seeded in 2_form_case_one_time_existence_error.sql