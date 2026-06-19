{{ config(
    materialized='view'
) }}

SELECT

    customer_id,

    first_name,

    last_name,

    company,

    city,

    country,

    phone,

    email,

    subscription_date

FROM {{ source('RAW', 'CUSTOMER_RAW') }}