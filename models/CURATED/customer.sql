{{ config(

    materialized='table',

    pre_hook="
        insert into STG_DB.AUDIT.CUSTOMER_LOAD_AUDIT
        values(
            current_timestamp(),
            'CUSTOMER',
            'STARTED'
        )
    ",

    post_hook="
        insert into STG_DB.AUDIT.CUSTOMER_LOAD_AUDIT
        values(
            current_timestamp(),
            'CUSTOMER',
            'COMPLETED'
        )
    "
) }}

select *
from {{ ref('stg_customer_phone_clean') }}