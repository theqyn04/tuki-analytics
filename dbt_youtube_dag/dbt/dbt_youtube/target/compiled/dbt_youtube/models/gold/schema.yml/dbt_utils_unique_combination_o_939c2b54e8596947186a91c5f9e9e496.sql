





with validation_errors as (

    select
        VIDEO_TYPE
    from TUKI_DB.TUKI_DEV_SCHEMA.g_content_mix
    group by VIDEO_TYPE
    having count(*) > 1

)

select *
from validation_errors


