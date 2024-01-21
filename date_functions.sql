-- select now()

-- select a.ordernumber, requiredDate, orderdate,
-- datediff(requiredDate, orderdate) as days_until_required,
-- datediff(now(), orderdate)/365 as years_until_now
-- from classicmodels.orders a


select orderdate, date_add(orderDate, interval 1 year) as one_year_interval, 
date_sub(orderDate, interval 2 month) as two_months_interval
from classicmodels.orders
