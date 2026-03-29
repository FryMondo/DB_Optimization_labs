SET work_mem = '64kB';

EXPLAIN ANALYZE
SELECT first_name, last_name, email
FROM employees
ORDER BY last_name, first_name, email;

RESET work_mem;