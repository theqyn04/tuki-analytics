
    
    

with all_values as (

    select
        VIDEO_TYPE as value_field,
        count(*) as n_records

    from TUKI_DB.TUKI_DEV_SCHEMA.g_content_mix
    group by VIDEO_TYPE

)

select *
from all_values
where value_field not in (
    'Shorts','Live','Normal videos','Private videos'
)


