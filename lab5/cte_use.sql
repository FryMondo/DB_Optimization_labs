EXPLAIN ANALYZE
WITH RECURSIVE subordinates_cte AS (
    SELECT id, first_name, last_name, manager_id, 1 AS level, id AS root_id
    FROM employees
    UNION ALL
    SELECT e.id, e.first_name, e.last_name, e.manager_id, s.level + 1, s.root_id
    FROM employees e
             JOIN subordinates_cte s ON e.manager_id = s.id
)
SELECT * FROM subordinates_cte WHERE root_id = 1;