# SQL-STORAGE
- SQL Assignments/ Code 

CREATE TABLE ItemSales (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  ItemId INT NOT NULL,
  Price FLOAT NOT NULL
);

 SELECT Id, ItemId, Price,
      CASE WHEN Price < 10 THEN 'CHEAP' 
           WHEN Price < 20 THEN 'AFFORDABLE' 
           ELSE 'EXPENSIVE'
      END AS PriceRating 
 FROM ITEMSALES
   
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
  
  SELECT * FROM DEPT
  ORDER BY
  CASE DEPARTMENT
       WHEN 'MARKETING' THEN 1
       WHEN 'SALES' THEN 2
       WHEN 'RESEARCH' THEN 3
       WHEN ' INNOVATION' THEN 4
       ELSE 5 
       END, 
       CITY
       
  SELECT FirstName, LastName
  FROM Employees
  WHERE Salary > 500;
  
  SELECT Model, 
         EmployeeID
  FROM Cars
  WHERE CustomerID = 42
  AND   Status     = 'Ready';
  
  SELECT column_name (s)
  FROM table1
  INNER JOIN table2 
  ON table1.column_name = table2.column_name;
    
  SELECT Orders. OrderID, Customers. CustomerName
  FROM Orders 
  INNER JOIN Customers ON Orders.CustomersID = Customers.CustomerID; 
  
  SELECT column_name (s) 
  FROM table1
  LEFT JOIN table2
  ON table1.column_name = table2.column_name;
  
  SELECT Customers.CustomerName, Orders.OrderID
  FROM Customers
  LEFT JOIN Orders
  ON Customers.CustomersID = Orders.CustomersID
  ORDER BY Customers.CustomerName;
  
  SELECT column_name(s)
  FROM table1
  RIGHT JOIN table2
  ON table1.column_name = table2.column_name
  
  SELECT Orders.OrdersID, Employees.LastName, Employees.FirstName
  FROM Orders
  RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
  ORDER BY Orders.OrderID
  
  SEKECT column_name(s)
  FROM table1
  FULL OUTER JOIN table2
  ON table1.column_name = table2.column_name
  WHERE condition
  
  SELECT Customers. CustomerName, Orders. OrderID
  FROM Customers
  FULL OURTER JOIN Oders
  ON Customers.CustomersID=Orders.Orders. CustomersID
  ORDER BY Customers.CustomerName; 
  
  
   SELECT column_name(s)
   FROM table_name
   WHERE condition 
   GROUP BY column_name (s)
   ORDER BY column_name (s);
   
   SELECT COUNT(CustomerID), Country
   FROM Customers
   GROUP BY Country; 
   
   SELECT COUNT(CustomerID), Country
   FROM Customers
   GROUP BY Country
   ORDER BY COUNT (CustomerID) DESC;
   
   
   
   
   
   
