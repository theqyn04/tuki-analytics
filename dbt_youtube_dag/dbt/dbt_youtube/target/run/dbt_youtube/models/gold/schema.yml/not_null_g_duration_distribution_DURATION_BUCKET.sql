
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select DURATION_BUCKET
from TUKI_DB.TUKI_DEV_SCHEMA.g_duration_distribution
where DURATION_BUCKET is null



  
  
      
    ) dbt_internal_test