with player_info as (
    select *
    from {{ ref('nba_player_info') }}
),

player_salaries as (
    select player_id, salary, season
    from {{ ref('nba_player_salaries') }}
)

select 
    pi.*,
    ps.salary,
    ps.season
from player_info pi
left join player_salaries ps on pi.player_id = ps.player_id