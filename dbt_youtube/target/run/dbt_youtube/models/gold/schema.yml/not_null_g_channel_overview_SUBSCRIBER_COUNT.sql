
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select SUBSCRIBER_COUNT
from TUKI_DB.TUKI_DEV_SCHEMA.g_channel_overview
where SUBSCRIBER_COUNT is null



  
  
      
    ) dbt_internal_test