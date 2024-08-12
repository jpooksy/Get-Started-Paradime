WITH source AS (
    SELECT 
        person_id AS player_id,
        player_name,
        salary,
        season
    FROM 
        {{ source('PUBLIC', 'PLAYER_SALARIES') }}
)

SELECT 
    *
FROM
    source