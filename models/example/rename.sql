/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='view') }}

with source_data as (
    SELECT
        _ROW as Batting_Post_Id,
        BB as Base_on_Balls,
        AB as At_Bats,
        STINT AS Level_of_Playoffs, 
        LG_ID as League,
        G AS Games,
        H AS Hits,
        IBB AS Intentional_Walks,
        HR AS Homeruns,
        YEAR_ID AS Year,
        _3_B AS Triples,
        SB AS Stolen_Bases,
        GIDP AS Grounded_Into_Double_Plays,
        _2_B AS Doubles,
        CS AS Caught_Stealing,
        R AS Runs,
        SF AS Sacrifice_Flies,
        SH AS Sacrifices,
        Team_ID AS Team,
        HBP AS Hit_By_Pitch,
        RBI AS Runs_Batted_In,
        SO AS Strikeouts,
        PLAYER_ID AS Player_ID_Code,
        _FIVETRAN_SYNCED
    
    FROM 
    CONDON_DB.BASEBALL_DATA.BATTING_POST
)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

--where id is not null
