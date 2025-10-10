





with validation_errors as (

    select
        PUBLISHED_DOW, PUBLISHED_HOUR
    from TUKI_DB.TUKI_DEV_SCHEMA.g_upload_heatmap
    group by PUBLISHED_DOW, PUBLISHED_HOUR
    having count(*) > 1

)

select *
from validation_errors


