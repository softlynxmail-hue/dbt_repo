{{ config(
    materialized='table'
) }}

SELECT

*,

{{ audit_columns() }}

FROM {{ ref('customer_ephemeral') }}