CREATE SCHEMA NEWSchema; 

GO 

  

SELECT *  

FROM sys.schemas 

  

CREATE TABLE NEWSchema.MYCustomer( 

CustomerID INT PRIMARY KEY IDENTITY, 

Name VARCHAR(200), 

DOJ DATETIME NOT NULL 

); 

  

INSERT into NEWSchema.MYCustomer  

VALUES ('DAVID','2020/11/11') 

  

Select * FROM NEWSchema.MYCustomer 

  

  

CREATE SCHEMA DBOSchema 

AUTHORIZATION dbo 

GO 