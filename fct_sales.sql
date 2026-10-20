SELECT
   transaction_id,
   transaction_date,
   transaction_time,
   store_id,
   product_id,
   transaction_qty,
   unit_price,
   ROUND(transaction_qty * unit_price, 2) AS total_amount
FROM {{ ref('stg_coffee_shop__sales') }} 