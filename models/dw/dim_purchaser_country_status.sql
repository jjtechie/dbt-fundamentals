
with purchaser_country_status as (
    select purchaser_country_status
    from {{ref('dist_purchaser_country_status') }}
)
select * from purchaser_country_status