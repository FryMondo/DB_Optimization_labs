EXPLAIN ANALYZE
SELECT /*+ Leading(c e) */ e.first_name, e.salary, c.name
FROM employees e
         JOIN cities c ON e.city_id = c.id;