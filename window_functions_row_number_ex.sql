with cte_main 
as

(SELECT t1.orderdate, t1.ordernumber, t2.salesRepEmployeeNumber,
row_number() over (partition by salesRepEmployeeNumber order by orderdate) as rep_order_num
FROM classicmodels.orders t1

inner join classicmodels.customers t2
on t1.customerNumber=t2.customerNumber
join classicmodels.employees t3
on t2.salesRepEmployeeNumber=t3.employeeNumber)

select *
from cte_main
where rep_order_num = 2
-- show every second order of a sales rep