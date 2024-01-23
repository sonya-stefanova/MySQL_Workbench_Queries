select t1.orderdate, t1.ordernumber, quantityordered, priceeach, productname, productline, buyprice, country, city
from classicmodels.orders t1
inner join classicmodels.orderdetails t2
on t1.ordernumber = t2.ordernumber
inner join classicmodels.products t3
on t2.productcode = t3.productcode
inner join classicmodels.customers t4
on t1.customernumber = t4.customernumber
where year(orderdate) = 2004