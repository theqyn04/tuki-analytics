
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select COMMENT_COUNT
from TUKI_DB.TUKI_DEV_SCHEMA.g_video_rankings
where COMMENT_COUNT is null



  
  
      
    ) dbt_internal_test