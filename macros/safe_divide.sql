{% macro safe_divide(num,den) %}

CASE
WHEN {{ den }} = 0 THEN NULL
ELSE {{ num }}/{{ den }}
END

{% endmacro %}