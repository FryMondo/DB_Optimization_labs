SELECT relname, n_dead_tup, n_live_tup
FROM pg_stat_all_tables
WHERE relname = 'test_vacuum';