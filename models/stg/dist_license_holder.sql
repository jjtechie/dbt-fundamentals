with dist_license_holder as (
select distinct license_holder
 from {{ref('stg_covid')}}
)
select * from dist_license_holder