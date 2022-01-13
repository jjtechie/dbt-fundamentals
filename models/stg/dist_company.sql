with dist_company as (
select distinct company
 from {{ref('stg_covid')}}
)
select * from dist_company