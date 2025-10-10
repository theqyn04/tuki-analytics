
  create or replace   view TUKI_DB.TUKI_DEV_SCHEMA.stg_playlists
  
  
  
  
  as (
    

select
  p.*
  , c.title as channel_title
from TUKI_DB.TUKI_DEV_SCHEMA.br_playlists p
left join TUKI_DB.TUKI_DEV_SCHEMA.br_channels c
  on p.channel_id = c.channel_id
  );

