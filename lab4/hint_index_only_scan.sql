EXPLAIN ANALYZE
SELECT /*+ IndexOnlyScan(employees idx_employees_salary) */ * FROM employees ORDER BY salary;