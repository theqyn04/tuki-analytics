
    
    

select
    CHANNEL_ID as unique_field,
    count(*) as n_records

from TUKI_DB.TUKI_DEV_SCHEMA.g_channel_overview
where CHANNEL_ID is not null
group by CHANNEL_ID
having count(*) > 1


