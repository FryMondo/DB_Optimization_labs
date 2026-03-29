EXPLAIN ANALYZE
SELECT /*+ Rows(e c #10) */ e.first_name, c.name
FROM employees e
         JOIN cities c ON e.city_id = c.id;