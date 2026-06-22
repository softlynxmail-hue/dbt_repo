{{ config(
    materialized='incremental',
    unique_key='customer_id'
) }}

SELECT *
FROM {{ ref('customer') }}

{% if is_incremental() %}

WHERE subscription_date >
(
    SELECT MAX(subscription_date)
    FROM {{ this }}
)

{% endif %}