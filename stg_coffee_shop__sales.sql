SELECT

    CAST(transaction_id AS INT) AS transaction_id,
	TO_DATE(transaction_date, 'MM/DD/YYYY') AS transaction_date,
	CAST(transaction_time AS TIME) AS transaction_time,
	CAST(transaction_qty AS INT) AS transaction_qty,
	CAST(store_id AS INT) AS store_id,
	store_location,
	CAST(product_id AS INT) AS product_id,
	CAST(REPLACE(unit_price, ',', '.') AS NUMERIC(10, 2)) AS unit_price,
	product_category,
	product_type,
	product_detail
	
	 FROM {{ source('coffee_shop_raw', 'raw_data') }}