-- SELECT customerName, count(orderNumber) as orders
-- FROM classicmodels.orders t1
-- inner join classicmodels.customers t2
-- on t1.customerNumber = t2.customerNumber
-- group by customerName
-- order by orders desc
-- limit 3;

select customername, min(orderDate) as first_orderdate, max(orderDate) as most_recent_order
from orders t1
inner join classicmodels.customers t2
on t1.customerNumber = t2.customerNumber
group by customername
