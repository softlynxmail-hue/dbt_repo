SELECT

email

FROM {{ ref('customer') }}

GROUP BY email

HAVING COUNT(*) > 1