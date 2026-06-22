{{ config(
    materialized='view'
) }}

SELECT

customer_id,

{{ standardize_name('first_name') }} AS first_name,

{{ standardize_name('last_name') }} AS last_name,

company,
city,
country,
phone,
email,
subscription_date

FROM {{ source('RAW','CUSTOMER_RAW') }}