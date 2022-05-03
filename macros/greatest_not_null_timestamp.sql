{% macro greatest_not_null_timestamp(columns) %}{{ greatest_not_null(columns, '\'1970-01-01\'::timestamp') }}{% endmacro %}
