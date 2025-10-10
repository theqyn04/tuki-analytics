
    
    

select
    video_id as unique_field,
    count(*) as n_records

from TUKI_DB.TUKI_DEV_SCHEMA.br_video_stats
where video_id is not null
group by video_id
having count(*) > 1


