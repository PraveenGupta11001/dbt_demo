with teams as (
    select * from {{ ref('example_teams_demo')}}
),

team_locations as (

    select * from {{ ref('team_locations')}}

),

final as (

    select
        team_locations.city,
        teams.teams,
        team_locations.state
    from teams
    
    left join team_locations
        on team_locations.name = teams.teams

)

select * from final