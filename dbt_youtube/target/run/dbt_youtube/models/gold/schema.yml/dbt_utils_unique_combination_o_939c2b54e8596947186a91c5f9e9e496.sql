
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  





with validation_errors as (

    select
        VIDEO_TYPE
    from TUKI_DB.TUKI_DEV_SCHEMA.g_content_mix
    group by VIDEO_TYPE
    having count(*) > 1

)

select *
from validation_errors



  
  
      
    ) dbt_internal_test