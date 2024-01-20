SELECT paymentDate, max(amount) as max_amount, min(amount) as min_amount
FROM classicmodels.payments
group by paymentdate
having paymentDate="2003-12-09"
order by paymentDate asc;
