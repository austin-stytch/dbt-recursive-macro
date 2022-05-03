{% macro greatest_not_null(cols, zero) %}greatest(
    {{ zero }}{% for col in cols %}
    , coalesce({{ col }}, {{ zero }}){% endfor %}
  ){% endmacro %}
