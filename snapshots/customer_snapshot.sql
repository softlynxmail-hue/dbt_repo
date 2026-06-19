{% snapshot customer_snapshot %}

{{
    config(
      target_database='PROD_DB',
      target_schema='AUDIT',
      unique_key='CUSTOMER_ID',
      strategy='timestamp',
      updated_at='LOAD_TS'
    )
}}

SELECT *
FROM {{ ref('customer') }}

{% endsnapshot %}