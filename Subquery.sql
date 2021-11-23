--subquery with select option

use trigger_db;

create table employee (
ID int identity (1,10) primary key,
fullname varchar(50),
department varchar(50),
salary int
);

Select * from employee;

insert into employee values('ayush awasthi', 'frontent', 89000);
insert into employee values('mudit bajpai', 'frontent', 98000);
insert into employee values('rohit', 'analyst', 52000);
insert into employee values('kartik', 'operations', 70000);
insert into employee values('nikhil', 'finance', 68000);

--finding the persons having salary less the the average salary

select * from employee
where  salary <(select avg(salary) from employee);


--nested query for insert

create table prime(
employeeid int,
income int
);

insert into prime 
select ID, salary from employee 
where ID in (select ID from employee where salary>75000);

select * from prime
select * from employee


update employee
set salary= salary * 0.35;
where department in (select salary from employee where department ='operations');
