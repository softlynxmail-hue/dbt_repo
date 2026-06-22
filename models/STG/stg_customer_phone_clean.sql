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

    REPLACE(phone,'-','') AS phone,

    email,

    subscription_date

FROM {{ ref('stg_customer') }}