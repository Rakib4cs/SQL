Create database Student;
create table Student_info(
student_id int primary key,
student_name varchar(50) not null,
age int check (age>=18),
email varchar(50) unique,
department varchar(50) default 'CSE'
);
select *from Student_info
insert into Student_info(student_id,student_name,age,email,department)
values
(101,'Rahim',22,'rahim@gmail.com','CSE'),
(102,'Karim',21,'kaim@gmail.com','BBA'),
(103,'Ema',23,'ema@gmail.com','CSE'),
(104,'Sami',22,'sami@gmail.com','CSE'),
(105,'Nila',20,'nila@gmail.com','CSE');
update Student_info
set age=age+2
where department='CSE' and age>21;
update Student_info
set department='CSE'
where department='BBA' and age<22;

delete from Student_info
where department='BBA' and age<22;

delete from Student_info
where email='sami@gamil.com';

select count(*) as TotalStudents,
avg(age) as AverageAge from Student_info;

select max(age) as MaximumAge,
min(age) as MinimumAge
from Student_info
where department='CSE';

select department,
count (*) as NumberofStudent
from Student_info
group by department
having count(*)>2;

select *from Student_info
select department, count(*) as NumberofStudent
from Student_info
group by department;

select department, 
count(*) as NumberOfStudents 
from Student_info
group by department 
having count(*) > 1;

select department, 
avg(age) as AverageAge 
from Student_info
group by department 
order by AverageAge desc;


