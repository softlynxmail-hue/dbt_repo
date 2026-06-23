{{ config(
    materialized='incremental',
    unique_key='customer_id'
) }}

SELECT *
FROM {{ ref('customer') }}

{% if is_incremental() %}

WHERE subscription_date >
(
    SELECT COALESCE(
        MAX(subscription_date),
        '1900-01-01'::DATE
    )
    FROM {{ this }}
)

{% endif %}