create table salesman(
salesmanID int Primary key,
names varchar(250),
City varchar(250),
 comission int,
 );

 Insert into salesman values (001, 'Abhishek', 'kanpur', 27);
 Insert into salesman values (002, 'Akshay', 'pimpli', 22);
 Insert into salesman values (003, 'Abhi', 'Pune', 17);

 create table Cust(
CustID int Primary key,
custnames varchar(250),
City varchar(250),
 salesmanID int Foreign key references salesman(salesmanID)
 );
 Insert into Cust values (111, 'Abhishek', 'kanpur', 001);
  Insert into Cust values (115, 'Ayush', 'ujjain', 002);
   Insert into Cust values (113, 'Abhi', 'pune', 003);
 Select * from cust;

 select salesman.names, salesman.city, Cust.custnames      --SELECTING THE COLUMNS WE REQIRE FROMSALESMAN TABLE
from salesman   

inner join Cust
on Cust.salesmanID= salesman.salesmanID ;

 select Cust.custnames, salesman.city, salesman.names, salesman.comission
from salesman

inner join Cust
on Cust.city= salesman.city ;

select salesman.names, salesman.city, Cust.custnames      --SELECTING THE COLUMNS WE REQIRE FROMSALESMAN TABLE
from salesman   

LEFT join Cust
on Cust.salesmanID= salesman.salesmanID ;