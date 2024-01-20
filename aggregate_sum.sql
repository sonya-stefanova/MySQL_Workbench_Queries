select paymentDate, round(sum(amount),2) as totalAmount 
from payments
group by paymentDate
having totalAmount>100000
order by totalAmount desc;


-- select paymentDate, count(paymentDate) as Orders 
-- from payments
