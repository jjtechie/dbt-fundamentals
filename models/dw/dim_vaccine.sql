with vaccine as (
    select vaccine
    from {{ref('dist_vaccine') }}
)
select * from vaccine
