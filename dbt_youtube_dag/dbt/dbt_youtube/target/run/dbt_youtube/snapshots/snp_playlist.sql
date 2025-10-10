
      
  
    

create or replace transient table TUKI_DB.YOUTUBE_SNAP.snp_playlist
    
    
    
    as (
    

    select *,
        md5(coalesce(cast(PLAYLIST_ID as varchar ), '')
         || '|' || coalesce(cast(to_timestamp_ntz(convert_timezone('UTC', current_timestamp())) as varchar ), '')
        ) as dbt_scd_id,
        to_timestamp_ntz(convert_timezone('UTC', current_timestamp())) as dbt_updated_at,
        to_timestamp_ntz(convert_timezone('UTC', current_timestamp())) as dbt_valid_from,
        
  
  coalesce(nullif(to_timestamp_ntz(convert_timezone('UTC', current_timestamp())), to_timestamp_ntz(convert_timezone('UTC', current_timestamp()))), null)
  as dbt_valid_to
from (
        

select
  playlist_id,
  playlist_title,
  playlist_desc,
  published_at,
  channel_id,
  "ITEM_COUNT",
  "PLAYLIST_THUMBNAIL_URL"
from YOUTUBE_DB.YOUTUBE_DEV_SCHEMA.STG_PLAYLISTS
    ) sbq



    )
;


  
  