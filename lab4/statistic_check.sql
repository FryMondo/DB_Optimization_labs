SELECT
    relname,
    indexrelname,
    idx_scan
FROM pg_stat_user_indexes
WHERE relname = 'employees';