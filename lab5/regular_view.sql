CREATE OR REPLACE VIEW view_subordinates AS
WITH RECURSIVE subordinates AS (
    SELECT id, first_name, last_name, manager_id, 1 AS level, id AS root_id
    FROM employees
    UNION ALL
    SELECT e.id, e.first_name, e.last_name, e.manager_id, s.level + 1, s.root_id
    FROM employees e
             JOIN subordinates s ON e.manager_id = s.id
)
SELECT * FROM subordinates;

CREATE OR REPLACE VIEW view_managers_up AS
WITH RECURSIVE managers AS (
    SELECT id, first_name, last_name, manager_id, 1 AS level, id AS leaf_id
    FROM employees
    UNION ALL
    SELECT e.id, e.first_name, e.last_name, e.manager_id, m.level + 1, m.leaf_id
    FROM employees e
             JOIN managers m ON m.manager_id = e.id
)
SELECT * FROM managers;