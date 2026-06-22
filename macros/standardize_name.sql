{% macro standardize_name(column_name) %}

UPPER(TRIM({{ column_name }}))

{% endmacro %}