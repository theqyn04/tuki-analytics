
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    VIDEO_ID as unique_field,
    count(*) as n_records

from TUKI_DB.TUKI_DEV_SCHEMA.g_video_rankings
where VIDEO_ID is not null
group by VIDEO_ID
having count(*) > 1



  
  
      
    ) dbt_internal_test