EXPLAIN WITH RECURSIVE employee_tree AS (
    SELECT id, first_name, last_name, manager_id, 1 AS level
    FROM employees WHERE id = 1
    UNION ALL
    SELECT e.id, e.first_name, e.last_name, e.manager_id, et.level + 1
    FROM employees e JOIN employee_tree et ON e.manager_id = et.id
)
SELECT * FROM employee_tree;