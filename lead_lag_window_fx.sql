-- SELECT customernumber,
-- paymentdate,
-- amount,
-- lead(amount) over (partition by customernumber order by
-- paymentdate) as next_payment
-- FROM classicmodels.payments;

with cte_main 
as
(SELECT customernumber,
paymentdate,
amount,
lag(amount) over (partition by customernumber order by paymentdate) as preivous_payment
FROM classicmodels.payments)

select *, amount-preivous_payment as difference
from cte_main