
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select playlist_item_id
from TUKI_DB.TUKI_DEV_SCHEMA.br_playlist_items
where playlist_item_id is null



  
  
      
    ) dbt_internal_test