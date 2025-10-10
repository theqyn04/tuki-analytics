
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with child as (
    select VIDEO_ID as from_field
    from TUKI_DB.TUKI_DEV_SCHEMA.g_video_rankings
    where VIDEO_ID is not null
),

parent as (
    select video_id as to_field
    from TUKI_DB.TUKI_DEV_SCHEMA.stg_videos
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



  
  
      
    ) dbt_internal_test