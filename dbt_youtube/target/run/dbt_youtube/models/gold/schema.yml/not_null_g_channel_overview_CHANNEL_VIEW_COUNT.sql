
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select CHANNEL_VIEW_COUNT
from TUKI_DB.TUKI_DEV_SCHEMA.g_channel_overview
where CHANNEL_VIEW_COUNT is null



  
  
      
    ) dbt_internal_test