-- SELECT pg_size_pretty(pg_total_relation_size('test_vacuum'));
VACUUM FULL TEST_VACUUM;
SELECT pg_size_pretty(pg_total_relation_size('test_vacuum'));