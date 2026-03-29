UPDATE TEST_VACUUM SET salary = salary + 500 WHERE department_id = 10;
DELETE FROM TEST_VACUUM WHERE salary > 10000;

SELECT now(), last_autovacuum, last_autoanalyze
FROM pg_stat_all_tables
WHERE relname = 'test_vacuum';