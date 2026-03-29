ALTER TABLE employees
    ADD COLUMN email_domain TEXT GENERATED ALWAYS AS (SUBSTRING(email FROM '@(.*)$')) STORED,
ADD COLUMN full_name TEXT GENERATED ALWAYS AS (last_name || ' ' || first_name) STORED;

