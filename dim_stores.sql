SELECT DISTINCT
    store_id,
	store_location
FROM {{ ref('stg_coffee_shop__sales') }}
WHERE store_id IS NOT NULL