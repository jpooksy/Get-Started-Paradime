with player_info as (
    select *
    from
        {{ ref('nba_player_info') }}
),

player_salaries as (
    select
        player_id,
        salary,
        season
    from
        {{ ref('nba_player_salaries') }}
),

joined as (

    select
        pi.*,
        ps.salary,
        ps.season
    from
        player_info as pi
    left join
        player_salaries as ps
        on pi.player_id = ps.player_id
)

select * from joined
