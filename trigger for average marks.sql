use trigger_db;

create table student(
studentID int identity(1,10) primary key,
studentname varchar (50),
marks int );

insert into student values ('tanmay', 22);
insert into student values ('happy', 42);

select* from student;


---trigger to create the average of marks in a tage when any value is inserted average
create trigger averagemarks1
on student
after insert
as
begin
     SELECT AVG(marks)
     FROM student;
     print 'avergae marks are ' ;
end
go

insert into student values ('jayashverma', 67);