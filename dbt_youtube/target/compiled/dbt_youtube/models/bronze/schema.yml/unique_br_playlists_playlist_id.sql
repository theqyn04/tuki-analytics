
    
    

select
    playlist_id as unique_field,
    count(*) as n_records

from TUKI_DB.TUKI_DEV_SCHEMA.br_playlists
where playlist_id is not null
group by playlist_id
having count(*) > 1


