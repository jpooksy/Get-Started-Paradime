{% macro random_timestamp() %}
    DATEADD(
        'second', 
        UNIFORM(0, 86400, RANDOM()), 
        CURRENT_DATE
    )
{% endmacro %}
