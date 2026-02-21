-- Check for NULLs in key columns
SELECT 
    SUM(CASE WHEN date IS NULL THEN 1 ELSE 0 END) AS null_dates,
    SUM(CASE WHEN store_id IS NULL THEN 1 ELSE 0 END) AS null_stores,
    SUM(CASE WHEN item_id IS NULL THEN 1 ELSE 0 END) AS null_items,
    SUM(CASE WHEN sales IS NULL THEN 1 ELSE 0 END) AS null_sales
FROM raw_sales_data;

-- Check for duplicate records
SELECT date, store_id, item_id, COUNT(*)
FROM raw_sales_data
GROUP BY date, store_id, item_id
HAVING COUNT(*) > 1;
