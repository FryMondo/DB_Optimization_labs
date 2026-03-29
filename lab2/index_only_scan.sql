CREATE INDEX idx_emp_name_salary ON employees(last_name, first_name, salary);

EXPLAIN SELECT last_name, first_name, salary FROM employees WHERE last_name = 'Fripp';