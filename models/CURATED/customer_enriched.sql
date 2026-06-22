{{ config(
    materialized='table'
) }}

SELECT

    customer.*,

    country_lookup.region

FROM {{ ref('customer') }} AS customer

LEFT JOIN {{ ref('country_lookup') }} AS country_lookup
    ON customer.country = country_lookup.country