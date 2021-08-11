select 
    current_date::date  - (i * interval '1 day') as date
from 
    generate_series(1,datediff('day',date('2019-01-01'), date(current_date))) i 
order by
    1
