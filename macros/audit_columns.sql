{% macro audit_columns() %}

CURRENT_TIMESTAMP() AS load_ts,
CURRENT_USER() AS loaded_by

{% endmacro %}