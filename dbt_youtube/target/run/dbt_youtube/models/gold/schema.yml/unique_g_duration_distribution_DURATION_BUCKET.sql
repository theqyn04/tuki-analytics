
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    DURATION_BUCKET as unique_field,
    count(*) as n_records

from TUKI_DB.TUKI_DEV_SCHEMA.g_duration_distribution
where DURATION_BUCKET is not null
group by DURATION_BUCKET
having count(*) > 1



  
  
      
    ) dbt_internal_test