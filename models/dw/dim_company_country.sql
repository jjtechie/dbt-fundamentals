
with company_country as (
    select company_country
    from {{ref('dist_company_country') }}
)
select * from company_country