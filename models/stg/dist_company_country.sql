with dist_company_country as (
select distinct company_country
 from {{ref('stg_covid')}}
)
select * from dist_company_country