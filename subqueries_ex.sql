
select avg(orders) avg_orders
from
(select orderdate, count(ordernumber) orders
from classicmodels.orders
group by orderdate) t1