CREATE DATABASE databasename;
CREATE DATABASE testDB;

DROP DATABASE databasename;
DROP DATABASE testDB;

BACKUP DATABASE databasename
TO DISK = 'filepath';
WITH DIFFERENTIAL;

CREATE TABLE table_name(
column1 datatype,
column2 datatype,
column3 datatype,
....
);

CREATE TABLE Persons(
  PersonID int,
  LastName varchar(255),
  FirstName varchar(255),
  Address varchar(255),
  City varchar(255)
);

CREATE TABLE new_table_name AS
 SELECT column1, column2,...
 FROM existing_table_name
 WHERE...;
 
 DROP TABLE table_name;
 DROP TABLE Shippers;
 
TRUNCATE TABLE table_name;
ALTER TABLE table_name 
ADD column_name datatype;

ALTER TABLE Customers
ADD Email varchar (255);

ALTER TABLE table_name
DROP COLUMN column_name;

ALTER TABLE Customers
DROP COLUMN Email;

ALTER TABLE table_name
RENAME COLUMN old_name to new_name;

ALTER TABLE Persons
ADD DateOfBirth date;

ALTER TABLE Persons
DROP COLUMN DateOfBirth;

ALTER TABLE Persons
ADD Birthday DATE;

CREATE TABLE table_name (
  column1 datatype constraint,
  column2 datatype constraint,
  column3 datatype constraint,
  ...
);

CREATE TABLE Persons (
 ID int NOT NULL,
 LastName varchar (255) NOT NULL,
 FirstName varchar (255) NOT NULL,
 Age int
);

CREATE TABLE Persons (
 ID int NOT NULL UNIQUE,
 LastName varchar(255) NOT NULL,
 FirstName varchar(255),
 Age int
);

ALTER TABLE Persons
ADD UNIQUE (ID);

ALTER TABLE Persons
DROP INDEX UC_Person;

ALTER TABLE Persons
DROP INDEX UC_Person;

CREATE TABLE Persons;
 ID int NOT NULL,
 LastName varchar(255) NOT NULL,
 FirstName varchar(255),
 Age int
 PRIMARY KEY (ID)
);

CREATE TABLE Persons (
 ID int NOT NULL,
 LastName varchar(255) NOT NULL,
 FirstName varchar(255),
 Age int,
 CONTRAINT PK_Person PRIMARY KEY (ID, LastName)
);

ALTER TABLE Persons
ADD PRIMARY KEY (ID);

ALTER TABLE Persons
ADD CONTRAINT PK_Person PRIMARY KEY (ID, LastName); 

ALTER TABLE Persons
DROP PRIMARY KEY;

ALTER TABLE Persons
DROP CONSTRAINT PK_Person;

CREATE TABLE Orders (
 OrderID int NOT NULL,
 OrderNumber int NOT NULL,
 PersonID int,
 PRIMARY KEY (OrderID),
 FOREIGN KEY (PersonID) REFERENCES (Person ID)
 
 CREATE TABLE Orders (
   OrderID int NOT NULL,
   OrderNumber int NOT NULL,
   PersonID int,
   PRIMARY KEY (OrderID),
   CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID)
   REFERENCES Persons(PersonID)
);
 




