{# Provided setup — you don't need to edit this.
   Makes a custom +schema (like the raw seeds' 'raw') resolve to that exact
   schema name, instead of dbt's default of prefixing it with the target schema. #}
{% macro generate_schema_name(custom_schema_name, node) -%}
    {%- if custom_schema_name is none -%}
        {{ target.schema }}
    {%- else -%}
        {{ custom_schema_name | trim }}
    {%- endif -%}
{%- endmacro %}
