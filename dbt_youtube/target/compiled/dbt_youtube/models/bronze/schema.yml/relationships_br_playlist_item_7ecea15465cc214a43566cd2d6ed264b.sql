
    
    

with child as (
    select playlist_id as from_field
    from TUKI_DB.TUKI_DEV_SCHEMA.br_playlist_items
    where playlist_id is not null
),

parent as (
    select playlist_id as to_field
    from TUKI_DB.TUKI_DEV_SCHEMA.br_playlists
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


