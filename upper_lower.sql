select *
from employees
where lower(firstName) = 'leslie';
-- CTRL+SHIFT+U  gives the upper format

select *
from employees
where upper(email) = 'LJENNINGS@CLASSICMODELCARS.COM';

select *, upper(firstName) as uppercasename
from employees
where lower(firstName) = 'leslie';
-- CTRL+SHIFT+U  gives the upper format