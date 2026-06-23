{{ config(
    materialized='table'
) }}

SELECT

    CURRENT_TIMESTAMP() AS load_time,

    COUNT(*) AS total_records

FROM {{ ref('customer') }}