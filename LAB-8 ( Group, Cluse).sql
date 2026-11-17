create table Employee(
ID int primary key,
Name varchar(50) not null,
Department varchar(50) not null,
Salary int not null,
City varchar(50) not null
);
select *from Employee
insert into Employee(ID,Name,Department,Salary,City)
values
(1,'Alice', 'HR',40000,'Rajshahi'),
(2,'Bob','IT',50000,'Dhaka'),
(3,'Charlie','IT',48000,'Sirajganj'),
(4,'David','Sales',45000,'Natore'),
(5,'Ema','HR',42000,'Pabna'),
(6,'Frank','IT',53000,'Bogura');

select Department, count(*)
from Employee
group by Department;

select Department, avg(Salary) as AvgSalary
from Employee
Group by Department;

Select Department, max(Salary) as maximumSalary
from Employee
group by Department;

Select Department, count(*) as TotalEmployees
from Employee
group by Department
having count(*) >2;

Select Department, sum(Salary) as TotalSalary
from Employee
group by Department;

SELECT Department, City, SUM(Salary) AS TotalSalary
FROM Employee
GROUP BY Department, City;

SELECT Department, COUNT(*) AS TotalEmployees
FROM Employee
GROUP BY Department;

SELECT Department, SUM(Salary) AS TotalSalary
FROM Employee
GROUP BY Department
HAVING SUM(Salary) > 100000;

SELECT Department, City, AVG(Salary) AS AverageSalary
FROM Employee
GROUP BY Department, City;




