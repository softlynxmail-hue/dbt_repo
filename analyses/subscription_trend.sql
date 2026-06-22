SELECT
YEAR(subscription_date),
COUNT(*)
FROM {{ ref('customer') }}
GROUP BY YEAR(subscription_date)