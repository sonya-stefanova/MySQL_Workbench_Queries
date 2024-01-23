with prod_sales as
(
select ordernumber, t1.productcode, productline
from classicmodels.orderdetails t1
inner join  classicmodels.products t2 
on t1.productCode=t2.productcode
)

select distinct t1.ordernumber, t1.productline as product_one, t2.productline as product_two
from prod_sales t1
left join prod_sales t2
on t1.ordernumber=t2.ordernumber and t1.productline<>t2.productline 
