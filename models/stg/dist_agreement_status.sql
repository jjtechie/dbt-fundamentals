with dist_agreement_status as (
select distinct agreement_status
 from {{ref('stg_covid')}}
)
select * from dist_agreement_status