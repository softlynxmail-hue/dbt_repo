{% snapshot customer_snapshot %}

{{
    config(
      target_database='PROD_DB',
      target_schema='AUDIT',
      unique_key='CUSTOMER_ID',
      strategy='check',
      check_cols=[
        'FIRST_NAME',
        'LAST_NAME',
        'EMAIL',
        'COUNTRY'
      ]
    )
}}

SELECT *
FROM {{ ref('customer') }}

{% endsnapshot %}