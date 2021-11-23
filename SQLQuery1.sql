create database customer3
create Table Auto_person3(
Id int Identity(100,50),
LastName Varchar(200),
FirstName Varchar(200),
Age Int Check (Age>=18)
);
Insert into Auto_person3 Values('Verma', 'Abhishek1', 28)
Insert into Auto_person3 Values('Gupta', 'Pankaj', 18)
Insert into Auto_person3 Values('Gini', 'zooo', 11)
Select * from Auto_person3

CREATE VIEW [India Customers] AS
SELECT Age,FirstName
FROM Auto_person3
Where LastName ='Verma';


