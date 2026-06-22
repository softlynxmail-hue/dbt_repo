SELECT
customer_id,
COUNT(*)
FROM {{ ref('customer') }}
GROUP BY customer_id
HAVING COUNT(*) > 1