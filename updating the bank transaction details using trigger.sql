use trigger_db;

create table bank(
custID int primary key identity,
name varchar(50),
balance decimal(10,2),
debit float,
credit float
);

insert into bank values( 'shashi', 15000, 10000, 0);

select * from bank;
select * from transactions;

create table transactions(
transactionID int primary key identity(1000,23),
custID int foreign key references bank(custID),
transactiontime date,
transactionamount decimal(10,2),
Previous_balance decimal(10,2)
);
CREATE TRIGGER update_account 
ON transactions
AFTER INSERT 
as
BEGIN
  UPDATE bank SET balance = (select transactionamount from inserted)       
  where bank.custID =(select custID from inserted);  
END

insert into transactions values (1, getdate(), 10000,1000);