Create Table Myperson (

PersonID int Primary Key Not Null,
Lastname Varchar(250) Not Null,
Firstname Varchar(250) Not null,
Age Int,
);

Insert into Myperson values (1, 'Raina', 'Suresh', 25)
Insert into Myperson values (2, 'simple', 'pay', 21)
Select * from Myperson

Create Table Orders(
OrderID int Primary Key Not Null,
Ordernumber int  Not Null,
PersonID int FOREIGN KEY REFERENCES Myperson( PersonID)
);

Insert into Orders Values 
(0120,021, 001),
(0121,022, 002);

Select * From Myperson, Orders
Where Myperson.PersonID = Orders.PersonID

Create Table PlayerDetails (
PersonID int Primary KEY NOT NULL, 
Lastname varchar(250) Not null,
Firstname varchar(250) Not null,
);
Insert into PlayerDetails Values(001,'Raina','Suresh'), 

(002,'Sami','Mohammed'); 

Select * from PlayerDetails ; 



select Myperson.Firstname, Myperson.Lastname
from Myperson

left join 
on Myperson.PersonID= PlayerDetails.PersonID ;



