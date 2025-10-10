
    
    

with child as (
    select channel_id as from_field
    from TUKI_DB.TUKI_DEV_SCHEMA.br_playlists
    where channel_id is not null
),

parent as (
    select channel_id as to_field
    from TUKI_DB.TUKI_DEV_SCHEMA.br_channels
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


