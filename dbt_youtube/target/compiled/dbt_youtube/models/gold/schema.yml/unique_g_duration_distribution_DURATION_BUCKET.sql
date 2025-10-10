
    
    

select
    DURATION_BUCKET as unique_field,
    count(*) as n_records

from TUKI_DB.TUKI_DEV_SCHEMA.g_duration_distribution
where DURATION_BUCKET is not null
group by DURATION_BUCKET
having count(*) > 1


