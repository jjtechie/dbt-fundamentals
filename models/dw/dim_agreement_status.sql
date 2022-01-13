
with agreement_status as (
    select agreement_status
    from {{ref('dist_agreement_status') }}
)
select * from agreement_status