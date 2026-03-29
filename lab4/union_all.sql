EXPLAIN ANALYZE
SELECT e.first_name, e.salary FROM employees e WHERE e.salary > 35000
UNION ALL
SELECT e.first_name, e.salary FROM employees e WHERE e.city_id = 5;