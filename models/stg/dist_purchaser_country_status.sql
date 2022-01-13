with dist_purchaser_country_status as (
select distinct purchaser_country_status
 from {{ref('stg_covid')}}
)
select * from dist_purchaser_country_status