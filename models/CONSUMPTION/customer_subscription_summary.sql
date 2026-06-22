{{ config(
    materialized='view'
) }}

SELECT

    YEAR(subscription_date) AS subscription_year,

    COUNT(*) AS customer_count

FROM {{ ref('customer_enriched') }}

GROUP BY YEAR(subscription_date)