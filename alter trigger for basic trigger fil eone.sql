use practice;
alter trigger tr_auditdetails
on employee12
after insert 
as
begin
      declare @id int        --declaring a variable
	  select @id = employeeID from inserted

	  insert into auditinfo values ('employee with id ' + cast(@id as varchar(50)) + ' has been added at ' + cast(getdate() as varchar(50)));

end

