
with license_holder as (
    select license_holder
    from {{ref('dist_license_holder') }}
)
select * from license_holder