select
    *
from (
    select 
        ('2019-02-01' + row_number() over (order by id))::date as base_date
    from 
        users
    )
where
    base_date <= current_date
