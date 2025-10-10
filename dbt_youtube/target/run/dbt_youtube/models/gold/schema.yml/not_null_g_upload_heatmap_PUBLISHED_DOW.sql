
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select PUBLISHED_DOW
from TUKI_DB.TUKI_DEV_SCHEMA.g_upload_heatmap
where PUBLISHED_DOW is null



  
  
      
    ) dbt_internal_test