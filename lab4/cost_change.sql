SET random_page_cost = 1.0;
SET seq_page_cost = 10.0;
EXPLAIN ANALYZE SELECT * FROM employees WHERE salary > 10000;