
    
    

with all_values as (

    select
        PUBLISHED_HOUR as value_field,
        count(*) as n_records

    from TUKI_DB.TUKI_DEV_SCHEMA.g_upload_heatmap
    group by PUBLISHED_HOUR

)

select *
from all_values
where value_field not in (
    '0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23'
)


