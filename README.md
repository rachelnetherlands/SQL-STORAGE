# SQL-STORAGE
- SQL Assignments/ Code 
CREATE TABLE ItemSales (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  ItemId INT NOT NULL,
  Price FLOAT NOT NULL
);

INSERT INTO ItemSales (ItemId, Price)
VALUES
  (100, 34.5),
  (145, 2.3),
  (100, 34.5),
  (100, 34.5),
  (145, 10.0);
  ALTER TABLE Employees
    ADD StartingDate date NOT NULL DEFAULT GetDate () ,
    DateOfBirth  date NULL 
    
  ALTER TABLE Employees
  DROP COLUMN salary;
  ALTER TABLE Employees 
  DROP CONSTRAINT DefaultSalary
  ALTER TABLE Employees
  ADD CONSTRAINT DefaultSalary DEFAULT ((100)) FOR [Salary]
   
  ALTER TABLE Employees
  ALTER COLUMN StartingDate DATETIME NOT NULL DEFAULT (GETDATE())
    
 
  ALTER TABLE EMPLOYEES ADD pk_EmployeeID PRIMARY KEY (ID, FName)
    
  SELECT*FROM table WHERE (condition1) AND (condition2)
  SELECT*FROM table WHERE (condition1) OR (condition2)
    
  SELECT NAME from table where Age>10 AND City ='Prague' 
  ALTER TABLE dbo.T_Room WITH CHECK ADD CONSTRAINT FK_T_Room_T_Client FOREIGN KEY (RM_CLI_ID) REFERENCES dbo. T_client (CLI_ID)ON  DELETE CASCADE
  DELETE FROM T_Client WHERE CLI_ID = X
    
  CASE input_expression
  WHEN compare1 THEN result1
  [WHEN compare2 THEN result2]
  [ELSE resultX]
  END
    
  CASE 
  WHEN condition1 THEN result1
  [WHEN condition2 THEN result]
  [ELSE resultX] 
  END
    
   SELECT Id, ItemID, Price,
      CASE WHEN Price < 10 THEN 'CHEAP' 
           WHEN Price < 20 THEN 'AFFORDABLE' 
           ELSE 'EXPENSIVE'
      END AS PriceRating 
   FROM ITEMSALES
   
   
