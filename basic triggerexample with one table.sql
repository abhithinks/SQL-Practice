use practice;

create table employee12(
employeeID int not null identity(10,12),
employeename varchar(200),
employeeadress varchar(500),
monthlysalary numeric (10,2),
primary key (employeeID)
);
insert into employee12 values('anand', 'Boscow', 35000.70);
insert into employee12 values('vijay', 'new york', 95000.70);
insert into employee12 values('sohan', 'norway', 65000.70);
insert into employee12 values('mohan', 'amsterdam', 115000.70);
insert into employee12 values('jeevan', 'delhi', 15000.70);
select * from employee12; 


create table auditinfoo(
auditid int primary key identity(1,10),
auditinfo varchar(100)
);
select * from auditinfoo;


--when any user insert records in the emplyee12 table trigger is initiated

create trigger tr_employee
on employee12
after insert 
as
begin

print 'trigger is initiated already enjoy';

end

insert into employee12 values('jeevanlal', 'dehradun', 158000.70);


--altering a trigger

alter trigger tr_employee
on employee12
after insert 
as
begin
     select * from inserted
end


--creating a trigger for delete operation

create trigger tr_employee_delete
on employee12
after delete 
as
begin

select * from deleted

end

delete from employee12 where employeeID='46';


--creating trigger for storing the modified information into the new table


create trigger tr_auditdetails
on employee12
after insert 
as
begin
      declare @id int        --declaring a variable
	  select @id = employeeID from inserted

	  insert into auditinfoo values ('employee with id ' + cast(@id as varchar(50)) + ' has been added at ' + cast(getdate() as varchar(50)));

end

insert into employee12 values('Jayashi verma', 'kalyanoo', 1235400.70);
insert into employee12 values('sminiizz', 'nanitaalii', 1458500.70);
