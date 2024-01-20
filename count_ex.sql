
-- COUNT
select productCode,count(distinct ordernumber) as orders
from orderdetails
group by productCode


