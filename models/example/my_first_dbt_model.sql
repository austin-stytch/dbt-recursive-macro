{{ config(materialized='table') }}

with source_data as (

    select getDate() as dte, null as alsoDte
    union all
    select null, getDate()

)

select {{greatest_not_null_timestamp([
  'dte'
  , 'alsoDte'
])}}

from source_data

