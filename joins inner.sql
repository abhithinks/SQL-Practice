Create Table Employee1 (

EmployeeID int Primary Key Not Null,
Lastname Varchar(250) Not Null,
Firstname Varchar(250) Not null,
Age Int,
);

Insert into Employee1 values (2, 'Abhishek', 'Verma', 27);
Insert into Employee1 values (4, 'Deep', 'M', 22);
Select * from 
Create Table Project1 (

EmployeeID int FOREIGN KEY REFERENCES Employee1(EmployeeID),
Lastname Varchar(250) Not Null,
Firstname Varchar(250) Not null,
Department Varchar(250) not null,

);

Insert into Project1 values (1, 'Deep', 'Jahndu', 'mechanical');
Insert into Project1 values (2, 'Dp', 'DM', 'civil');

SELECT Employee1.EmployeeID ,Project1.Lastname 
FROM Employee1   
inner JOIN Project1 
ON Employee1.EmployeeID = Project1.EmployeeID;  