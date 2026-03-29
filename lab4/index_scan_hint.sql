CREATE INDEX IF NOT EXISTS idx_employees_salary ON employees (salary);

EXPLAIN ANALYZE SELECT /*+ IndexScan(employees idx_employees_salary) */ * FROM employees WHERE salary > 10000;