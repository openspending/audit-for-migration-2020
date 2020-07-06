-- List tables with number of rows, descending order.
SELECT schemaname,relname,n_live_tup FROM pg_stat_user_tables ORDER BY n_live_tup DESC;

-- Get stats on insert, delete, fetch operations for all tables.
SELECT * FROM pg_stat_all_tables;

-- Get IO stats on read and write activity for all tables.
SELECT * FROM pg_statio_all_tables;

-- Get a "pretty printing" of all table sizes.
SELECT nspname || '.' || relname AS "relation",
    pg_size_pretty(pg_total_relation_size(C.oid)) AS "total_size"
  FROM pg_class C
  LEFT JOIN pg_namespace N ON (N.oid = C.relnamespace)
  WHERE nspname NOT IN ('pg_catalog', 'information_schema')
    AND C.relkind <> 'i'
    AND nspname !~ '^pg_toast'
  ORDER BY pg_total_relation_size(C.oid) DESC;

-- Simpler alternative to get the size, more useful to combine with the other SQL commands so far.
SELECT schemaname,
       relname,
       pg_size_pretty(pg_relation_size(relid)) AS data_size
FROM pg_catalog.pg_statio_user_tables WHERE schemaname='public';

-- Simpler alternative to get the size, but in bytes instead of "pretty printing".
SELECT schemaname,
       relname,
       pg_relation_size(relid) AS data_size
FROM pg_catalog.pg_statio_user_tables WHERE schemaname='public';

-- Merging the previous commands for a useful output.
SELECT pg_stat_all_tables.relname AS "Table Name",
       pg_stat_all_tables.n_tup_ins AS "Row Count",
       pg_relation_size(pg_catalog.pg_statio_user_tables.relid) AS "Size (bytes)",
       pg_size_pretty(pg_relation_size(pg_catalog.pg_statio_user_tables.relid)) AS "Size (pretty)",
       pg_stat_all_tables.seq_scan,
       pg_stat_all_tables.seq_tup_read,
       pg_stat_all_tables.idx_scan,
       pg_stat_all_tables.idx_tup_fetch,
       pg_stat_all_tables.n_tup_upd,
       pg_stat_all_tables.n_tup_del,
       pg_catalog.pg_statio_user_tables.heap_blks_read,
       pg_catalog.pg_statio_user_tables.heap_blks_hit,
       pg_catalog.pg_statio_user_tables.idx_blks_read,
       pg_catalog.pg_statio_user_tables.idx_blks_hit
FROM pg_stat_all_tables
INNER JOIN pg_stat_user_tables
ON pg_stat_all_tables.relname = pg_stat_user_tables.relname
INNER JOIN pg_catalog.pg_statio_user_tables
ON pg_stat_all_tables.relname = pg_catalog.pg_statio_user_tables.relname
WHERE pg_stat_all_tables.schemaname='public'
ORDER BY pg_stat_all_tables.n_tup_ins DESC;
