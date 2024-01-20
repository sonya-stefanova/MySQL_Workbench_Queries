SELECT *
from customers;

select *
from employees;

select 
	'customer' as type,
	contactfirstName as firstname, 
	contactlastname as lastname,
    city
from customers
union
select 
'employee' as type,
firstname, lastname,
'Unknown' as city
from employees;