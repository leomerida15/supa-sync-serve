-- Seed data for form_case_one_consequences table
-- This script inserts the consequences data for form case one
INSERT INTO form_case_one_consequences (id, name)
VALUES (
    '5d7f3a9b-1e5c-4a2a-9d3e-1b8c7a6b4d21',
    'HUMAN DEVELOPMENT'
  ),
  (
    '7c4e8d1f-2a3b-4c5d-9e6f-2c9d8b7a5e32',
    'URBAN PLANNING AND SERVICES'
  ),
  (
    '3a5b7c9d-4e6f-4a8b-8c9d-3e6f9a8b7c43',
    'SUSTAINABILITY AND RISK'
  ),
  (
    '9f8e7d6c-5b4a-3c2b-1a9f-4d7c6b5a4e54',
    'COEXISTENCE AND GOVERNABILITY'
  ),
  (
    '2b3c4d5e-6f7a-8b9c-0d1e-5f8d7c6b9a65',
    'ECONOMIC MANAGEMENT'
  ),
  (
    '8c7d6e5f-4a3b-2c1d-0e9f-6a5b4c3d2e76',
    'INSTITUTIONAL OR STRUCTURAL EFFECTS'
  ),
  (
    '1d2e3f4a-5b6c-7d8e-9f0a-7b4c8d9e0f87',
    'ADDITIONAL FIELD - UNLISTED EFFECT (SPECIFY):'
  ) ON CONFLICT (id) DO
UPDATE
SET name = EXCLUDED.name;