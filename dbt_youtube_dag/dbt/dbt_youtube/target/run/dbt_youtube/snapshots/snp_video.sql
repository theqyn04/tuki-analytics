
      
  
    

create or replace transient table TUKI_DB.YOUTUBE_SNAP.snp_video
    
    
    
    as (
    

    select *,
        md5(coalesce(cast(VIDEO_ID as varchar ), '')
         || '|' || coalesce(cast(to_timestamp_ntz(convert_timezone('UTC', current_timestamp())) as varchar ), '')
        ) as dbt_scd_id,
        to_timestamp_ntz(convert_timezone('UTC', current_timestamp())) as dbt_updated_at,
        to_timestamp_ntz(convert_timezone('UTC', current_timestamp())) as dbt_valid_from,
        
  
  coalesce(nullif(to_timestamp_ntz(convert_timezone('UTC', current_timestamp())), to_timestamp_ntz(convert_timezone('UTC', current_timestamp()))), null)
  as dbt_valid_to
from (
        

select
  video_id,
  video_title,
  video_desc,
  video_published_at,
  view_count,
  like_count,
  comment_count,
  duration_seconds
from YOUTUBE_DB.YOUTUBE_DEV_SCHEMA.STG_VIDEOS
    ) sbq



    )
;


  
  