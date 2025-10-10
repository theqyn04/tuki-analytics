
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    playlist_item_id as unique_field,
    count(*) as n_records

from TUKI_DB.TUKI_DEV_SCHEMA.br_playlist_items
where playlist_item_id is not null
group by playlist_item_id
having count(*) > 1



  
  
      
    ) dbt_internal_test