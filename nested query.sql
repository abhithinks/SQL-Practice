CREATE DATABASE PRACTICE;
USE PRACTICE;

 

CREATE TABLE  "AGENTS" 
   (    
    "AGENT_CODE" CHAR(6) NOT NULL PRIMARY KEY, 
    "AGENT_NAME" CHAR(40), 
    "WORKING_AREA" CHAR(35), 
    "COMMISSION" DECIMAL(10,2), 
    "PHONE_NO" CHAR(15), 
    "COUNTRY" VARCHAR(25) 
     );

 INSERT INTO AGENTS VALUES ('A007', 'Ramasundar', 'Bangalore', '0.15', '077-25814763', '');
INSERT INTO AGENTS VALUES ('A003', 'Alex ', 'London', '0.13', '075-12458969', '');
INSERT INTO AGENTS VALUES ('A008', 'Alford', 'New York', '0.12', '044-25874365', '');
INSERT INTO AGENTS VALUES ('A011', 'Ravi Kumar', 'Bangalore', '0.15', '077-45625874', '');
INSERT INTO AGENTS VALUES ('A010', 'Santakumar', 'Chennai', '0.14', '007-22388644', '');
INSERT INTO AGENTS VALUES ('A012', 'Lucida', 'San Jose', '0.12', '044-52981425', '');
INSERT INTO AGENTS VALUES ('A005', 'Anderson', 'Brisban', '0.13', '045-21447739', '');
INSERT INTO AGENTS VALUES ('A001', 'Subbarao', 'Bangalore', '0.14', '077-12346674', '');
INSERT INTO AGENTS VALUES ('A002', 'Mukesh', 'Mumbai', '0.11', '029-12358964', '');
INSERT INTO AGENTS VALUES ('A006', 'McDen', 'London', '0.15', '078-22255588', '');
INSERT INTO AGENTS VALUES ('A004', 'Ivan', 'Torento', '0.15', '008-22544166', '');
INSERT INTO AGENTS VALUES ('A009', 'Benjamin', 'Hampshair', '0.11', '008-22536178', '');

 


CREATE TABLE  "CUSTOMER" 
   (    "CUST_CODE" VARCHAR(6) NOT NULL PRIMARY KEY, 
    "CUST_NAME" VARCHAR(40) NOT NULL, 
    "CUST_CITY" CHAR(35), 
    "WORKING_AREA" VARCHAR(35) NOT NULL, 
    "CUST_COUNTRY" VARCHAR(20) NOT NULL, 
    "GRADE" DECIMAL, 
    "OPENING_AMT" DECIMAL(12,2) NOT NULL, 
    "RECEIVE_AMT" DECIMAL(12,2) NOT NULL, 
    "PAYMENT_AMT" DECIMAL(12,2) NOT NULL, 
    "OUTSTANDING_AMT" DECIMAL(12,2) NOT NULL, 
    "PHONE_NO" VARCHAR(17) NOT NULL, 
    "AGENT_CODE" CHAR(6) NOT NULL REFERENCES AGENTS
);   
INSERT INTO CUSTOMER VALUES ('C000155', 'Hoes', 'London', 'London', 'UK', '2', '6000.00', '5000.00', '7000.00', '4000.00', '147-25896312', 'A003');
INSERT INTO CUSTOMER VALUES ('C00001', 'Micheal', 'New York', 'New York', 'USA', '2', '3000.00', '5000.00', '2000.00', '6000.00', 'CCCCCCC', 'A008');
INSERT INTO CUSTOMER VALUES ('C00020', 'Albert', 'New York', 'New York', 'USA', '3', '5000.00', '7000.00', '6000.00', '6000.00', 'BBBBSBB', 'A008');
INSERT INTO CUSTOMER VALUES ('C00025', 'Ravindran', 'Bangalore', 'Bangalore', 'India', '2', '5000.00', '7000.00', '4000.00', '8000.00', 'AVAVAVA', 'A011');
INSERT INTO CUSTOMER VALUES ('C00024', 'Cook', 'London', 'London', 'UK', '2', '4000.00', '9000.00', '7000.00', '6000.00', 'FSDDSDF', 'A006');
INSERT INTO CUSTOMER VALUES ('C00015', 'Stuart', 'London', 'London', 'UK', '1', '6000.00', '8000.00', '3000.00', '11000.00', 'GFSGERS', 'A003');
INSERT INTO CUSTOMER VALUES ('C00002', 'Bolt', 'New York', 'New York', 'USA', '3', '5000.00', '7000.00', '9000.00', '3000.00', 'DDNRDRH', 'A008');
INSERT INTO CUSTOMER VALUES ('C00018', 'Fleming', 'Brisban', 'Brisban', 'Australia', '2', '7000.00', '7000.00', '9000.00', '5000.00', 'NHBGVFC', 'A005');
INSERT INTO CUSTOMER VALUES ('C00021', 'Jacks', 'Brisban', 'Brisban', 'Australia', '1', '7000.00', '7000.00', '7000.00', '7000.00', 'WERTGDF', 'A005');
INSERT INTO CUSTOMER VALUES ('C00019', 'Yearannaidu', 'Chennai', 'Chennai', 'India', '1', '8000.00', '7000.00', '7000.00', '8000.00', 'ZZZZBFV', 'A010');
 

SELECT * FROM CUSTOMER;
SELECT * FROM AGENTS;
CREATE TABLE  "ORDERS" 
   (
        "ORD_NUM" DECIMAL(6,0) NOT NULL PRIMARY KEY, 
    "ORD_AMOUNT" DECIMAL(12,2) NOT NULL, 
    "ADVANCE_AMOUNT" DECIMAL(12,2) NOT NULL, 
    "ORD_DATE" DATE NOT NULL, 
    "CUST_CODE" VARCHAR(6) NOT NULL REFERENCES CUSTOMER, 
    "AGENT_CODE" CHAR(6) NOT NULL REFERENCES AGENTS, 
    "ORD_DESCRIPTION" VARCHAR(60) NOT NULL
   );
--nested query or inner query
--Write a Query to Return details of Agent where his customer name is �Karolina� using Sub Query 

--Write a Query to Return details of Agent where his customer Country is �UK� 

   Select * from AGENTS
   where AGENT_CODE IN

						(SELECT AGENT_CODE FROM CUSTOMER WHERE CUSTOMER.CUST_COUNTRY='UK');

      Select * from AGENTS
      where AGENT_CODE IN

						(SELECT AGENT_CODE FROM CUSTOMER WHERE CUSTOMER.CUST_NAME='Karolina');

select * from AGENTS
 where PHONE_NO in 
 (select PHONE_NO from CUSTOMER where CUSTOMER.PHONE_NO= 147-25896312);


--same output

CREATE PROCEDURE JOINEDTABLE
as

SELECT * 
FROM AGENTS
INNER JOIN CUSTOMER ON 
AGENTS.AGENT_CODE= CUSTOMER.AGENT_CODE;

GO
EXEC JOINEDTABLE;
