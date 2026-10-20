SELECT DISTINCT
    product_id,
	product_category,
	product_type,
	product_detail
FROM {{ ref('stg_coffee_shop__sales') }}
WHERE product_id IS NOT NULL