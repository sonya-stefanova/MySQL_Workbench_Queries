with sales as
(
select t1.orderNumber, t1.customerNumber, t2.productCode, 
t2.quantityOrdered, t2.priceEach, priceeach*quantityOrdered as sales_value, 
t3.creditLimit
from classicmodels.orders t1
inner join classicmodels.orderdetails as t2
on t1.orderNumber=t2.orderNumber
inner join classicmodels.customers as t3 
on t1.customerNumber = t3.customerNumber
)

select ordernumber, customernumber, 
case when creditlimit<75000 then 'a: Less than $75K'
when creditlimit between 75000 and 100000 then  'b: $75K-$100K'
when creditlimit between 100000 and 150000 then  'b: $100K-$150K'
when creditlimit >150000 then 'd: over $150K'
end as creditlimit_group,

sum(sales_value) as sales_sum

from sales
group by ordernumber, customernumber, creditlimit 