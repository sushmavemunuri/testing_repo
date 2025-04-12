SELECT * FROM SALES;
SELECT SaleDate , Amount , Customers from sales;
SELECT SaleDate , Amount , Boxes, Amount/Boxes as 'amount per box' from sales;
select * from sales
where amount >10000
order by amount asc;
select * from sales 
where amount>1000 and  saledate >= '2022-01-01';
select saledate, amount from sales
where amount>10000 and year(saledate) = 2022
order by amount desc;
select saledate , amount , boxes, weekday(saledate) as 'day of week'
from sales 
where weekday(saledate) = 4;
select * from people
where salesperson like '%B%';
select  saledate , amount,
		CASE WHEN amount < 1000 then 'under 1k'
			 when amount < 5000 then 'under 5k'	
             when amount<10000  then 'under 10k'
			else '10k or more'
		end as 'amount category'
from sales;
desc geolocation;
select * from geolocation