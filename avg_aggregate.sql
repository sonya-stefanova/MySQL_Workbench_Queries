SELECT paymentDate, max(amount) as max, min(amount) as min, round(avg(amount),2) as average_amount
FROM classicmodels.payments
group by paymentdate
-- having paymentDate="2003-12-09"
order by paymentDate asc;


SELECT round(avg(amount),2)
FROM classicmodels.payments
