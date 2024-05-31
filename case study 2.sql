--case study 2


CREATE TABLE LOCATION2 (
  Location_ID INT PRIMARY KEY,
  City VARCHAR(50)
);

INSERT INTO LOCATION2 (Location_ID, City)
VALUES (122, 'New York'),
       (123, 'Dallas'),
       (124, 'Chicago'),
       (167, 'Boston');


  CREATE TABLE DEPARTMENT (
  Department_Id INT PRIMARY KEY,
  Name VARCHAR(50),
  Location_Id INT,
  FOREIGN KEY (Location_Id) REFERENCES LOCATION2(Location_ID)
);


INSERT INTO DEPARTMENT (Department_Id, Name, Location_Id)
VALUES (10, 'Accounting', 122),
       (20, 'Sales', 124),
       (30, 'Research', 123),
       (40, 'Operations', 167);



CREATE TABLE JOB
(JOB_ID INT PRIMARY KEY,
DESIGNATION VARCHAR(20))

INSERT  INTO JOB VALUES
(667, 'CLERK'),
(668,'STAFF'),
(669,'ANALYST'),
(670,'SALES_PERSON'),
(671,'MANAGER'),
(672, 'PRESIDENT')

CREATE TABLE EMPLOYEE
(EMPLOYEE_ID INT,
LAST_NAME VARCHAR(20),
FIRST_NAME VARCHAR(20),
MIDDLE_NAME CHAR(1),
JOB_ID INT FOREIGN KEY
REFERENCES JOB(JOB_ID),
MANAGER_ID INT,
HIRE_DATE DATE,
SALARY INT,
COMM INT,
DEPARTMENT_ID  INT FOREIGN KEY
REFERENCES DEPARTMENT(DEPARTMENT_ID))

INSERT INTO EMPLOYEE VALUES
(7369,'SMITH','JOHN','Q',667,7902,'17-DEC-84',800,NULL,20),
(7499,'ALLEN','KEVIN','J',670,7698,'20-FEB-84',1600,300,30),
(7505,'DOYLE','JEAN','K',671,7839,'04-APR-85',2850,NULl,30),
(7506,'DENNIS','LYNN','S',671,7839,'15-MAY-85',2750,NULL,30),
(7507,'BAKER','LESLIE','D',671,7839,'10-JUN-85',2200,NULL,40),
(7521,'WARK','CYNTHIA','D',670,7698,'22-FEB-85',1250,500,30)

select * from job
select * from location2
select * from employee
select * from department


--Simple Queries:

--1. List all the employee details.
select * from employee

--2. List all the department details.
select * from department

--3. List all job details.
select * from job

--4. List all the locations.
select * from location2

--5. List out the First Name, Last Name, Salary, Commission for allEmployees. 
select FIRST_NAME, LAST_NAME, SALARY,COMM  from EMPLOYEE


--6. List out the Employee ID, Last Name, Department ID for all employees and alias
--Employee ID as "ID of the Employee", Last Name as "Name of the Employee", Department ID as "Dep_id". 

select EMPLOYEE_ID as "ID of the Employee",
		last_name as "Name of the Employee",
		 Department_ID as "Dep_id"
		from EMPLOYEE


--7. List out the annual salary of the employees with their names only
select last_name, salary*12 as annual_salary from EMPLOYEE

--WHERE Condition:**********************************
--1. List the details about "Smith". 
select * from EMPLOYEE
where LAST_NAME = 'Smith'

--2. List out the employees who are working in department 20. 
select * from DEPARTMENT
where Department_Id = 20

--3. List out the employees who are earning salaries between 3000 and4500. 
select * from EMPLOYEE
where salary between 3000 and 4500

--4. List out the employees who are working in department 10 or 20.
select * from EMPLOYEE
where DEPARTMENT_ID =10 or DEPARTMENT_ID = 20

select * from EMPLOYEE
where DEPARTMENT_ID in (10, 20)
--where DEPARTMENT_ID =10 or 20 is wrong way

--5. Find out the employees who are not working in department 10 or 30.
select * from EMPLOYEE
where not DEPARTMENT_ID = 10 and not DEPARTMENT_ID = 30

select * from EMPLOYEE
where DEPARTMENT_ID not in (10, 30)

--6. List out the employees whose name starts with 'S'
select * from EMPLOYEE
where LAST_NAME like 'S%'

--7. List out the employees whose name starts with 'S' and ends with 'H'.
select * from EMPLOYEE
where LAST_NAME like 'S%H'

--8. List out the employees whose name length is 4 and start with 'S'. 
select last_name from EMPLOYEE
where last_name like 'S%' and len(last_name)=4


--9. List out employees who are working in department 10 and draw salaries more than 3500. 
select * from EMPLOYEE
where DEPARTMENT_ID = 10 and salary > 3500

--10. List out the employees who are not receiving commission
select * from EMPLOYEE where comm is null -- commission is not holding any value


select * from EMPLOYEE where comm = null -- commission is holding a value i.e null


--ORDER BY Clause:************************************
--1. List out the Employee ID and Last Name in ascending order based on the Employee ID. 
select EMPLOYEE_ID, LAST_NAME from EMPLOYEE
order by EMPLOYEE_ID asc

--2. List out the Employee ID and Name in descending order based on salary. 
select EMPLOYEE_ID, concat(first_NAME,' ',LAST_NAME) as name, salary from EMPLOYEE
order by salary desc

--concat - use when we want to combine data from multiple column within table

--3. List out the employee details according to their Last Name in ascending-order. 
select * from EMPLOYEE
order by LAST_NAME asc

--4. List out the employee details according to their Last Name in ascending order and then Department ID in descending order.
select * from EMPLOYEE
order by LAST_NAME asc, department_id desc -- we cant do this together 
-- if we want o do then write sweparetely
select * from EMPLOYEE order by LAST_NAME asc
select * from EMPLOYEE order by department_id desc


--GROUP BY and HAVING Clause:************************************

--1. How many employees are in different departments in the organization?
select *  from EMPLOYEE
select DEPARTMENT_ID, count(employee_id) as no_of_employee from employee
group by DEPARTMENT_ID

--2. List out the department wise maximum salary, minimum salary and average salary of the employees. 
select d.Name, e.department_id, max(e.salary) as max_salary, min(e.salary) as min_salary,avg(e.salary) as avg_salary
from employee as e
inner join DEPARTMENT as d
on e.department_id = d.Department_Id
group by e.DEPARTMENT_ID , d.name

select DEPARTMENT_ID, MAX(SALARY) as Max_Salary, MIN(SALARY) as Min_Salary,
AVG(SALARY) as Avg_Salary
from EMPLOYEE
group by DEPARTMENT_ID;
--3. List out the job wise maximum salary, minimum salary and average salary of the employees. 

select j.DESIGNATION, max(e.salary) as max_salary, min(e.salary) as min_salary,avg(e.salary) as avg_salary
from employee as e
inner join 
job as j
on e.job_id = j.JOB_ID
group by DESIGNATION

select JOB_ID, MAX(SALARY) as Max_Salary, MIN(SALARY) as Min_Salary,
AVG(SALARY) as Avg_Salary
from EMPLOYEE
group by JOB_ID;
--4. List out the number of employees who joined each month in ascending order. 

select HIRE_DATE, COUNT(employee_id) from EMPLOYEE
group by HIRE_DATE
order by month(HIRE_DATE) 

--5. List out the number of employees for each month and year in ascending order based on the year and month.

select HIRE_DATE, COUNT(employee_id) from EMPLOYEE
group by HIRE_DATE
order by month(HIRE_DATE) , year(hire_date)
-- we cant do two order by in one select query

--6. List out the Department ID having at least four employees.

select department_id, count(department_id) no_employee from EMPLOYEE
group by department_id
having count(department_id) >=4

--7. How many employees joined in the month of January?

select HIRE_DATE, count(employee_id) as no_employee   from EMPLOYEE
group by hire_date
having month(hire_date) = 1

--8. How many employees joined in the month of January orSeptember?

select HIRE_DATE, count(employee_id) as no_employee   from EMPLOYEE
group by hire_date
having month(hire_date) = 1 or month(hire_date) = 9

select month(hire_date) from employee

--9. How many employees joined in 1985?

select HIRE_DATE, count(EMPLOYEE_ID) as no_employee   from EMPLOYEE
group by HIRE_DATE
having year(hire_date) = 1985

select year(hire_date) from employee

--10. How many employees joined each month in 1985?
select HIRE_DATE, count(EMPLOYEE_ID) as no_employee   from EMPLOYEE
group by HIRE_DATE
having year(hire_date) = 1985

--11. How many employees joined in March 1985?
select HIRE_DATE, count(EMPLOYEE_ID) as no_employee   from EMPLOYEE
group by HIRE_DATE
having year(hire_date) = 1985 and month(hire_date)= 3


--12. Which is the Department ID having greater than or equal to 3 employees  joining in April 1985?
select  department_id, count(EMPLOYEE_ID) as no_employee   from EMPLOYEE
group by DEPARTMENT_ID, hire_date
having year(hire_date) = 1985 and month(hire_date)= 1 and count(employee_id) >= 3


---Joins:**************************

--1. List out employees with their department names.
select e.employee_id, d.name as dept_name,  concat(e.first_name,' ' ,e.last_name) as name
from employee as e
join
department as d
on e.department_id = d.department_id

--2. Display employees with their designations.
select concat(e.first_name,' ' ,e.last_name) as name, j.DESIGNATION
from employee as e
join JOB as j 
on e.JOB_ID= j.JOB_ID

--3. Display the employees with their department names and regional groups.
select concat(e.first_name,' ' ,e.last_name) as name, d.name as dept_name, l.City
from employee as e
join DEPARTMENT as d
on e.DEPARTMENT_ID = d.Department_Id
join LOCATION2 as l
on d.Location_Id = l.Location_ID

--4. How many employees are working in different departments? Display with department names.
select d.name as dept_name, count(employee_id) as no_of_employee
from employee as e
join DEPARTMENT as d
on e.DEPARTMENT_ID = d.Department_Id
group by d.name

--5. How many employees are working in the sales department?
select d.name as dept_name, count(employee_id) as no_of_employee
from employee as e
join DEPARTMENT as d
on e.DEPARTMENT_ID = d.Department_Id
group by d.name
having d.name = 'sales'

--6. Which is the department having greater than or equal to 5 employees? Display the department names in ascending order. 
select d.name as dept_name, count(employee_id) as no_of_employee
from employee as e
join DEPARTMENT as d
on e.DEPARTMENT_ID = d.Department_Id
group by d.name
having count(employee_id) >= 5
order by d.name asc

--7. How many jobs are there in the organization? Display with designations.
select j.DESIGNATION, count(e.job_id)
from EMPLOYEE as e
join JOB as j
on e.JOB_ID = j.job_id
group by DESIGNATION

--8. How many employees are working in "New York"?
select count(e.EMPLOYEE_ID) as no_of_employee
from EMPLOYEE as e
join DEPARTMENT as d on e.DEPARTMENT_ID = d.Department_Id
join LOCATION2 as l  on d.Location_Id = l.Location_ID
where l.city = 'new york'

--9. Display the employee details with salary grades. Use conditional statement to create a grade column.
select *,
case
when salary > 2500 then 'high salary'
when salary > 1500 then 'good salary'
when salary > 1000 then 'everage salary'
else 'low salary'
end as salary_grade
from EMPLOYEE

--10. List out the number of employees grade wise. Use conditional statementto create a grade column. 
select JOB_ID,count(EMPLOYEE_ID) as employee_no,
case
when count(EMPLOYEE_ID) > 5 then 'more employee'
when count(EMPLOYEE_ID) > 2 then 'everage employee'
else 'less employee'
end as grade
from EMPLOYEE
group by job_id

--11.Display the employee salary grades and the number of employees between 2000 to 5000 range of salary. 
select job_id, salary, count(employee_id) as no_of_employee,
case
when salary > 2500 then 'high salary'
when salary > 1500 then 'good salary'
when salary > 1000 then 'everage salary'
else 'low salary'
end as salary_grade
from EMPLOYEE
group by job_id, salary
having salary between 2000 and 5000

--12. Display all employees in sales or operation departme
select concat(e.first_name,' ' ,e.last_name) as name, d.Name
from EMPLOYEE as e
join department as d on e.department_id = d.department_id
where d.name = 'sales' or d.name = 'operations'

--SET OPERATORS***********************

--1. LIST OUT THE DISTINCT JOBS IN SALES AND ACCOUNTING DEPARTMENTS.
SELECT J.DESIGNATION
FROM EMPLOYEE AS E
JOIN DEPARTMENT AS D ON E.DEPARTMENT_ID = D.Department_Id
JOIN JOB AS J ON E.JOB_ID = J.JOB_ID
WHERE D.NAME = 'SALES'
UNION
SELECT J.DESIGNATION
FROM EMPLOYEE AS E
JOIN DEPARTMENT AS D ON E.DEPARTMENT_ID = D.Department_Id
JOIN JOB AS J ON E.JOB_ID = J.JOB_ID
WHERE D.NAME = 'ACCOUNTING'

select distinct J.DESIGNATION, D.Name
from DEPARTMENT D
join EMPLOYEE E
on D.Department_Id = E.DEPARTMENT_ID
join JOB J
on J.Job_ID = E.JOB_ID
where D.Name in ('Sales','Accounting');

--2. LIST OUT ALL THE JOBS IN SALES AND ACCOUNTING DEPARTMENTS.
SELECT J.DESIGNATION
FROM EMPLOYEE AS E
JOIN DEPARTMENT AS D ON E.DEPARTMENT_ID = D.Department_Id
JOIN JOB AS J ON E.JOB_ID = J.JOB_ID
WHERE D.NAME = 'SALES'
UNION ALL
SELECT J.DESIGNATION
FROM EMPLOYEE AS E
JOIN DEPARTMENT AS D ON E.DEPARTMENT_ID = D.Department_Id
JOIN JOB AS J ON E.JOB_ID = J.JOB_ID
WHERE D.NAME = 'ACCOUNTING'

select J.DESIGNATION, D.Name
from DEPARTMENT D
join EMPLOYEE E
on D.Department_Id = E.DEPARTMENT_ID
join JOB J
on J.Job_ID = E.JOB_ID
where D.Name in ('Sales','Accounting');

--3. LIST OUT THE COMMON JOBS IN RESEARCH AND ACCOUNTING DEPARTMENTS IN ASCENDING
SELECT J.DESIGNATION
FROM EMPLOYEE AS E
JOIN DEPARTMENT AS D ON E.DEPARTMENT_ID = D.Department_Id
JOIN JOB AS J ON E.JOB_ID = J.JOB_ID
WHERE D.NAME = 'RESEARCH'
INTERSECT
SELECT J.DESIGNATION
FROM EMPLOYEE AS E
JOIN DEPARTMENT AS D ON E.DEPARTMENT_ID = D.Department_Id
JOIN JOB AS J ON E.JOB_ID = J.JOB_ID
WHERE D.NAME = 'ACCOUNTING'

--SUB QUERIES***************************

--1. DISPLAY THE EMPLOYEES LIST WHO GOT THE MAXIMUM SALARY.
select CONCAT(first_name, '  ' , last_name) as name 
from EMPLOYEE
where SALARY = (select max(SALARY) from EMPLOYEE)

--2. DISPLAY THE EMPLOYEES WHO ARE WORKING IN SALES DEPARTMENT
select CONCAT(first_name, '  ' , last_name) as name 
from EMPLOYEE
where DEPARTMENT_ID = (select DEPARTMENT_ID from DEPARTMENT where name = 'sales')

--3. DISPLAY THE EMPLOYEES WHO ARE WORKING AS 'CLERCK'.
select CONCAT(first_name, '  ' , last_name) as name from EMPLOYEE
where JOB_ID = (select JOB_ID from JOB where designation = 'clerk')

--4. DISPLAY THE LIST OF EMPLOYEES WHO ARE LIVING IN "NEW YORK".
select CONCAT(first_name, '  ' , last_name) as name from EMPLOYEE
where DEPARTMENT_ID = (select d.department_id from DEPARTMENT as d
						join LOCATION2 as l on d.Location_Id = l.Location_ID
						where l.City = 'new york')


select E.* from EMPLOYEE E
join DEPARTMENT D
on E.DEPARTMENT_ID = D.Department_Id
where D.Location_Id = (select Location_Id from LOCATION2 where City = 'New York')

--5. FIND OUT NO. OF EMPLOYEES WORKING IN "SALES" DEPARTMENT.
select count(employee_id) no_of_employee from EMPLOYEE
where DEPARTMENT_ID = (select DEPARTMENT_ID from DEPARTMENT where name = 'sales')

--6. UPDATE THE EMPLOYEES SALARIES, WHO ARE WORKING AS CLERK ON THE BASIS OF 10%.
update EMPLOYEE
set SALARY = salary * 1.10
where JOB_ID = (select JOB_ID from JOB where DESIGNATION = 'clerk')
select * from EMPLOYEE

--7. DELETE THE EMPLOYEES WHO ARE WORKING IN ACCOUNTING DEPARTMENT.
delete from employee 
where DEPARTMENT_ID = (select DEPARTMENT_ID from DEPARTMENT where name = 'accounting')

--8. DISPLAY THE SECOND HIGHEST SALARY DRAWING EMPLOYEE DETAILS.
select top 1 salary from EMPLOYEE
where salary != (select max(salary) from EMPLOYEE)
order by salary desc

select TOP 1 salary from EMPLOYEE
where salary in (select TOP 2 salary from EMPLOYEE
order by salary DESC)
order by salary ASC;

--9. DISPLAY THE N'TH HIGHEST SALARY DRAWING EMPLOYEE DETAILS.
declare @n int=2; -- change @n as per your choice
with TOP_nth_salary as(
select salary, dense_rank() over(order by salary DESC) as rnk
from EMPLOYEE
)
select salary
from TOP_nth_salary
where rnk = @n

--10. LIST OUT THE EMPLOYEES WHO EARN MORE THAN EVERY EMPLOYEE IN DEPARTMENT 30.
select CONCAT(first_name, '  ' , last_name) as name 
from EMPLOYEE 
where SALARY > (select avg(SALARY) from employee where department_id = 30)

--11. LIST OUT THE EMPLOYEES WHO EARN MORE THAN THE LOWEST SALARY IN DEPARTMENT 30.
select CONCAT(first_name, '  ' , last_name) as name, salary
from EMPLOYEE 
where SALARY > (select min(SALARY) from employee)

--12. FIND OUT WHOSE DEPARTMENT HAS NOT EMPLOYEES.
--13. FIND OUT WHICH DEPARTMENT DOES NOT HAVE ANY EMPLOYEES.
select name, Department_Id from DEPARTMENT
where Department_Id not in (select distinct Department_Id from EMPLOYEE)


--14. FIND OUT THE EMPLOYEES WHO EARN GREATER THAN THE AVERAGE SALARY FOR THEIR DEPARTMENT				
select * from EMPLOYEE E
where salary > (select AVG(salary) from EMPLOYEE
where DEPARTMENT_ID = E.DEPARTMENT_ID);

select * from LOCATION2
select *  from DEPARTMENT
select *  from EMPLOYEE
select *  from job


















