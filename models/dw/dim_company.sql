--build dim table
--select distinct values from staged data
--insert those that are not already in the dim table
--update any values that have changed
--ISSUE: we don't have Business Key in our sample data

with company as (
    select company
    from {{ref('dist_company') }}
   -- where company not in (
    --    select company from COVID.DW.Company
    --)
)

select * from company
