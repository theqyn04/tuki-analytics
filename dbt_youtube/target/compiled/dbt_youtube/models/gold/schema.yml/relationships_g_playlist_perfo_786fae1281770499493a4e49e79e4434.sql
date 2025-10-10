
    
    

with child as (
    select PLAYLIST_ID as from_field
    from TUKI_DB.TUKI_DEV_SCHEMA.g_playlist_performance
    where PLAYLIST_ID is not null
),

parent as (
    select playlist_id as to_field
    from TUKI_DB.TUKI_DEV_SCHEMA.stg_playlists
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


