{# Converts an integer cents column to an exact dollars value. Uses DECIMAL (not
   float) so money math reconciles without floating-point noise -- round() in
   many warehouses returns a double, which is exactly what we want to avoid. #}
{% macro cents_to_dollars(column_name, precision=2) -%}
    cast(cast({{ column_name }} as decimal(18,4)) / 100 as decimal(12,{{ precision }}))
{%- endmacro %}
