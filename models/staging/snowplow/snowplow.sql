select * from {{ source('snowplow', 'events')}}
order by collector_tstamp desc