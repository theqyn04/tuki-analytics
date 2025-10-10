
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with all_values as (

    select
        PUBLISHED_DOW as value_field,
        count(*) as n_records

    from TUKI_DB.TUKI_DEV_SCHEMA.g_upload_heatmap
    group by PUBLISHED_DOW

)

select *
from all_values
where value_field not in (
    '0','1','2','3','4','5','6'
)



  
  
      
    ) dbt_internal_test