select
    date_format(date_add('2021-03-31', interval td.generate_series day), '%Y-%m-01') as month
from (
    SELECT 0 generate_series FROM DUAL WHERE (@num:=1-1)*0 
    UNION ALL
    SELECT @num:=@num+1 FROM `information_schema`.COLUMNS LIMIT 1000000
    ) as td
group by
    1
having
    month <= current_date
