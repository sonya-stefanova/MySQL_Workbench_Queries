SELECT FIRSTNAME, LASTNAME, CUSTOMERNAME
FROM classicmodels.employees T1
LEFT JOIN classicmodels.customers T2
ON T1.employeeNumber= T2.salesRepEmployeeNumber;