{{ config(
    materialized='table'
) }}

SELECT

    customer.*,

    lookup.region

FROM {{ ref('customer') }} AS customer

LEFT JOIN {{ ref('country_lookup') }} AS lookup
    ON customer.country = lookup.country