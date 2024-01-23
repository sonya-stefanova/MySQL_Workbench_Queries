with main_cte as
(
with sales as
(
select t1.ordernumber, orderdate, customernumber, productcode, t2.quantityordered*priceeach as sales_value 
from orders t1 
inner join orderdetails t2 on t1.ordernumber=t2.ordernumber
)

select ordernumber, orderdate, customernumber, sum(sales_value) as sales_value
from sales
group by ordernumber, orderdate, customernumber),

sales_query as
(
select t1.*, customername, 
row_number() over (partition by t2.customername order by orderdate) as purchase_number, 
lag(sales_value) over (partition by t2.customername order by orderdate) as previous_purchase
from main_cte t1
inner join customers t2
on t1.customernumber = t2.customernumber)

select *, sales_value-previous_purchase as purchase_value_diff
from sales_query
where previous_purchase is not null