{{ config(materialized='incremental') }}

SELECT

CURRENT_TIMESTAMP() AS load_time,

COUNT(*) AS record_count

FROM {{ ref('customer') }}