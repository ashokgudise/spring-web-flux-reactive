create database grid_demo

use grid_demo

CREATE TABLE CUSTOMER
	(CUSTOMER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    CUSTOMER_NAME VARCHAR(255),AGE INT, SEX CHAR,
    CONTACT_NAME VARCHAR(255),
    ADDRESS VARCHAR(255),
    CITY VARCHAR(255),
    POSTAL_CODE VARCHAR(255),
    COUNTRY VARCHAR(255));

INSERT INTO CUSTOMER (CUSTOMER_NAME,AGE,SEX,CONTACT_NAME,Address,CITY,POSTAL_CODE,COUNTRY) VALUES ("Alfreds Futterkiste",23,"F","Maria Anders","Obere Str. 57","Berlin","12209","Germany");
INSERT INTO CUSTOMER (CUSTOMER_NAME,AGE,SEX,CONTACT_NAME,Address,CITY,POSTAL_CODE,COUNTRY) VALUES ("Ana Trujillo Emparedados y helados",81,"F","Ana Trujillo","Avda. de la Constitución 2222","México D.F.","05021","Mexico");
INSERT INTO CUSTOMER (CUSTOMER_NAME,AGE,SEX,CONTACT_NAME,Address,CITY,POSTAL_CODE,COUNTRY) VALUES ("Antonio Moreno Taquería",40,"M","Antonio Moreno","Mataderos 2312","México D.F.","05023","Mexico");
INSERT INTO CUSTOMER (CUSTOMER_NAME,AGE,SEX,CONTACT_NAME,Address,CITY,POSTAL_CODE,COUNTRY) VALUES ("Around the Horn",22,"M","Thomas Hardy","120 Hanover Sq.","London","WA1 1DP","UK");
INSERT INTO CUSTOMER (CUSTOMER_NAME,AGE,SEX,CONTACT_NAME,Address,CITY,POSTAL_CODE,COUNTRY) VALUES ("Berglunds snabbköp",18,"F","Christina Berglund","Berguvsvägen 8","Luleå","S-958 22","Sweden");
INSERT INTO CUSTOMER (CUSTOMER_NAME,AGE,SEX,CONTACT_NAME,Address,CITY,POSTAL_CODE,COUNTRY) VALUES ("Noel Vega Inc.",53,"M","Noel Vega","3088 Pockrus Page Rd1","Stockholm","S-958 22","Sweden");
INSERT INTO CUSTOMER (CUSTOMER_NAME,AGE,SEX,CONTACT_NAME,Address,CITY,POSTAL_CODE,COUNTRY) VALUES ("Kara & Co",47,"F","Kara W Griffin","512 Center Street","Stuttgart","97448","Germany");
INSERT INTO CUSTOMER (CUSTOMER_NAME,AGE,SEX,CONTACT_NAME,Address,CITY,POSTAL_CODE,COUNTRY) VALUES ("Cheney",22,"F","Erica W Cheney","4922 Pick Street","Denver","80216","USA");
INSERT INTO CUSTOMER (CUSTOMER_NAME,AGE,SEX,CONTACT_NAME,Address,CITY,POSTAL_CODE,COUNTRY) VALUES ("Jerry Bee",19,"M","Jerry B Davis","993 Lowndes Hill Park Road","London","91350","UK");
INSERT INTO CUSTOMER (CUSTOMER_NAME,AGE,Sex,CONTACT_NAME,Address,CITY,POSTAL_CODE,COUNTRY) VALUES ("Zal",33,"M","Chris E Aguirre","3563 Black Stallion Road","Berlin","45242","Germany");
INSERT INTO CUSTOMER (CUSTOMER_NAME,AGE,Sex,CONTACT_NAME,Address,CITY,POSTAL_CODE,COUNTRY) VALUES ("Avto-moto OOD",50,"F","Victoria Mihova","Plovdiv","33 Shipchenska","1892","Bulgaria");

commit;

--select * from Customers;

--UPDATE Customers SET CustomerName='Berglunds snabbköp', ContactName='Christina Berglund', Age='81', Sex='F', Address='Berguvsvägen 8', PostalCode='S-958 22', City='Luleå', Country='Sweden' WHERE CustomerID=5

