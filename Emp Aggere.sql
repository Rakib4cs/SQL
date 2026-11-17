create database employeeInfo;
create table employees(
employee_id int primary key,
first_name varchar(20),
last_name varchar(20),
salary decimal(10,2),
department varchar(10)
)
select*from employees
insert into employees(employee_id,first_name,last_name,salary,department)
values
(1,'john','Doe',50000.00,'HR'),
(2,'jane','Smith',60000.00,'IT'),
(3,'Alice','Johnson',55000.00,'IT'),
(4,'Bob','Brown',45000.00,'HR'),
(5,'Carol','Davis',70000.00,'IT'),
(6,'Dave','Wilson',65000.00,'HR')

select min(salary)
from employees
where salary<70000.00;

select max(salary)
from employees
where salary>50000.00;

select department, 
min(salary) as minimum_salary,
max(salary) as maximum_salary
from employees
group by department;

select *from employees
where salary=(select min(salary) from employees);

select*from employees
where salary=(select max(salary) from employees);

select department,
min(salary) as minimum_salary,
max(salary) as maximum_salary,
count(*)as total_employees
from employees
group by department;