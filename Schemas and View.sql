create table customer(
customerID int,
Firstname  varchar(250), 

Lastname varchar(250), 

Address varchar(250), 

 ); 

Select * From customer;
ALTER TABLE Customer Drop Column Dept
INSERT INTO  Customer  

VALUES(003,'Messi' ,'X','Seattle'), 

(004,'Alfred' ,'Marshal','Seattle'), 

(005,'Bauching' ,'Bhutia','Helenskie'); 


CREATE VIEW [Seattle Customers] AS 

SELECT CustomerID,Firstname 

FROM Customer 

Where Address ='Seattle'; 

  

SELECT * FROM  [Seattle Customers] 