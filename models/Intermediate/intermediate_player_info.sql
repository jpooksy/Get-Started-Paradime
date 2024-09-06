WITH player_info AS (SELECT * FROM {{ ref('nba_player_info') }})
, player_salaries AS (SELECT player_id, salary
, season FROM {{ ref('nba_player_salaries') }})
, joined AS (SELECT pi.*, ps.salary, ps.season FROM player_info AS pi
LEFT JOIN player_salaries AS ps ON pi.player_id = ps.player_id)
SELECT * FROM joined