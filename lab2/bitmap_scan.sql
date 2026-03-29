CREATE INDEX idx_emp_salary ON employees(salary);

EXPLAIN SELECT * FROM employees WHERE salary BETWEEN 10000 AND 12000;