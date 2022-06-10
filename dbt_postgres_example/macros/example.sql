{% macro relevant_city(column_name) %}
  CASE
    WHEN {{ column_name }} = 'Würzburg' THEN TRUE
    WHEN {{ column_name }} = 'Stuttgart' THEN TRUE
    WHEN {{ column_name }} = 'Berlin' THEN TRUE
    ELSE FALSE
  END
{% endmacro %}
