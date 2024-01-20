select

case when creditLimit <75000 then 'a: less than $75K'
	when creditLimit between 75000 and 100000 then 'b: between $75K and $100k'
    when creditLimit > 100000 then 'c: over $100k'
	else 'Other' end as credit_limit_grp,
    count(distinct c.customernumber) as customers
    
from classicmodels.customers c
group by 1