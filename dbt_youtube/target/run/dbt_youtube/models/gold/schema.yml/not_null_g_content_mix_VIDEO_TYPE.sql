
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select VIDEO_TYPE
from TUKI_DB.TUKI_DEV_SCHEMA.g_content_mix
where VIDEO_TYPE is null



  
  
      
    ) dbt_internal_test