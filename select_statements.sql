-- SELECT * FROM classicmodels.customers
-- WHERE contactLastName <> 'Young';

-- select customerName, contactFirstName, contactLastName, phone, city, country
-- from classicmodels.customers
-- WHERE country = "USA" AND contactFirstName="Julie";

-- select customerName, contactFirstName, contactLastName, phone, city, country 
-- from classicmodels.customers
-- where country = "Norway"
-- or country = "Sweden";



SELECT email
FROM classicmodels.employees
WHERE jobTitle = 'Sales Rep';

