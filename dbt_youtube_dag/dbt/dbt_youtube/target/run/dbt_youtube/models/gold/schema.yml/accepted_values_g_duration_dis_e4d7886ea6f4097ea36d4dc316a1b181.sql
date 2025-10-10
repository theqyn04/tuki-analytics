
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with all_values as (

    select
        DURATION_BUCKET as value_field,
        count(*) as n_records

    from TUKI_DB.TUKI_DEV_SCHEMA.g_duration_distribution
    group by DURATION_BUCKET

)

select *
from all_values
where value_field not in (
    '0-1m','1-5m','5-15m','15-30m','30-60m','60m+'
)



  
  
      
    ) dbt_internal_test