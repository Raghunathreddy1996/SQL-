--case study 1
 create database casestudy
use casestudy

-- importing data
-- flat file - data contained in single table(col, row)
-- csv file - coma separed values

select * from fact
select * from location
select * from product

--1. Display the number of states present in the LocationTabls
select count(state) as number_of_states from location -- including duplicate

select count(distinct state) as number_of_states from location --without duplicate

select distinct count(state) as number_of_states from location 
-- above fist count execute then distinct so it wrong way to get distinct

--2. How many products are of regular type?

select count(product) as no_of_product  from product 
where type = 'regular'


select count(*) as no_of_product  from product 
where type = 'regular'

--3. How much spending has been done on marketing of productID = 1
select * from fact

select sum(marketing) as total_marketing from fact
where productID = 1

select productID, sum(marketing) as total_marketing from fact 
where productID = 1
group by productID 

-- we just use more column in aggregator without using group by functiion
--varchar - it limit only used main laguage
--nvarchar- allow theunicode character - all the regional laguqage


--4. What is the minimum sales of the product

select min(sales) as min_sales from fact

--5. Display the max Cost of Good Sold (COGS)

select max(cogs) as max_cogs from fact

--6. Display the details of the product where product type of coffee
select *  from product
select * from product where product_type = 'coffee'

--7. Display the details where total expenses are greater than 40
select *  from fact where Total_expenses>40 order by total_expenses

--8. What is the average sales in araea code 719?
select avg(sales)  from fact where area_code = 719


select area_code, avg(sales)  from fact where area_code = 719 group by area_code

--9. Find out the total profit generated by Colorado state
select *  from fact
select *  from location

-- join- used to combine different table data on common column
--operator - used to combine the result of diff select quesry

select l.state, sum(f.profit)  as profit_of_colorado
from fact as f
inner join
location as l
on f.area_code = l.area_code
where l.state = 'colorado'
group by l.state

--10. Display the average inventory for each productID
select *  from fact
select productID, avg(inventory) as Inventry from fact
group by productID
order by productID

--11. Display state in a sequential order in a Location Table

select distinct state from location
order by state

select distinct state from location
order by state desc

--12. Display the average budget of the Product where the average budget
--margin should be greater than 100

select productID, avg(budget_margin) as avg_margin from fact
group by productID
having avg(budget_margin)>100
order by productid


--13. What is the total sales done on date 2010-01-01?
select sum(sales) as total_sales from fact where date = '2010-01-01'

select date, sum(sales) as total_sales from fact where date = '2010-01-01' group by date

--14. Display the average total expense of each product ID on an individual date.
select productID , date,avg(total_expenses) as avg_expenses from fact
group by productid, date
order by productid
==============================
--15. Display the table with the following attributes such as 
--date, productID, product_type, product, sales, profit, state, area_code
select *  from fact
select *  from product
select * from location

select f.date, f.productid, p.product_type, p.product, f.sales, f.profit, l.state, f.area_code
from fact as f 
inner join product as p 
on f.productid = p.productid
join location as l
on f.area_code = l.area_code 
--order by productid


--16. Display the rank without any gap to show the sales wise rank.
select *  from fact

select *,
DENSE_RANK() over(order by sales desc) from fact

select *,
RANK() over(order by sales) from fact

 --17. Find the state wise profit and sales
 select l.state, sum(f.profit) as total_profit, sum(f.sales) as total_sale
 from fact as f
 inner join
location as l
on f.area_code = l.area_code 
group by l.state


--18. Find the state wise profit and sales along with the productname. 

 select l.state, p.product,sum(f.profit) as total_profit, sum(f.sales) as total_sale
 from fact as f
 inner join
 product as p
 on f.productid = p.productid
 inner join
location as l
on f.area_code = l.area_code 
group by l.state, p.product

--19. If there is an increase in sales of 5%, calculate the increasedsales.
select sales, (sales*1.05) as increased_sales from fact

--20. Find the maximum profit along with the product ID and producttype. 
select  f.productid,f.profit, p.product_type from fact as f
inner join product as p
on f.ProductId = p.productid
where f.profit = (select max(profit) from fact)

--21. Create a stored procedure to fetch the result according to the product type from Product Table.
create procedure type_of_product
@pt varchar(20)
as
select * from Product
where product_type = @pt

exec type_of_product @pt = 'tea'
exec type_of_product @pt = 'coffee'

--22. Write a query by creating a condition in which if the total expenses is less than 60 then it is a profit or else loss. 

select total_expenses ,
iif(total_expenses < 60, 'profit', 'loss') as status from fact

--23. Give the total weekly sales value with the date and product ID details. Use roll-up to pull the data in hierarchical order. 

select date, productid, sum(sales) as total_sales from fact
group by date, productid with rollup

select date, productid, sum(sales) as total_sales from fact
group by date, productid 


--24. Apply union and intersection operator on the tables which consist of attribute area code.

select * from fact
union
select * from location



select area_code from fact
union
select area_code from location

select area_code from fact
intersect
select area_code from location

--25. Create a user-defined function for the product table to fetch a particular product type based upon uses preference
create function get_product(@pt varchar(20))
returns table
as
return select * from product
		where product_type = @pt

select * from dbo.get_product('tea')


--26. Change the product type from coffee to tea where product ID is 1 and undo it.
begin transaction
update product
set product_type = 'tea'
where productid = 1


select * from product

rollback transaction
--27. Display the date, product ID and sales where total expenses are between 100 to 200.
select date, productid, sales, total_expenses from fact
where total_expenses between 100 and 200 


--28. Delete the records in the Product Table for regular type
delete  from product
where type = 'regular'

select * from product


--29. Display the ASCII value of the fifth character from the column product
select ascii('a')  as ascii_of_a
SELECT PRODUCT,SUBSTRING(PRODUCT,5,1) AS [CHARACTERS],ASCII(SUBSTRING(PRODUCT,5,1)) AS [ASCII VALUE] 
FROM PRODUCT





