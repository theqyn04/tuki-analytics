
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select VIDEO_ID
from TUKI_DB.TUKI_DEV_SCHEMA.g_video_rankings
where VIDEO_ID is null



  
  
      
    ) dbt_internal_test