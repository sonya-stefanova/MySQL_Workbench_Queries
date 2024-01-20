-- DISTINCT and ORDER BY

-- SELECT distinct country
-- FROM customers


-- SELECT * 
-- FROM CUSTOMERS
-- WHERE city like '%New%';

-- SELECT  distinct city, customerName 
-- FROM CUSTOMERS
-- WHERE city like '%New%';

SELECT * 
FROM employees
order by UPPER(lastName) DESC, firstName desc;