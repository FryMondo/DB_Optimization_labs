CREATE EXTENSION IF NOT EXISTS pg_hint_plan;
LOAD 'pg_hint_plan';
SET pg_hint_plan.enable_hint = on;
SET pg_hint_plan.debug_print = on;