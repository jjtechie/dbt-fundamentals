with vaccine_procurement as (
    select 
        (select company from {{ref('dim_company')}} where company = fs.company) as company
    from {{ref('stg_covid')}} fs
)
select * from vaccine_procurement