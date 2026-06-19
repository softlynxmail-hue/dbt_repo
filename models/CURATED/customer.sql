{{ config(
    materialized='table'
) }}

SELECT

    CUSTOMER_ID,

    FIRST_NAME,

    LAST_NAME,

    COMPANY,

    CITY,

    COUNTRY,

    EMAIL,

    PHONE,

    SUBSCRIPTION_DATE,

    CURRENT_TIMESTAMP() AS LOAD_TS

FROM {{ ref('stg_customer') }}