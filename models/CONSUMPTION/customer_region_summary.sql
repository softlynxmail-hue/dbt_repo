{{ config(
    materialized='view'
) }}

SELECT

    region,

    COUNT(*) AS customer_count

FROM {{ ref('customer_enriched') }}

GROUP BY region