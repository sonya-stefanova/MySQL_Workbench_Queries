select *, 
date_add(shippeddate, interval 3 day) as latest_arrival,
case when date_add(shippeddate, interval 3 day) then 1 else 0 end as late_flag
from classicmodels.orders
where (case when date_add(shippeddate, interval 3 day) then 1 else 0 end)=1