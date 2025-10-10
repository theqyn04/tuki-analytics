

select
  channel_id,
  title,
  customUrl,
  publishedAt::timestamp as "PUBLISHED_AT",
  country,
  subscriberCount::bigint as "SUBSCRIBER_COUNT",
  viewCount::bigint as "VIEW_COUNT",
  videoCount::bigint as "VIDEO_COUNT" ,
  thumbnail_high AS "CHANNEL_THUMBNAIL_URL"
from TUKI_DB.TUKI_DEV_SCHEMA.channels