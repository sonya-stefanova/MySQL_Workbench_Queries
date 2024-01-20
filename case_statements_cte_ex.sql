-- SELECT *
-- FROM classicmodels.orders
-- WHERE COMMENTS LIKE '%NEGOTIATE%'


-- SELECT *, case when comments like '%negotiate%' then 1 else 0 end as negotiated
-- FROM classicmodels.orders

SELECT *, 
case when comments like '%dispute%' then 1 else 0 end as disputed, 
case when comments like '%negotiate%' then 'Negotiated order'
	 when comments like '%dispute%' then 'Disputed order'
     else 'No Dispute or negotiation' end as status_1
FROM classicmodels.orders
