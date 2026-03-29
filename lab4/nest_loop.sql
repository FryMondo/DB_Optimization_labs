EXPLAIN ANALYZE
SELECT /*+ NestLoop(e c) */ * FROM employees e JOIN cities c ON c.id = e.city_id WHERE e.salary > 10000;