WITH source AS (
    SELECT 
        person_id AS player_id,
        first_name,
        last_name,
        team_name,
        position,
        height,
        weight
    FROM 
        {{ source('PUBLIC', 'COMMON_PLAYER_INFO') }}
)

SELECT 
    *
FROM
    source