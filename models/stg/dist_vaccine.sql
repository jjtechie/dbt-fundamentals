with dist_vaccine as (
select distinct vaccine
 from {{ref('stg_covid')}}
)
select * from dist_vaccine