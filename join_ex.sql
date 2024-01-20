-- SELECT contactFirstName, contactLastName, orderDate, status
-- FROM classicmodels.orders t1
-- JOIN classicmodels.customers t2
-- ON t1.customerNumber = t2.customerNumber


select t1.contactFirstName, t1.contactLastName, t2.orderDate, t2.orderNumber
from customers t1
left join orders t2
on t1.customerNumber = t2.customerNumber
-- where t2.orderNumber is null;
