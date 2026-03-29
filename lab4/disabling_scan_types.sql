SET enable_seqscan = off;
EXPLAIN ANALYZE SELECT * FROM employees WHERE salary > 10000;