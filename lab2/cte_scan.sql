EXPLAIN WITH high_paid AS MATERIALIZED (
    SELECT * FROM employees WHERE salary > 35000
)
SELECT * FROM high_paid;