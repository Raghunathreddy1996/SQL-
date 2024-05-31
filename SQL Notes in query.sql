create database TestDatabase -- command to create a new database

DROP DATABASE TestDatabase   -- command to drop a database
======================================
Create table employee
(
ID int not null primary key,
name varchar(50) not null,
age tinyint null
)

select * from employee
drop table employee
=============================================
create table employeedetails
(
E_id int not null,
Name varchar(50) not null,
age tinyint not null,
Gender varchar not null,                              
city varchar not null,
contact varchar(12)
)
select * from employeedetails

DROP TABLE employeedetails
======================================
create table customer
(
CID int not null,
Name varchar(100) not null,
Address varchar(50) not null,
Ph_no varchar(12)
)
select * from customer

insert into customer
values
(1,'abc','xyz',123),
(2,'def','ynx',456),
(3,'sdfg','sferf',646)

drop table customer

=========================================
Create Table Person1
(
PID INT NOT NULL, 
Name varchar(32) NOT NULL, 
Address varchar(64) NOT NULL, 
DOB Date NULL, 
Primary Key(PID)
)

insert into person (pid, name, address, dob)
values(1,'Mahesh', 'Pune', '2000-01-15')

select * from person 

insert into person 
values(2,'Asma', 'Mumbai', '2002-02-10')

insert into person 
values
(3,'Nadaf', 'Kolkata', '2005-02-10'),
(4,'Amit', 'Goa', NULL),
(5,'Ekwulu', 'Ranchi', '2002-02-10'),
(6,'Asma', 'Pune', NULL)

insert into person (pid, name, address)
values(7,'Asma', 'Pune')

select * from person1
 drop table person1
==============================================
create table employeedetails
(
EID int not null,
Name varchar(32)not null,
Address varchar(64),
Age int null
)
 insert into employeedetails(EID, Name, Address, age)
 VALUES
  (1, 'Dave', 'Pune', 20),
  (2, 'Disha', 'Mumbai', 31),
  (3, 'Tom', 'Delhi', 45),
  (4, 'Liza', 'Thane', 23),
  (5, 'Harry', 'Aurangabad', 36)

 select * from EmployeeDetails


==================================================
CREATE TABLE [dbo].[Person]
(
	[PID] [int] NOT NULL PRIMARY KEY,
	[Name] [varchar](32) NOT NULL,
	[Address] [varchar](64) NOT NULL,
	[MobileNumber] [int] NOT NULL,
	[DOB] [date] NULL,
	[BloodGroup] [varchar](4) NULL
)
GO
CREATE TABLE [dbo].[Employee]
(
	[ID] [int] NOT NULL PRIMARY KEY,
	[Name] [varchar](64) NOT NULL,
	[Salary] [int] NOT NULL,
	[Age] [int] NOT NULL,
	[Gender] [varchar](16) NULL,
	[Dept] [varchar](50) NULL
)
GO
CREATE TABLE [dbo].[Department]
(
	[ID] [int] NOT NULL PRIMARY KEY,
	[Name] [varchar](50) NOT NULL,
	[Location] [varchar](50) NOT NULL
)
GO
CREATE TABLE [dbo].[CustomerDetails]
(
	[CID] [int] NOT NULL PRIMARY KEY,
	[Name] [varchar](64) NOT NULL,
	[Age] [int] NOT NULL,
	[Mobile] [varchar](12) NOT NULL
)
GO
CREATE TABLE [dbo].[OrderDetails]
(
	[OID] [int] NOT NULL PRIMARY KEY,
	[Item] [varchar](32) NOT NULL,
	[Amount] [int] NOT NULL,
	[Notes] [varchar](256) NULL,
	[CID] [int] NOT NULL
)
GO



INSERT [dbo].[Department] ([ID], [Name], [Location]) VALUES (1, N'Content', N'Delhi')
GO
INSERT [dbo].[Department] ([ID], [Name], [Location]) VALUES (2, N'Operations', N'New York')
GO
INSERT [dbo].[Department] ([ID], [Name], [Location]) VALUES (3, N'Sales', N'Mumbai')
GO
INSERT [dbo].[Department] ([ID], [Name], [Location]) VALUES (4, N'Tech', N'New York')
GO
INSERT [dbo].[Department] ([ID], [Name], [Location]) VALUES (5, N'Analytics', N'Kolkata')
GO
INSERT [dbo].[Employee] ([ID], [Name], [Salary], [Age], [Gender], [Dept]) VALUES (1, N'Sam', 10400, 52, N'M', N'Operations')
GO
INSERT [dbo].[Employee] ([ID], [Name], [Salary], [Age], [Gender], [Dept]) VALUES (2, N'Bob', 7010, 28, N'M', N'Support')
GO
INSERT [dbo].[Employee] ([ID], [Name], [Salary], [Age], [Gender], [Dept]) VALUES (3, N'Julia', 5010, 29, N'F', N'Analytics')
GO
INSERT [dbo].[Employee] ([ID], [Name], [Salary], [Age], [Gender], [Dept]) VALUES (4, N'Anne', 8010, 32, N'F', N'Analytics')
GO
INSERT [dbo].[Employee] ([ID], [Name], [Salary], [Age], [Gender], [Dept]) VALUES (5, N'Matt', 5110, 34, N'M', N'Sales')
GO
INSERT [dbo].[Employee] ([ID], [Name], [Salary], [Age], [Gender], [Dept]) VALUES (6, N'Asma', 7410, 28, N'F', N'Operations')
GO
INSERT [dbo].[Employee] ([ID], [Name], [Salary], [Age], [Gender], [Dept]) VALUES (7, N'Piyush', 9110, 31, N'M', N'Sales')
GO
INSERT [dbo].[Employee] ([ID], [Name], [Salary], [Age], [Gender], [Dept]) VALUES (8, N'Anne', 9100, 35, N'F', N'Sales')
GO
INSERT [dbo].[Employee] ([ID], [Name], [Salary], [Age], [Gender], [Dept]) VALUES (9, N'Swati', 7510, 25, N'F', N'Support')
GO
INSERT [dbo].[Employee] ([ID], [Name], [Salary], [Age], [Gender], [Dept]) VALUES (10, N'Jhon', 6610, 55, N'M', N'Analytics')
GO
INSERT [dbo].[Person] ([PID], [Name], [Address], [MobileNumber], [DOB], [BloodGroup]) VALUES (1, N'Ashok', N'Delhi', 1234, CAST(N'2000-01-15' AS Date), N'A+')
GO
INSERT [dbo].[Person] ([PID], [Name], [Address], [MobileNumber], [DOB], [BloodGroup]) VALUES (2, N'Sundar', N'Pune', 4321, CAST(N'2001-01-15' AS Date), N'AB+')
GO
INSERT [dbo].[Person] ([PID], [Name], [Address], [MobileNumber], [DOB], [BloodGroup]) VALUES (3, N'Askshat', N'Mumbai', 9999, CAST(N'1985-01-15' AS Date), N'B+')
GO
INSERT [dbo].[Person] ([PID], [Name], [Address], [MobileNumber], [DOB], [BloodGroup]) VALUES (4, N'Sushmita Yadav', N'Kolkata', 6666, CAST(N'2002-01-15' AS Date), N'O+')
GO
INSERT [dbo].[Person] ([PID], [Name], [Address], [MobileNumber], [DOB], [BloodGroup]) VALUES (5, N'Priya', N'Goa', 2341, CAST(N'1995-01-15' AS Date), N'B+')
GO
INSERT [dbo].[Person] ([PID], [Name], [Address], [MobileNumber], [DOB], [BloodGroup]) VALUES (6, N'Rohan', N'Patna', 2341, CAST(N'1995-01-15' AS Date), N'B+')
GO
INSERT [dbo].[Person] ([PID], [Name], [Address], [MobileNumber], [DOB], [BloodGroup]) VALUES (7, N'''Syed', N'Mumbai', 2341, CAST(N'1995-01-15' AS Date), N'B+')
GO
INSERT [dbo].[Person] ([PID], [Name], [Address], [MobileNumber], [DOB], [BloodGroup]) VALUES (8, N'Vidish', N'Punjab', 55667, CAST(N'2005-05-15' AS Date), N'B+')
GO
INSERT [dbo].[Person] ([PID], [Name], [Address], [MobileNumber], [DOB], [BloodGroup]) VALUES (9, N'Swapnil', N'Kolkata', 32145, CAST(N'1989-06-01' AS Date), N'A+')
GO
INSERT [dbo].[Person] ([PID], [Name], [Address], [MobileNumber], [DOB], [BloodGroup]) VALUES (10, N'Devika', N'Patna', 65434, CAST(N'1995-09-10' AS Date), N'A+')
GO
INSERT [dbo].[Person] ([PID], [Name], [Address], [MobileNumber], [DOB], [BloodGroup]) VALUES (11, N'Neha', N'Pune', 2654, NULL, NULL)
GO
INSERT [dbo].[Person] ([PID], [Name], [Address], [MobileNumber], [DOB], [BloodGroup]) VALUES (12, N'Radhika''s', N'Bangalore', 34521, CAST(N'2002-01-15' AS Date), N'O-')
GO
INSERT [dbo].[Person] ([PID], [Name], [Address], [MobileNumber], [DOB], [BloodGroup]) VALUES (13, N'Radhika''''s', N'Bangalore', 34521, CAST(N'2002-01-15' AS Date), N'O-')
GO
INSERT [dbo].[Person] ([PID], [Name], [Address], [MobileNumber], [DOB], [BloodGroup]) VALUES (14, N'Ashok', N'Kolkata', 9831, CAST(N'1994-04-03' AS Date), N'AB+')
GO
INSERT [dbo].[Person] ([PID], [Name], [Address], [MobileNumber], [DOB], [BloodGroup]) VALUES (15, N'Test%Case', N'TestAddress', 12345, CAST(N'2002-01-15' AS Date), N'O-')
GO
INSERT [dbo].[Person] ([PID], [Name], [Address], [MobileNumber], [DOB], [BloodGroup]) VALUES (30, N'Askshat', N'Mumbai', 9999, CAST(N'2002-01-15' AS Date), N'B+')
GO
INSERT [dbo].[Person] ([PID], [Name], [Address], [MobileNumber], [DOB], [BloodGroup]) VALUES (40, N'Shushmita Yadav', N'Kolkata', 6666, CAST(N'2002-01-15' AS Date), N'O+')
GO
INSERT [dbo].[Person] ([PID], [Name], [Address], [MobileNumber], [DOB], [BloodGroup]) VALUES (50, N'Priya', N'Goa', 2341, CAST(N'1995-01-15' AS Date), N'B+')
GO
INSERT [dbo].[Person] ([PID], [Name], [Address], [MobileNumber], [DOB], [BloodGroup]) VALUES (51, N'abc', N'abc', 123, CAST(N'2000-01-15' AS Date), N'a+')
GO
INSERT [dbo].[Person] ([PID], [Name], [Address], [MobileNumber], [DOB], [BloodGroup]) VALUES (52, N'abc', N'abc', 123, CAST(N'2000-01-15' AS Date), N'a+')
GO
INSERT [dbo].[Person] ([PID], [Name], [Address], [MobileNumber], [DOB], [BloodGroup]) VALUES (60, N'Raaja', N'Noida', 6754, CAST(N'2005-05-23' AS Date), N'O+')
GO
INSERT [dbo].[CustomerDetails] ([CID], [Name], [Age], [Mobile]) VALUES (1, N'Rahul', 28, N'12345')
GO
INSERT [dbo].[CustomerDetails] ([CID], [Name], [Age], [Mobile]) VALUES (2, N'Nadar', 29, N'34567')
GO
INSERT [dbo].[CustomerDetails] ([CID], [Name], [Age], [Mobile]) VALUES (3, N'Yogita', 27, N'98765')
GO
INSERT [dbo].[CustomerDetails] ([CID], [Name], [Age], [Mobile]) VALUES (4, N'Debabrata', 34, N'77788')
GO
INSERT [dbo].[CustomerDetails] ([CID], [Name], [Age], [Mobile]) VALUES (6, N'Meha', 28, N'776655')
GO
INSERT [dbo].[OrderDetails] ([OID], [Item], [Amount], [Notes], [CID]) VALUES (10, N'Idli', 50, NULL, 3)
GO
INSERT [dbo].[OrderDetails] ([OID], [Item], [Amount], [Notes], [CID]) VALUES (11, N'Dhosa', 90, N'extra chutni', 1)
GO
INSERT [dbo].[OrderDetails] ([OID], [Item], [Amount], [Notes], [CID]) VALUES (12, N'Samosa', 30, N'extra chutni', 4)
GO
INSERT [dbo].[OrderDetails] ([OID], [Item], [Amount], [Notes], [CID]) VALUES (15, N'Biriyani', 350, N'Salad', 2)
GO
INSERT [dbo].[OrderDetails] ([OID], [Item], [Amount], [Notes], [CID]) VALUES (16, N'Momo', 120, N'Extra Soup', 7)
GO
INSERT [dbo].[OrderDetails] ([OID], [Item], [Amount], [Notes], [CID]) VALUES (17, N'Momo', 120, N'Extra Soup', 7)
GO

select * from Person
select * from Employee
select * from Department
select * from CustomerDetails
select * from OrderDetails
GO

drop table person
drop table employee
drop table department 
drop table customerdetails
drop table orderdetails

===================================================================
-- I want to see person details where address is Goa
 select * from person 
 where address = 'goa'

-- I want to see person details where address is kolkata and blood group is O+
select * from person
where address = 'kolkata' and bloodgroup = 'o+'

-- I want to see person details where id is less than 5
select * from person
where pid < 5

-- AND operator========================

-- show me the O+ blood group person details present in kolkata location
select * from person 
where Address = 'Kolkata'

select * from person
where BloodGroup = 'O+'

select * from person
where Address = 'Kolkata' AND BloodGroup = 'O+' AND PID < 10

-- OR operator====================================
-- show me the person details if the person is from goa OR the person is O+

select * from person where Address = 'goa'

select * from person where BloodGroup = 'O+'

select * from person
where Address = 'Goa' OR BloodGroup = 'O+'

select * from person
where PID < 5 OR BloodGroup = 'O+' 

select * from person
where PID between 2 and 5

select * from dbo.Person
where BloodGroup  between 'a+' and 'B+'

select * from dbo.Person
where PID >= 2 AND PID <= 5


-- Not operator===========================================

select * from person where address='kolkata'

select * from person where NOT address = 'Kolkata'
select * from person where address <> 'Kolkata'
select * from person where address != 'Kolkata'

select * from person where PID=11
select * from Person where BloodGroup = 'A+'
select * from dbo.Person where Address = 'Kolkata' AND BloodGroup = 'O+'
select * from dbo.Person where Address = 'Kolkata' OR BloodGroup = 'A+'
select * from dbo.Person where BloodGroup <> 'A+'
select * from dbo.Person where BloodGroup != 'A+'

-- checking null values
select * from Person where DOB IS NULL 

select * from Person where DOB IS NOT NULL 

select * from Person where BloodGroup IS NULL 
select * from Person where BloodGroup IS NOT NULL 
select * from Person where DOB IS NULL AND BloodGroup IS NULL

========================================================
CREATE TABLE EmployeeDetails
(
E_ID int not null PRIMARY KEY,
E_Name varchar(64) not null,
E_Address varchar(256) not null,
E_Age tinyint null
)
INSERT INTO EmployeeDetails 
VALUES
(1,'SANTHOSH','KOLKATA',43),
(2,'THAMAN','CHENNAI',26),
(3,'HARSH','BANGALORE',40),
(4,'SAMHITH','DELHI',26),
(5,'SAMARTH','KANPUR',24)

-- show employee details for only aged below 40
select * from EmployeeDetails where E_Age < 40 

========================================class 4 
-- like operators:
select * from person
where name like 'a%' --% wildcard

select * from person
where bloodgroup like 'o%'

select * from person
where name like '%a' 

select * from Person where Name like '%a%'
select * from Person where DOB like '1995-%'

select * from Person where MobileNumber like '%4_'

-- what if we have to search '%' charecter in like command
select * from Person where name like '%[%]%'

select * from Person where Name like '''%'
-- to use ' as a string charecter, we need to use ''

================================================================
-- In / Not In Operator:
select * from Person 
where BloodGroup IN ('AB+', 'O+', 'B+') 

select * from Person 
where BloodGroup NOT IN ('AB+', 'O+', 'B+')

===============================================================
-- Between Operator:

-- show me the employee details getting salary between 5000 to 8000
select * from employee 
where salary between 5000 and 8000 

-- show me the employee details where age is between 25 to 30
select * from employee 
where age between 25 and 30 -- 25 <= age AND  age <= 30

-- fulfil the requirement without using between operator
select * from employee 
where 25 <= age AND  age <= 30

=======================================================================
-- Distinct Operator:

-- show me only the available bloodgroups in the person table
select distinct bloodgroup from person 

select distinct bloodgroup from person where BloodGroup IS NOT NULL

-- show me the different address available in person table 
select distinct Address from person 


============================================================================
--UPDATE clause
-- Update a single value
-- update the age of employeeid 1
update employeedetails
set age = 29
where eid = 1

select * from employeedetails

-- update multiple values 
-- if the age is 26 then please update it as 30
update employeedetails
set age  = 45
where age = 40 

update employeedetails
set name = 'reddy', address = 'bidar'
where eid = 2

update employeedetails
set age = 38
where age in (36,23)

=======================
select * from person

UPDATE person
set DOB = '2008-09-10'
where PID = 4

UPDATE person
set DOB = '2000-01-01'
where DOB IS NULL

UPDATE person
set name = 'Mohan'
where name = 'Rohan'

select * from person 

update person
set name = 'ankaan', address = 'Pune'
where name ='Sundar'

update person
set DOB = null
where DOB = '2000-01-01'

update person 
set DOB = null
where name = 'ankaan' and address = 'pune'

update person
set DOB = NULL 
WHERE Name = 'Mohan' OR Address = 'Pune'

update person
set PID = 35
where PID = 30

select * from person 

update person
 set Name = 'raghu' , Address = 'Bidar'
 where PID = 51

 ===============================================
 -- delete -- when we need to remove some data from the table

 -- remove the record where student id is 5
delete from student where id = 5

-- remove the records where address is chennai 
delete from student where address = 'Chennai'

-- remove the records of student where age is not 0
Delete from student where age <> 0


delete from person
where PID = 11

delete from person
where address = 'Bidar'

delete from person where PId = 2 or pid = 11

delete from person where PID in(11,12,16)

delete from person where DOB is null

delete from person -- it will all the data

drop table person -- it will delete the table 
select * from person


-- PID 3 got a job and would be a part of employee table
insert into employee (ID, name)
select PID, Name from person where PID = 3
GO

-- How we can insert data into a from from a different table
-- PID 2 & 5 got a job and would be a part of employee table
insert into employee (ID, name)-- values syntax is not used here 
select PID, Name from person where PID in (1,5)

======================================================
select * from person
select * from dbo.employee
select * from demo.dbo.Employee 

-- SCHEMA : is logical separation betwenn tables( default dbo)
-- demo is database
--creating new schema

CREATE Schema HR
create table hr.test
(
ID int, 
name varchar(12)
)
drop table hr.test

drop schema hr


===========================================
-- Join operations :
-- to map two or more decomposed table into one output
-- why? to get required information from multiple tables
-- how? using join operators (Inner, Left, Right and Full join) 
---INNER JOIN--- MATCHING ROWS
--lEFT JOIN--- ALL ROWS FROM LEFT TABLE AND MATCHING FROM RIGHT 




-- please show employee name, age, department and location

select e.ID, e.name, e.age, e.dept, d.location
from employee as e inner join department as d
on e.dept = d.name

select e.ID, e.name, e.age, e.dept, d.location
from employee as e inner join department as d
on e.dept = d.name
where e.age > 30

select 
t1.Name as EmployeeName, 
t1.Salary as EmployeeSalary, 
t1.Age as EmplyeeAge, 
t2.Location as EmployeeLocation
from 
employee as t1
INNER JOIN 
Department as t2
ON t1.dept = t2.name
where t1.name = 'asma'



select *
from 
employee as t1
LEFT JOIN 
Department as t2
ON t1.dept = t2.name
where t2.Location = 'New York'

select *
from 
employee as t1
RIGHT JOIN
Department as t2
ON t1.dept = t2.name


select *
from 
employee as t1
FULL JOIN
Department as t2
ON t1.dept = t2.name


-- show me employee ID, Name, Salary, Age of Mumbai
SELECT e.id, e.name, e.salary, e.age, d.location
from
employee as e
inner join
department as d
on e.dept = d.name
where location = 'mumbai'

select e.ID, e.Name as E_Name, e.Salary, d.Location, d.Name as D_Name
from
employee as e
INNER JOIN 
Department as d
ON e.dept = d.name
where e.salary > 7000

select * 
from employee as e inner join department as d
on e.dept = d.name

select * 
from employee as e  LEFT JOIN Department as d
ON e.dept = d.name

select * 
from employee as e  RIGHT JOIN Department as d
ON e.dept = d.name

select * 
from employee as e  FULL JOIN Department as d
ON e.dept = d.name

select e.ID as e_id, e.Name as e_name, e.Age as e_age, d.Location as d_location
from
employee as e
INNER JOIN 
Department as d
ON e.dept = d.name
where e.Gender = 'F' AND d.Location = 'Kolkata'

-- please show customer name, mobile, item, amount
Select c.name,c.mobile,o.item,o.amount
from 
Customerdetails as c
Inner join
Orderdetails as o
On c.cid = o.cid


select * from employee
select * from department
select *  from customerdetails
=========================================================

-- show businessentityid, phonenumber, phonenumbertype 
-- for a report from 2009 onwards..... 
select * from person.PersonPhone
select * from person.ContactType

SELECT A.BusinessEntityID, A.PhoneNumber, B.Name as PhoneNumberType
from person.PersonPhone as A INNER JOIN person.ContactType as B
ON A.PhoneNumberTypeID = B.ContactTypeID
where A.ModifiedDate >= '2009-01-01'
GO

-- Task: Join 
-- show us a report about businessentityid and their address type
-- arrange the report based on latest business date
select * from person.addresstype
select * from person.BusinessEntityAddress

select b.BusinessEntityID, a.Name as AddressType 
from 
person.addresstype a inner join person.BusinessEntityAddress b
on a.AddressTypeID = b.AddressTypeID
order by b.ModifiedDate desc

=========================================================================class 6
-- update using join operator
-- increase salary by 100 for the employees whos department is located in Mumbai
select *
from 
employee as e inner join department as d
on e.dept = d.name
where d.location = 'mumbai'

update employee
set
employee.salary = employee.salary + 100,
employee.age = employee.age+1
 from 
 employee  inner join department 
 on
 employee.dept = department.name
  where department.location='mumbai'


 where employee.ID = 5


 -- delete using join operator 
-- fire all the employees where the department location is newyork

select * 
from 
employee inner join department
on employee.dept = department.name
where department.location = 'new york'


select * from employee
select * from department

delete employee
from 
employee inner join department
on employee.dept = department.name
where department.location = 'new york'
===================================================
-- Delete all the employee records where department location is Kolkata
select *
from dbo.employee as t1
INNER JOIN 
dbo.Department as t2
ON t1.dept = t2.name
where t2.Location = 'Kolkata'
GO

delete t1
from dbo.employee as t1
INNER JOIN 
dbo.Department as t2
ON t1.dept = t2.name
where t2.Location = 'Kolkata'


==========================================================


select * from CustomerDetails
select * from OrderDetails

-- please show customer name, mobile, item, amount

select cd.name, cd.mobile, od.item, od.amount
from
CustomerDetails as cd
inner join 
OrderDetails as od
on cd.cid = od.cid

-- update the order item as upma for customer name yogita 
update od 
set 
od.item = 'Idli', od.amount = 55 
from
CustomerDetails as cd 
inner join 
OrderDetails as od
on cd.cid = od.cid
where cd.name = 'Yogita'

-- delete the order placed by yogita 
delete od 
from 
CustomerDetails as cd 
inner join 
OrderDetails as od
on cd.cid = od.cid
where cd.name = 'Yogita'


-- delete the order placed by Rahul
delete od 
from 
CustomerDetails as cd 
inner join 
OrderDetails as od
on cd.cid = od.cid
where cd.name = 'Rahul' 
====================================
-- Merge Operator

-- source table --> Is only for reference/ no operation will be performed on source table
-- target table --> Insert/ Update/ Delete operations will be performed to target table 

-- Performs insert, update and delete operations on a target table 
-- from the results of a join between the source and target table. 

--For example, synchronize two tables by inserting, updating, or deleting rows 
-- in one table based on differences found in the other table.

--transactional table --> reporting table

CREATE TABLE SourceProducts
(
    ProductID INT,
    ProductName VARCHAR(50),
    Price DECIMAL(9,2)
)
INSERT INTO SourceProducts(ProductID,ProductName, Price)
VALUES
(1,'Table',100),
(2,'Desk',80),
(3,'Chair',50),
(4,'Computer',300)


CREATE TABLE TargetProducts
(
    ProductID INT,
    ProductName VARCHAR(50),
    Price DECIMAL(9,2)
)
INSERT INTO TargetProducts(ProductID,ProductName, Price) 
VALUES
(1,'Table',100),
(2,'Desk',180),
(5,'Bed',50),
(6,'Cupboard',300)
SELECT * FROM SourceProducts
SELECT * FROM TargetProducts


MERGE targetproducts as Target
using Sourceproducts as source
on source.productID = Target.ProductID
-- for insert
when not matched by target then
    insert(ProductID,ProductName, Price) 
     VALUES (Source.ProductID,Source.ProductName, Source.Price)

-- for update
when matched then
update
set 
  Target.ProductName	= Source.ProductName,
        Target.Price  = Source.Price

-- For Deletes
WHEN NOT MATCHED BY Source THEN
    DELETE;

=============================================================
-- Alter table command

create table alter_test
(
ID int,
Name varchar(10)
)
select * from alter_test

-- to add the column
ALTER TABLE alter_test
add age tinyint null

-- Add multiple column 
alter table alter_test
add col1 int null, col2 int not null

-- remove a column 
alter table alter_test
drop column age

-- remove multiple column 
alter table alter_test
drop column col1, col2

-- modify column
alter table alter_test
alter column Name varchar(32) not null

-- modify multiple columns , we need modify column seperatly
alter table alter_test
alter column ID int not null

alter table alter_test
alter column Name varchar(64) not null 


-- Rename a table
EXEC sp_rename 'alter_Test', 'TestCase'
GO
execute sp_rename 'Reddy', 'testcase'
select * from testcase

-- Rename a column
EXEC sp_rename 'testcase.Name', 'fullName', 'column'
GO

-------------------------
alter table employee
add Experience int null
go

 alter table employee
 drop column experience

 ALTER TABLE dbo.Employee 
ALTER COLUMN Name varchar(32) NULL

-- Rename a table
exec sp_rename 'customerdetails','customer' ;

-- Rename a column
EXEC sp_rename 'customer.Mobile', 'Phone no', 'column';
GO

alter table testcase
alter column ID int not null

-- Add primary key
ALTER TABLE TestCase 
ADD CONSTRAINT PK_TestCase_ID PRIMARY KEY  CLUSTERED 
( ID ASC )

-- drop primary key
ALTER TABLE TestCase
DROP CONSTRAINT PK_TestCase_ID


=================================================

-- Temp table OR Hash table


-- use of temptable (store table data temporarily)
-- scope of temptable (only within the session)
-- we can not see the temptable from any other session
-- operation is same as normal table
-- When the temptable will be dropped (As soon as we close the session)
-- temp table name starts with a '#' and rest syntax is same
-- the existence of temp table is only within the session where created 
-- the temp table will be dropped as soon as the originating session is closed 

CREATE TABLE #TestTable
(
    ProductID INT,
    ProductName VARCHAR(50),
    Price DECIMAL(9,2)
)
GO
insert into #TestTable 
values 
(1, 'abc', 10.2)

select * from #TestTable
GO

-- use case of temp table
create table #temp
(
pid int, 
name varchar(32),
address varchar(32),
bloodgroup varchar(4)
)
select * from person

insert into #temp
select pid, name, address, BloodGroup from person 
where address = 'goa'
where address in ('Mumbai', 'Punjab')

select * from #temp

============
-- Global Temp table name starts with '##'

-- Existance of global temp table is across sessins
-- Once source session is termineted, the global temp table is also dropped

create table ##testtable
(
	ProductID INT,
    ProductName VARCHAR(50),
    Price DECIMAL(9,2)
)
insert into ##TestTable 
values 
(1, 'abc', 10.2)
GO
select * from ##TestTable


-- difference between local and global temp table

-- Scope of local temp table is only within the session/connection 
-- Scope of global temp table is across the sessions/connections 




===================================================
--Agreagte function

select * from employee

select avg(age) as average_age from employee
select avg(Salary) as average_salary from employee

-- count function alway ignor null n count so we use not null column to count
select count(ID) as count from employee
select count(NAme ) as count from employee

select max(salary) from employee
select max(age) from employee

select MIN(Salary) as Min_Salary from Employee
select MIN(Age) as Min_Age from Employee

select SUM(Salary) as SUM_Salary from Employee
select SUM(Age) as SUM_Age from Employee
GO

==========================================================
-- Date Functions

-- date time format in SQL
2023-06-10 22:18:41.383
--yyyy-mm-dd hh:mm:ss.ms

select current_timestamp

select GETUTCDATE()
select GETDATE()

select day('2024-02-19 02:34:32.597')
select month('2024-02-19 02:34:32.597')
select year('2024-02-19 02:34:32.597')

select DAY(GETDATE())
select MONTH(GETDATE())
select YEAR(GETDATE())

select EOMONTH('2023-12-02') -- last day of the month

select EOMONTH(GETDATE())

select DATEADD(MONTH, 2, '2023-04-02')
select DATEADD(DAY, -5, '2023-04-02')
select DATEADD(YEAR, 10, '2023-04-02')

select DATEDIFF(DAY, '2023-04-02', '2023-04-12')
select DATEDIFF(MONTH, '2023-04-02', '2023-06-12')
select DATEDIFF(YEAR, '2023-04-02', '2026-06-12')
select DATEDIFF(HOUR, '2023-04-02 10:30', '2023-04-02 18:30')
select DATEDIFF(MINUTE, '2023-04-02 10:30', '2023-04-02 18:30')


select DATEDIFF(DAY, '2022-04-12', '2023-04-12') as day_diff, 
	   DATEDIFF(MONTH, '2022-04-12', '2023-04-12') as month_diff, 
	   DATEDIFF(YEAR, '2022-04-12', '2023-04-12') as year_diff

======================================================

-- String Function

select 'A' + '                        BCD'
select 'A' + LTRIM('                        BCD')
GO

select 'ABC                        ' + 'D'
select RTRIM('ABC                        ') + 'D'
GO

select 'ABC' + '                   -                        ' + 'DEF'
select 'ABC' + TRIM('                   -                        ') + 'DEF'
GO


select LOWER('ABC')
select UPPER('abc')
select REVERSE('ABCD')
GO

-- select substring(string value, position, leangth)
select SUBSTRING('ABCD', 2,2)

'abc' --> 'Abc'
SELECT UPPER(SUBSTRING('abc', 1, 1)) + 'bc'

dEbABrAtA --> Debabrata
select UPPER(SUBSTRING('dEbABrAtA', 1, 1)) + LOWER(SUBSTRING('dEbABrAtA', 2, 100))

raghuNaThReddy > RaghunathReddy

select upper(substring('raghuNaThReddy',1,1))+ lower(substring('raghuNaThReddy',2,8)) + upper(substring('raghuNaThReddy',10,20))

select name, len(name) from employee 

=======================================================class 6

select * from customer
select * from orderdetails

-- please show the order count of the customer Rahul
select count(od.oid) as OrderCount 
from
CustomerDetails as cd
INNER JOIN
OrderDetails as od 
ON cd.CID = od.CID
where name='Rahul'
---------------------------------------

-- CAST operation
select CAST('123.12' AS decimal)
select CAST('123.1456462' AS numeric(6,2))
select CAST('123.12' AS numeric(12,2))
select CAST('123.005' AS float)
select cast('123.12' as numeric(5,2)) + 1.88
select CAST('abc' AS float)
select CAST(123 AS numeric(5,2))

select TRY_CAST(123.12 AS INT)



-- PARSE : it convert string in to specific data type (datetime, numeric)
select TRY_PARSE('123.12' AS float)
select TRY_PARSE('14-12-2020' AS datetime)
select TRY_PARSE('2020-12-20' AS date)
select TRY_PARSE('2020-12-20 12:12:12.000' AS datetime)


-- CONVERT
select CONVERT(INT, '123')
select CONVERT(INT, 'abc')
select TRY_CONVERT(INT, 888.99)

select CONVERT(INT, 888.99)

-- ISNULL
select ISNULL(NULL,5)
select ISNULL(10,5)
select ISNUMERIC(10.5)
select ISNUMERIC(10.0)
select ISNUMERIC('abc')
select CHOOSE(4,100,200,300,400)

select Name, isnull(age,34) from customerdetails
select name,age from CustomerDetails

select *  from employee
select name,cast(salary as numeric(10,2)) from employee
select name,convert(numeric(10,2), salary) from employee

-- please show the name and blood group of the employee id 1
--name: Ashok
--BG: A+
--Output - 'Name: Ashok and BloodGroup: A+'
-- using select statement 
select 'name: '+ name + ' and Bloodgroup: ' + bloodgroup
from person where Pid = 1



=====================================class 7

--VAREIABLES::---------

declare @name varchar(30), @BG varchar(10)
set @name = 'Reddy'
set @BG = 'O'
select 'name: ' + @name + ' Bloodgroup: ' + @bg

declare @name varchar(16) , @BG varchar(4) 
select @name = name from person where pid = 1
select @bg = BloodGroup from person where pid = 1
select 'Name: ' + @name + ' and BloodGroup: ' + @BG


-- New line charecter  
Print 'New' + CHAR(10) + 'Line'

select 'Raghunath' + 'Reddy'
select 'Raghunath' +' '+ 'Reddy'
select 'Raghunath' + ' Reddy'

print 'Raghunath' + 'Reddy'
print 'Raghunath' + Char(20) + 'Reddy'

-- the scope of any variable in only within execution 
declare @firstvariable int, @abc varchar(5)
set @firstvariable = 10
set @abc = 'Test'

select @firstvariable, @abc
select @abc

-- Take two variables, add the two variable into the third variable
-- show the third variable using output structure like below
-- The Output Value is: <The value of third variable>
declare @A int, @B int , @c int
set @A = 2
set @B = 3
select @c = @a +@B
print @C

declare @a int = 10, @b int = 20, @c int
set @c = @a + @b
print 'The Output Value is: ' + cast(@c as varchar(4))

========================================
--case

 declare @input int = 2
 select 
 case
	when @input=1 then 'Tea'
	when @input=2 then 'Milk'
	when @input=3 then 'Hot water'
	when @input=4 then 'coffe'
	else 'enetr the valid input'
 end


declare @age tinyint = 50
select 
	CASE
	    when @age<20 then 'Young'
	    when @age<60 then 'Middleage'
	    when @age<80 then 'Old'
	    ELSE 'Very Old'
	END
GO

select *,
	CASE
	    when Age < 30 then 'Young'
	    when Age < 60 then 'Middleage'
	    when Age < 80 then 'Old'
	    ELSE 'Very Old'
	END as AgeCategory 
from CustomerDetails

-- Online Delivery app
declare @status int = 2

select 
	CASE
	    when @status = 1 then 'Order Placed'
	    when @status = 2 then 'Preparing'
	    when @status = 3 then 'Out for delivary'
	    when @status = 4 then 'Delivered'
	    ELSE 'Yet to get order'
	END as OrderStatus
GO

select name,salary,
case
when salary > 5000 then 'High salary'
else 'low salary'
end as salaryType
from Employee

select name,salary,
case
when salary > 5000 and salary <7500 then 'Normal salary'
when salary > 7500 then 'High salary'
else 'low salary'
end as salaryType

from Employee

select name, age,
case
when age>=55 then 'old employee'
when age>=30 and age< 55 then 'experienced'
when age<30 then'young employee'
else 'unidetified' 
end as employee
from employee

====================================================
-- IIF Function
declare @marks int = 60
select 
iif(@marks>50, 'pass', 'fail')
Go
-- case and iif works same
declare @marks int = 60
select
case
when @marks<50 then 'fail'
else 'pass'
end

select name , salary,
IIF( salary>7000, ' high salary', 'low salary') as salarytype
from employee

select *, 
CASE
	    when age<20 then 'Fresher'
		when age<40 then 'Young'
	    when age<60 then 'Middleage'
	    when age<80 then 'Old'
	    ELSE 'Very Old'
END as Case_Column, 
iif(age > 50, 'Old', 'Young') as IIF_Column
from Employee

=================================================
-- Scaler Function

create function SumOfTwoValue(@a int, @b int)
returns int -- it give  type of data of result

AS
BEGIN

declare @c int
set @c = @a*@b
return @c -- it giev result required that is actual data

END

select dbo.SumOfTwoValue(100,20) as OP-- schema name is mandetory i.e dbo
select dbo.SumOfTwoValue(100,60)

-- location of a department, user will provide department id as input
create function Dep_Location(@Dep_ID int)
returns varchar(24)

AS
BEGIN

declare @loc varchar(24)
select @loc = Location from Department where ID = @Dep_ID
RETURN @loc 

END

select dbo.Dep_Location(3) as D_Loc-- schema name is mandetory

-- example
create function testfunction(@ip int)
returns varchar(32)
as 
begin
return 
case
	when @ip = 1 then 'tea'
	when @ip = 2 then 'Coffee'
	when @ip = 3 then 'Milk'
	when @ip = 4 then 'Hot water'
	else 'Please provide a valid input'
  end
end
select dbo.testfunction(2)

-- Table Valued Function:
create function testfun2(@a int)
returns table
as
return(select * from employee where ID<=@a)
go
select * from dbo.testfun2(9)

create function emfun(@a int)
returns table
as 
return(select ID, Name, Age from employee where ID>=@a)
go
select * from dbo.emfun(5)


create function salaryCat(@id int)
returns table
as
return(select name,
case
when salary > 5000 and salary <7500 then 'Normal salary'
when salary > 5000 then 'High salary'
else 'low salary'
end as salaryType
from Employee where ID = @ID)
GO
select * from dbo.salarycat(6)

============================================
-- Programming Constructs 
declare @x int , @y varchar(16) 
SET @x = 5
SET @y = 'Five'
select @x
select @y
GO


declare @x int = 5, @y varchar(16) = 'Five'
select @x, @y
GO


declare @x int = 5, @y varchar(16) = 'Five'
select @x, @y
print  @X
print @y
GO

declare @x int = 5, @y varchar(16) = 'Five'
print @x
print @y
GO

===========================================
/*
-- If Else
IF Boolean_expression
BEGIN
    -- Statement block executes when the Boolean expression is TRUE
END

else if Boolean_expression
BEGIN
    -- Statement block executes when the Boolean expression is TRUE
END

ELSE
BEGIN
    -- Statement block executes when the Boolean expression is FALSE
END
*/

declare @a int = 2

if(@a = 1)
begin
 select 'The value of a is: 1'
end
else if (@a = 2)
begin
 select 'The value of a is: 2'
end
else if (@a = 3)
begin
 select 'The value of a is: 3'
end
Else
begin
 select 'We do not know the value of a'
end

-- we have a input variable called age
-- based on the age, show the output as below
-- Condition will be based on, if age is more than 18
-- Eligible to vote as age is: <show the age>
-- Not Eligible to vote as age is: <show the age>

DECLARE @age int = 25
if @age>18
begin
print 'eligible for vote as the age is :'+ cast(@Age as varchar(10))
end

else
begin
print 'Not Eligible to vote as age is: ' +  cast(@Age as varchar(10))
end

================================================

-- Exists Function
if exists (select * from employee where ID = 10)
begin
select 'A values exist'
end
else
begin
print'a values not exist'
end

if NOT EXISTS(select * from Employee where ID = 2)
begin
 select 'A value does not Exist'
end
ELSE
begin
 select 'A value Exist'
end
GO

==========================class 8
-- While Loop
/*
WHILE Boolean_expression   
Begin
	sql_statement 
end */

-- infinite loop
while (1=1)
begin
 print 'going crazy!'
end

declare @counter int
set @counter = 1

while (@counter <= 10)
begin
	print 'the counter values is = ' + convert(varchar,@counter)
	set @counter = @counter+1
end
Print 'Out of while loop with counter value: ' + CONVERT(VARCHAR,@Counter)
GO

--break -- does not allow rest of while block and whilo loop
--continue -- does not allow rest of while block but allow while loop

-- BREAK statement example 

while (1=1)
begin
 print 'going crazy!'
 print 'going crazy!'
 break
end


-- Continue statement example
while 1 = 1
begin
	print ' In the loop-before continue' 
	continue
	print ' In the loop-after continue' 
end
print 'Out of the loop'


-- Continue statement example
DECLARE @Counter INT 
SET @Counter=1

WHILE (@Counter <= 10)
BEGIN
	SET @Counter  = @Counter  + 1
    PRINT 'The counter value is = ' + CONVERT(VARCHAR,@Counter)
	continue
	PRINT 'Copy-1: The counter value is = ' + CONVERT(VARCHAR,@Counter)

END
Print 'Out of while loop with counter value: ' + CONVERT(VARCHAR,@Counter)
GO


-- increase the salary of every employee except where salary is more than 10,000
select * from employee

declare @counter int = 1, @salary int = 0
select @counter = count(id) from employee
while (@counter>=1)
begin
	select @salary = salary from employee where id = @counter
	if @salary>=10000
	begin
	  set @counter =@counter -1
	  continue
	end
	update employee
	set @salary = @salary+10 
	where id = @counter
set @counter = @counter -1
end



-- Factorial example(!5 = 5*4*3*2*1)
DECLARE @Counter INT = 5, @Fact int = 1
WHILE (@Counter >= 1)
BEGIN
    SET @Fact = @Fact * @Counter
	SET @Counter  = @Counter  - 1
END

Print 'The factorial is: ' + CONVERT(VARCHAR,@Fact)
GO

-- please write a sql programming to find the factorial of a given value using while loop
-- wrap it in a scaler function

create function fact(@num int)
returns int
as
begin
	declare  @result int = 1
		while (@num>=1)
		begin
			set @result=@result*@num
			set @num = @num -1
		end
		return @result
end
select dbo.fact(5) as factorial


DECLARE @Counter INT 
SET @Counter=1

WHILE (@Counter <= 10)
BEGIN
    PRINT 'The counter value is = ' + CONVERT(VARCHAR,@Counter)
	IF(@Counter=5)
	BEGIN
		Print 'Counter value is 5 and got the break statement'
		break
	END
    SET @Counter  = @Counter  + 1
END
Print 'Out of while loop with counter value: ' + CONVERT(VARCHAR,@Counter)
GO

========================================

-- Order by clause

select * from person order by name  -- default is asc
select * from person order by name desc
select * from person order by name,Address asc

-- Top statement

select top 2 * from person
select top 2 PID, NAME, Address from person 
select top 2 * from employee order by salary desc
select top 5 * from Employee

-- please show me the details of oldest three employees in our company 
select top 3 * from Employee order by age desc

-- please show the name, age and salary of the youngest employee in the company
select top 1 Name, Age, Salary from Employee order by Age ASC

select top 25 percent * from person -- to get 25% records of the table
select top 50 percent * from person -- to get 50% records of the table

-- show the 50% records of persons who is having B+ blood group 
select top 50 percent * from person where bloodgroup = 'B+'

-- The average salary of male and female employees 

select * from employee
select gender , avg(salary) as avg_salary
from employee
group by gender


-- The number of employees in each department
select dept, count(name) as no_of_ppl from employee
group by dept

-- The total salary, average salary, number of employees of male and female employees 
select gender, sum(salary) as total_salary, avg(salary)as avg_salary,count(Id) as no_employee
from employee
group by gender

-- total salary, average salary, employee count of  employees of each country.
select dept, sum(salary) as total_salary, avg(salary)as avg_salary,count(Id) as no_employee
from employee
group by dept
order by count(id) asc

--=======================================================
-- Group By Having 

-- show me only those details where total salary is more than 12000
select dept, sum(salary) as total_salary
from employee
group by dept
having sum(salary) > 15000


SELECT dept, SUM(Salary) AS TotalSalary
FROM Employee
GROUP BY dept
HAVING dept = 'sales'

select dept, sum(salary) as total_salary
from employee
group by dept
order by sum(salary) desc

SELECT dept, SUM(Salary) AS TotalSalary
FROM Employee
where dept <> 'analytics'
GROUP BY dept
having SUM(Salary) > 16000
order by SUM(Salary) DESC

-- uner selecct need to follow this order synatx

--select--> where--> group by--> having--> order by

SELECT dept, SUM(Salary) AS TotalSalary
FROM Employee
where dept in ('sales','support','analytics')
GROUP BY dept
having sum(salary) > 16000
order by TotalSalary

-- second highest salary using top clause
select top 1 * from employee 
where salary <
(select top 1 salary from employee order by salary desc)
order by salary desc 

--=====================================================
-- join: Join is used to map rows of two different table using a common column
-- Union: Union is used to append results of two different select operations. 

-- Union
select * from Employee where dept = 'analytics'
UNION
select * from Employee where dept = 'sales'
GO

select * from Employee --it combines comman n diff element of both table
UNION
select * from Employee


-- Union All -- it combines all element of both table
select * from Employee 
UNION ALL
select * from Employee 


-- EXCEPT Operator , its like A-B substraction in set i.e coomon element removed and show only remain element of A
select * from Employee where dept in ('analytics','sales')
EXCEPT 
select * from Employee where dept = 'analytics'
EXCEPT 
select * from Employee where dept = 'sales'

-- INTERSECT Operator
select * from Employee where dept in ('analytics', 'support')
intersect 
select * from Employee where dept in ('sales','analytics')


======================================================
-- Basic structure of Stored Procedure 

CREATE PROCEDURE HelloWorldprocedure
AS
BEGIN
	PRINT 'Hello World'
END

exec HelloWorldprocedure

drop procedure dbo.HelloWorldprocedure -- to delet


create procedure sum_ip
@a int, @b int
as 
begin
declare @c int =0
set @c = @a + @b
print 'the output is: ' + cast(@c as varchar(16))
end

exec dbo.sum_ip @a =6, @b=10



CREATE PROCEDURE Find_Factorial
@Factorial_input int 
AS
BEGIN
declare @Factorial_output bigint = 1

while @Factorial_input >= 1
BEGIN
	set @Factorial_output = @Factorial_output * @Factorial_input
	set @Factorial_input = @Factorial_input - 1
END
print 'The factorial is: ' + CAST(@Factorial_output as varchar(16))
END
exec dbo.Find_Factorial @Factorial_input = 5


ALTER PROCEDURE Factorial 
@Counter int
AS
BEGIN
	DECLARE @Fact int = 1, @initValue int = @Counter
	WHILE (@Counter >= 1)
	BEGIN
		SET @Fact = @Fact * @Counter
		SET @Counter  = @Counter  - 1
	END
	PRINT 'The factorial of ' + CONVERT(VARCHAR,@initValue) + ' is: ' + CONVERT(VARCHAR,@Fact)
END

exec Factorial 6


-- Perform alter operation on stored procedure
create PROCEDURE hr.HelloWorldprocedure
AS
BEGIN
	PRINT 'Hello World (TestView)' 
	SELECT 'Hello World' AS GridResult
END

exec hr.HelloWorldprocedure
execute hr.HelloWorldprocedure

-- Drop a stored procedure
DROP PROC hr.HelloWorldprocedure
DROP Procedure hr.HelloWorldprocedure


====================================================
--VIEW - VERTUAL TABLE CONTANING DATA FROM ONE OR MORE TABLE
 -- IT DOESNOT HOLD ANY DATA AND DOESNOT EXIST IN DATABASE

--Example Of Create View: 

CREATE view Employee_Gender
as
SELECT Gender, 
SUM(Salary) AS TotalSalary, 
AVG(Salary) AS AverageSalary, 
COUNT(ID) AS NumberOfEmployees
FROM Employee
GROUP BY Gender
go

select * from Employee_Gender where NumberOfEmployees > 4

select *  from customer
select *  from CustomerDetails

CREATE VIEW joinview
as 
SELECT  
	c.cid as customerID,
	c.name as customer_name,
	cd.mobile as mobile_number
from
	customer as c
	inner join
	customerdetails as cd
	on c.cid = cd.cid
where c.name like 'r%'
	
select * from joinview


ALTER VIEW joinview
as 
SELECT  
	c.cid as customerID,
	c.name as customer_name,
	cd.mobile as mobile_number
from
	customer as c
	inner join
	customerdetails as cd
	on c.cid = cd.cid
where c.name like '%A'

select * from joinview


-- Example of Delete View
DROP View JoinView

-- Different ways to save code in the database:
-- Function (Scalar/Table): Performing some small operation. 
-- Stored Procedure: Implementing big programming logics into code.
-- View: It is a way to store select query, logical table of query output.

=======================================================
-- Table: 
-- Rollback: The last committed version of the table
-- Commit: The latest version is committed in the table
-- Note: By default SQL performs implecit commit transaction

-- Notepad:
-- Dont Save: The last saved version of the file
-- Save: The latest version is saved in the file

-- TCL example with insert/update/delete operation

SELECT * FROM customer

begin tran 
insert into customer values (5, 'Sunil', 31,12315)
rollback transaction -- undo the last madification

begin tran 
insert into customer values (5, 'Sunil', 31,12315)
commit -- make parmanent last execution


begin tran 
update customer
set Name = 'Sunil Anna' where cid = 5
commit

begin transaction
delete from customer
where cid = 6
rollback
commit 


========================================================
-- Exception handeling 
--syntax
Begin Try
	-- SQL Statements
End Try
Begin Catch
	-- Error handeling 
End Catch

BEGIN TRY  
    -- Generate a divide-by-zero error.  
    SELECT 1/0;  
END TRY  
BEGIN CATCH  
    select 'Please use value except zero for divide'
END CATCH;  
GO 

begin try
	select 123+ '-' + 'abc'
	select 'executed successfully'
end try
begin catch 
	select 'use same data type for concat operation'
	select ERROR_MESSAGE()
end catch 


BEGIN TRY  
    -- Generate a divide-by-zero error.  
    SELECT 1/0;  
END TRY  
BEGIN CATCH  
    SELECT  
        ERROR_NUMBER() AS ErrorNumber  
        ,ERROR_MESSAGE() AS ErrorMessage
		, 'Please use value except zero for divide' as HowToFix
END CATCH;  
GO 

========================================================
--TCL - transaction control laguage
-- TCL: begin tran, commit, rollback

begin tran 
delete from hr.candidates where fullname = 'Debu'
-- commit -- (Save Transaction)
-- rollback -- (Dont Save Transaction)

begin tran
-- DML operation
	begin tran
	-- DML operation
	commit
commit

-- Transaction with Try catch block
BEGIN TRY  
    BEGIN TRAN
		select 1/0
	COMMIT
	SELECT 'Transaction Committed!'
END TRY  

BEGIN CATCH  
    ROLLBACK
	SELECT 'Transaction Rollbacked as we encountered an error in Try Block!'
END CATCH;  
GO 


select * from person
-- Transaction with Try catch block
BEGIN TRY  
    BEGIN TRAN
		insert into person values ('abc', 'Prabakaran', 'Pune', 6376496, '2000-01-15', 'o-')
COMMIT
	print 'Transaction Committed!'
END TRY  

BEGIN CATCH  
   ROLLBACK
	print 'Transaction Rollbacked as we encountered an error in Try Block!'
END CATCH;  


====================================class 11
select * from employee
-- Live assignment: 
-- show me the name and age of the most senior employee 
-- The output should look like below: 
-- Name: <most senior employee name> & Age: <Age of the employee>
-- For example if name is 'ABC' and Age is '50' then output should be
-- Name: ABC & Age: 50 
-- Name: Jhon & Age: 55 

select'name: '+ name +' & age: ' + cast(age as varchar(2))
from employee
order by age desc

-- write a query to see average employee age, average salary of every dept
select dept, avg(age) as avg_age, avg(salary) as avf_salary
from Employee
group by dept


==============

-- Rank Functions
/*
ROW_NUMBER() - We use this function to get a unique sequential number for each row in the specified data.
RANK()	- We use this function to specify rank for each row in the result set.(it skip the rank when rank comes)
DENSE_RANK() - We use this function to specify a unique rank number within the partition as per the specified column value.(it wont skip any rank)
NTILE()  - We use this function to distribute the number of rows in the specified number of groups.   */

-- Creating environment

CREATE TABLE ExamResult
(StudentName VARCHAR(70), 
 Subject     VARCHAR(20), 
 Marks       INT
);
INSERT INTO ExamResult
values
('Lily', 'Maths', 65),
('Lily', 'Science', 80),
('Lily',  'english', 70),
('Isabella', 'Maths', 50),
('Isabella','Science',70),
('Isabella', 'english', 90),
('Olivia','Maths',55),
('Olivia','Science',60),
('Olivia', 'english' 89)

select * from ExamResult

-- Row_Number function
SELECT Studentname, subject, marks,
ROW_NUMBER() over(order by marks desc) as row_no
from ExamResult


SELECT Studentname, subject, marks,
ROW_NUMBER()  OVER(Partition by subject ORDER BY Marks desc) 
from ExamResult


-- Rank function
SELECT Studentname, subject, marks,
rank() over(partition by studentname order by marks desc) as rank
from ExamResult
order by studentname, rank;

SELECT Studentname, subject, marks,
Rank() over(order by marks desc) as rank
from ExamResult
order by rank;


-- Dense_Rank function
SELECT Studentname, subject, marks,
dense_rank()OVER(ORDER BY Marks DESC) Rank
FROM ExamResult
ORDER BY Rank;

SELECT Studentname, subject, marks,
dense_rank()OVER(partition by studentname order by marks desc) as rank
from ExamResult
ORDER BY subject,Rank;

-- Note: Rank function skip some rank values based on the number of repetations. 
--  However, Dense_Rank function does not skip any ranking values in the output. 



-- NTile function

SELECT *, 
	NTILE(2) over(order by marks desc) as rank
from ExamResult
order by rank;

SELECT *, 
	NTILE(3) over(order by marks desc) as rank
from ExamResult
order by rank;

SELECT studentname ,
       NTILE(2) OVER(PARTITION  BY subject ORDER BY Marks DESC) Rank
FROM ExamResult
ORDER BY subject, rank;
GO
SELECT *, 
       NTILE(3) OVER(PARTITION  BY subject ORDER BY Marks DESC) Rank
FROM ExamResult
ORDER BY subject, rank;
GO

-- Difference between Rank & Dense_Rank
Rank may have missing ranking numbers based on number of ties
Dense_Rank will not give any missing rank even if there are ties 



==============================
--TCE - COMMAN TABLE EXPRESSION

-- CTE: a CTE is a result set that remains in memory for the scope of a single execution
-- create a temp table
-- populate the temp table
-- perform operation on the temp table
-- drop the temp table after query execution

-- Basic syntax of a CTE
WITH <common_table_expression_Name> (column names)
AS
(
   <cte_query_definition>
)
<operation on common_table_expression_Name>


-- Creating environment
CREATE TABLE Employees
(
  EmployeeID int NOT NULL PRIMARY KEY,
  FirstName varchar(50) NOT NULL,
  LastName varchar(50) NOT NULL,
  ManagerID int NULL
)

INSERT INTO Employees VALUES (1, 'Ken', 'Thompson', NULL)
INSERT INTO Employees VALUES (2, 'Terri', 'Ryan', 1)
INSERT INTO Employees VALUES (3, 'Robert', 'Durello', 1)
INSERT INTO Employees VALUES (4, 'Rob', 'Bailey', 2)
INSERT INTO Employees VALUES (5, 'Kent', 'Erickson', 2)
INSERT INTO Employees VALUES (6, 'Bill', 'Goldberg', 3)
INSERT INTO Employees VALUES (7, 'Ryan', 'Miller', 3)
INSERT INTO Employees VALUES (8, 'Dane', 'Mark', 5)
INSERT INTO Employees VALUES (9, 'Charles', 'Matthew', 6)
INSERT INTO Employees VALUES (10, 'Michael', 'Jhonson', 6)

select * from employees

-- Simple CTE example
WITH cteReports (EmpID, FirstName, LastName, MgrID)
  AS
  (
    SELECT EmployeeID, FirstName, LastName, ManagerID
    FROM Employees
    WHERE ManagerID IS NOT NULL
  )
SELECT * FROM cteReports 

WITH cteReports_1 (EmpID, FirstName, LastName, MgrID)
  AS
  (
    SELECT EmployeeID, FirstName, LastName, ManagerID
    FROM Employees
    WHERE ManagerID IN (1,2)
	)
	SELECT * FROM cteReports_1 


WITH cteReports (EmpID, FirstName)
  AS
  (
    SELECT  LastName, ManagerID
    FROM Employees
    WHERE ManagerID IS NOT NULL
  )
SELECT * FROM cteReports 



-- Multi CTE examples
WITH cteReports_1 (EmpID, FirstName, LastName, MgrID)
  AS
  (
    SELECT EmployeeID, FirstName, LastName, ManagerID
    FROM Employees
    WHERE ManagerID IS NOT NULL
  ),
  cteReports_2 (EmpID, FirstName, LastName, MgrID)
  AS
  (
    SELECT EmployeeID, FirstName, LastName, ManagerID
    FROM Employees
    WHERE ManagerID IS NULL
  )
SELECT * FROM cteReports_1 
UNION ALL
SELECT * FROM cteReports_2

-- Recursive CTE

WITH cteReports_1 (EmpID, FirstName, LastName, MgrID)
  AS
  (
    SELECT EmployeeID, FirstName, LastName, ManagerID
    FROM Employees
    WHERE ManagerID IN (1,2)
  ),
  cteReports_2 (EmpID, FirstName, LastName, MgrID)
  AS
  (
    SELECT EmployeeID, FirstName, LastName, ManagerID
    FROM Employees
    WHERE ManagerID NOT IN (select distinct MgrID from cteReports_1)
  )
SELECT * FROM cteReports_2

/* Differences 
cte
single execution

temptable
we need dedicated syntax to create the table
we need dedicated syntax to populate the table
we need dedicated syntax to drop the table
multiple execution, till we run drop command / close the session */


=====================================================
-- Index
/*
What is Index? 


-- non-clustered index 
table --> 1000 records
search for 1 record --> best (1) / worst(1000)
index (20)
record --> link --> best(2) / worst(21)

-- clustered index 
table --> 1000 records
search for 1 record --> best (1) / worst(1000)
records will be physically stored in a perticuler order 
searching for a record in clustered index will use same algorithm



Book  --> 1000 pages
search for 1 topic --> best(1) / worst(1000)
index (20)
topic --> page#    --> best(2) / worst(21)

Dictionary --> 1000 pages
search for 1 word --> best(1) / worst(1000)
words are stored in ascending order
ABCDEFGHIJKLMNOPQRSTUVWXYZ
search for a word "Zombie"

Clustered Index (1) --> Data is getting arrenged physically in a perticuler order
Non-Clustered Index (999) --> Additional index pages will be created without sorting the data

Clustered -- Physically sorted data on a column in a perticuler order (Dictionary)
Non-Clustered (Index Pages) -- Dedicated Index file for a table (Normal text Book)
Heap Table -- When a table is not having any index then the table is called Heap table 


-- clustered index --> sorting the actual data in a perticuler order 
-- non-clustered index --> Adding index pages on top of data pages
-- Heap table --> A table without any index is called as heap table



-- advantage of index
	-- select operation will be faster
	-- delete will be faster 

-- disadvantage is index 
	-- Insert operation 
	-- update operation 


-- advantage of heap table 
	-- Insert is faster 

-- disadvantage of heap table 
	-- update, delete and select 

Data Structure of Index -- B+ Tree
What is B+ Tree? (Root Node, Intermidiate Node, Leaf Node)

Clustered index on a table - 1
Non-clustered index on a table - 999

Advantage/ Disadvantage:
select -- > faster in index
update --> somewhat benefit of index
delete --> somewhat benefit of index
insert --> faster in heap table

Naming Style: 
PK_TableName_ColumnName -- Primary Key
CL_TableName_ColumnName -- Clustered Index
IX_TableName_ColumnName -- Non Clustered Index*/



-- Syntax to create clustered and non clustered index on a table
ALTER TABLE Employee
ADD CONSTRAINT [PK_Employee_ID] PRIMARY KEY (ID)
GO
ALTER TABLE Employee
DROP CONSTRAINT PK_Employee_ID
GO

select * from employee

CREATE CLUSTERED INDEX [CL_Employee_ID_1] ON Employee
(
	[ID] ASC
)
GO
CREATE CLUSTERED INDEX [CL_Employee_ID_1] ON Employee
(
	[ID] ASC
)
GO
DROP INDEX [IX_Employee_ID] ON Employee
GO


CREATE TABLE U (ID INT , NAME VARCHAR(20))
INSERT INTO U VALUES (12,'A'),(16,'J'),(17,'H')

SELECT * FROM U

CREATE CLUSTERED INDEX I
ON U (ID ASC)

===========================================
-- trigger is a special procedure tagged with a table.
-- and it execute automatically depending on DML operation on the table. 

-- Trigger is a special type of stored procedure which executes after a DML condition 
-- In real life scenario, triggeres are used mostly used for audit purposes.

-- insert trigger (Trigger will execute after a insert operation)
-- update trigger (Trigger will execute after a update operation)
-- delete trigger (Trigger will execute after a delete operation)

-- This table will hold audit data
CREATE TABLE [dbo].[Logs]
(
	[OperationName] varchar(70) NULL,
	[Timestamp] datetime NULL
) 
GO

-- track DML operations on 'employee' table in the 'Logs' table
-- use triggers on 'employee' table to add log entry in the 'logs' table. 
-- Use inserted and deleted system table to use DML data insite the trigger. 

CREATE TRIGGER trg_Employee_Insert
ON Employee
FOR INSERT	
AS
Begin
insert into Logs values ('Insert-Operation', getdate())
End

CREATE TRIGGER trg_Employee_Update
ON Employee
FOR UPDATE	
AS
Begin
insert into Logs values ('Update-Operation', getdate())
End

CREATE TRIGGER trg_Employee_Delete
ON Employee
FOR DELETE	
AS
Begin
insert into Logs values ('Delete-Operation', getdate())
End


select * from employee 
select * from logs

insert into employee 
values (12, 'Pat', 8500, 49, 'F', 'Operations')
update employee 
set name = 'Patricia' 
where ID = 12
delete from employee 
where ID = 12


=====================================

-------------- Corelated subquery
-- Structure/SYNTAX

SELECT column1, column2, ....
FROM table1 OuterTable
WHERE column1 operator
                    (SELECT column1, column2
                     FROM table2
                     WHERE expr1 = 
                               OuterTable.expr2);



-- Example-1
-- List out the employee details who is getting more than average salary of that department
-- find the average salary of the department(For every employee)
-- validate that the employee is geting more than the average value or not

SELECT *
 FROM employee as OuterTable
 WHERE salary >
                (SELECT AVG(salary)
                 FROM employee
                 WHERE Dept =
                        OuterTable.Dept);

SELECT AVG(SALARY) FROM EMPLOYEE

========================
-- Exists in corelated subquery 

-- List out the manager details from employee list
SELECT employeeid, firstname, lastname, managerid
FROM Employees OuterTable
WHERE EXISTS ( SELECT *
FROM employees
WHERE managerid =
OuterTable.employeeid);

-- List out the employee details who is not a manager
SELECT employeeid, firstname, lastname, managerid
FROM Employees OuterTable
WHERE NOT EXISTS ( SELECT *
FROM employees
WHERE managerid =
OuterTable.employeeid);

-- Or can be done another way
SELECT employeeid, firstname, lastname, managerid
FROM Employees OuterTable
WHERE employeeid in ( select ManagerID from Employees)


-- Or can be done another way
select * from employees where employeeid not in
(select distinct managerid from employees where managerid is not null)

SELECT * FROM EMPLOYEES

-- Example-2
-- List out the customer details who placed more than one order
select ID, Name from Customer c where exists 
(
select count(*) from Orders o where o.CustomerName = c.Name
group by o.CustomerName
having count(o.orderid) >= 2
)


-- Or can be done another way 

select c.ID, o.CustomerName, count(o.orderid) ordercount 
from orders o inner join Customer c on o.CustomerName = c.Name
group by c.ID,o.CustomerName
having count(o.orderid) >= 2

============================================
-------------- Grouping Sets

SELECT DEPT, Gender, SUM(Salary) AS TotalSalary
FROM Employee
GROUP BY GROUPING SETS
(
 (DEPT, Gender),
 (DEPT),
 (Gender),
 ()
)

SELECT SUM(SALARY) FROM EMPLOYEE
DEPT

-- We can do it using simple group by as well
SELECT DEPT, Gender, SUM(Salary) AS TotalSalary
FROM Employee
GROUP BY DEPT, Gender

UNION ALL

SELECT DEPT, NULL, SUM(Salary) AS TotalSalary
FROM Employee
GROUP BY DEPT

UNION ALL

SELECT NULL, Gender, SUM(Salary) AS TotalSalary
FROM Employee
GROUP BY Gender

UNION ALL

SELECT NULL, NULL, SUM(Salary) AS TotalSalary
FROM Employee


-------------- ROLLUP

-- We can perform this with Rollup
SELECT DEPT, Gender, SUM(Salary) AS TotalSalary
FROM Employee
GROUP BY DEPT, Gender WITH Rollup


-- select total salary by DEPT and also show the total salary

-- We can also use UNION ALL operator along with GROUP BY

SELECT dept, sum(salary) as total_salary
from employee
group by dept
UNION ALL
SELECT NULL, SUM(Salary) AS TotalSalary
FROM Employee


-- We can also use Grouping Sets to achieve the same result
SELECT dept, SUM(Salary) AS TotalSalary
FROM Employee
GROUP BY GROUPING SETS
(
 (dept),
 ()
)


-- We can perform this with Rollup
SELECT dept, SUM(Salary) AS TotalSalary
FROM Employee
GROUP BY dept WITH ROLLUP

-- Another example. 
-- Group Salary by Country and Gender. Also compute the Subtotal for Country level and Grand Total as shown below.

SELECT dept, gender, sum(salary) as total_salary
from employee
group by rollup(dept, gender)

-- OR

SELECT dept, Gender, SUM(Salary) AS TotalSalary
FROM Employee
GROUP BY dept, Gender WITH ROLLUP



-------------- CUBE

-- We can perform this with Rollup
SELECT dept, Gender, SUM(Salary) AS TotalSalary
FROM Employee
GROUP BY dept, Gender WITH CUBE


-- The above query is equivalent to the following Grouping Sets query.
SELECT dept, Gender, SUM(Salary) AS TotalSalary
FROM Employee
GROUP BY 
 GROUPING SETS
 (
  (dept, Gender),
  (dept),
  (Gender),
  ()
 )

-- The above query is equivalent to the following UNION ALL query.
SELECT dept, Gender, SUM(Salary) AS TotalSalary
FROM Employee
GROUP BY dept, Gender

UNION ALL 

SELECT dept, NULL, SUM(Salary) AS TotalSalary
FROM Employee
GROUP BY dept

UNION ALL

SELECT NULL, Gender, SUM(Salary) AS TotalSalary
FROM Employee
GROUP BY Gender

UNION ALL

SELECT NULL, NULL, SUM(Salary) AS TotalSalary
FROM Employee


-- The same output can be obtained by CUBE
SELECT dept, Gender, SUM(Salary) AS TotalSalary
FROM Employee
GROUP BY dept, Gender WITH CUBE



--*******************************************
--extra source
--19 coping the entire table
Select * into employees_copy from Employees

Select Employee_id, First_name, Department into employees_copy1 from Employees
select *  from employees_copy1
--SUB QUERIES WE CAN SELECT ONLY 1 COLUMN






