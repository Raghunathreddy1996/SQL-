-- Case study 3
use casestudy

select * from Continent
select * from Customers
select * from Transac

--1. Display the count of customers in each region who have done the transaction in the year 2020.
select count(t.customer_id),co.region_name
from Customers as cu join Continent as co 
on cu.region_id = co.region_id
join Transac as t
on  t.customer_id = cu.customer_id
group by co.region_name
having year(t.txn_date) = 2000


select DISTINCT YEAR(TXN_DATE) FROM TRANSAC

--2. Display the maximum and minimum transaction amount of each transaction type.
 
SELECT MAX(TXN_AMOUNT) AS MAX_TRANSAC,
		MIN(TXN_AMOUNT) AS MIN_TRANSAC, 
		TXN_TYPE FROM TRANSAC
		GROUP BY TXN_TYPE

--3. Display the customer id, region name and transaction amount where
--transaction type is deposit and transaction amount > 2000.

select cu.customer_id, co.region_name, t.txn_amount
from Customers as cu join Continent as co 
on cu.region_id = co.region_id
join Transac as t
on  t.customer_id = cu.customer_id
where t.txn_type = 'deposite' and t.txn_amount > 2000

select distinct txn_amount from transac

---4. Find duplicate records in the Customer table.
select Customer_id, count(*) from Customers
group by customer_id
having count(*)>1

--5. Display the customer id, region name, transaction type and transaction
--amount for the minimum transaction amount in deposit.

select cu.customer_id, co.region_name, t.txn_type, t.txn_amount
from Customers as cu join Continent as co 
on cu.region_id = co.region_id
join Transac as t
on  t.customer_id = cu.customer_id
where t.txn_type = 'DEPOSIT' AND T.txn_amount= (SELECT MIN(TXN_AMOUNT) FROM TRANSAC)


--6. Create a stored procedure to display details of customers in the
--Transaction table where the transaction date is greater than Jun 2020.




7. Create a stored procedure to insert a record in the Continent table.
8. Create a stored procedure to display the details of transactions that
happened on a specific day.
--9. Create a user defined function to add 10% of the transaction amount in a table.

CREATE FUNCTION MULTIPLY(@A INT)
RETURNS TABLE
AS 
SET @a = TXN_AMOUNT FROM TRANSAC
RETURN  @a *1.10






