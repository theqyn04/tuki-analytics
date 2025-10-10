
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select channel_id
from TUKI_DB.TUKI_DEV_SCHEMA.stg_channels
where channel_id is null



  
  
      
    ) dbt_internal_test