SELECT
    transaction_date,
    store_id,
    SUM(total_amount) AS total_revenue,
    COUNT(DISTINCT transaction_id) AS total_transactions,
    SUM(transaction_qty) AS total_items_sold,
    ROUND(SUM(total_amount) / NULLIF(COUNT(DISTINCT transaction_id), 0), 2) AS avg_order_value
FROM {{ ref('fct_sales') }}
GROUP BY
   transaction_date,
   store_id