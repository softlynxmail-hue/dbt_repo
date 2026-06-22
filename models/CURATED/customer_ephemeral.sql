{{ config(materialized='ephemeral') }}

SELECT

    customer_id,

    UPPER(first_name) AS first_name,

    UPPER(last_name) AS last_name

FROM {{ source('RAW','CUSTOMER_RAW') }}