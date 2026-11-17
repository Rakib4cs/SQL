create table Employees (
EmployeeID int primary key,
FirstName varchar(25),
LastName varchar(25),
Position varchar(60),
Salary decimal(10,2),
Department varchar(40)
);
select *from Employees;
insert into Employees(EmployeeID, FirstName, LastName, Position, Salary, Department)
values
(101, 'Rahim', 'Ahmed', 'Software Engineer', 55000, 'IT'),
(102, 'Karim', 'Hasan', 'HR Executive', 45000, 'HR'),
(103, 'Nusrat', 'Jahan', 'Accountant', 50000, 'Finance'),
(104, 'Tanvir', 'Hossain', 'Web Developer', 48000, 'IT'),
(105, 'Sadia', 'Islam', 'Marketing Officer', 42000, 'Marketing'),
(106, 'Fahim', 'Rahman', 'System Administror', 60000, 'IT'),
(107, 'Rakib', 'Hasan','Developer', 70000, 'IT'),
(108, 'Sabina','yeasmin','Developer',40000, 'IT'),
(109, 'Azim','Ali','Developer',35000,'IT'),
(110, 'Abu','Rayhan','Developer',40000,'IT'),
(111, 'Riydah','Rahman','Developer',55000,'IT'),
(112, 'Hasib','Rahman','MD',150000,'Admin'),
(113, 'Kawsar','Ahmed','GM',105000,'Admin'),
(114, 'Rokeya','Akther','Co-ordinator',50000,'Admin');
update Employees
set Salary= Salary *1.10
where Department= 'IT';
update Employees
set Position ='Senior HR Executive'
where FirstName= 'Karim';
update Employees
set Department= 'Sales'
where EmployeeID= 105;

delete from Employees
where EmployeeID= 103;

delete from Employees
where Position = 'Developer'
and Department = 'IT';

select top 10*
from Employees;

select *
from Employees LIMIT 3;

select * from Employees
fetch first 3 rows only;

