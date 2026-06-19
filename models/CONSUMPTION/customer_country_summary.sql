{{ config(
    materialized='view'
) }}

SELECT

    COUNTRY,

    COUNT(*) AS CUSTOMER_COUNT

FROM {{ ref('customer') }}

GROUP BY COUNTRY