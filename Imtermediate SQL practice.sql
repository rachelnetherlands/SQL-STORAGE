SELECT FirstName, LastName, Age
CASE
  WHEN Age > 30 THEN 'Old'
  WHEN Age BETWEEN 27 AND 30 THEN 'Young'
  ELSE 'Young'
END
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE Age is NOT NULL
ORDER BY Age


SELECT FirstName, LastName, Jobtitle, Salary
CASE
  WHEN Jobtitle = 'Salesman' THEN Salary + (Salary*.10)
  WHEN Jobtitle = 'Accountant' THEN Salary + (Salary*.05)
  WHEN Jobtitle = 'HR' THEN Salary + (Salary*.00001)
  ELSE Salary + (Salary*.03)
END AS SalaryAfterRaise
FROM EmployeeDemographics
JOIN EmployeeSalary
  ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
  
 SELECT Jobtitle, COUNT(Jobtitle)
 FROM EmployeeDemographics
 GROUP BY JobTitle
 HAVING COUNT (Jobtitle) > 1
 
 SELECT Jobtitle, AVG(Salary)
 FROM EmployeeDemographics
 GROUPBY Jobtitle
 HAVING AVG(Salary) > 45000
 ORDER BY AVG(Salary)
 
 UPDATE EmployeeDemographics
 SET Employee = 1012
 WHERE FirstName = 'Holly' AND LastName = 'Flax'
 
 UPDATE EmployeeDemographics
 SET Age = 31, Gender = 'Female'
 WHERE EmployeeID = 1012
 
 DELETE FROM EmployeeDemographics
 WHERE EmployeeID = 1015
 
 
 CASE 
   WHEN condition1 THEN result1
   WHEN condition2 THEN result2
   WHEN conditionN THEN resultN
   ELSE result
 END;
 
 SELECT OrderID, Quantity
 CASE WHEN QUANTITY > 3O THEN 'The quantity is greater than 30'
 WHEN Quanity = 30 THEN 'The quantity is 30'
 ELSE 'The quantity is under 30'
 END AS QuantityText
 FROM OrderDetails;
 
 SELECT CustomerName, City, Country FROM Customers
 ORDER BY (CASE
 WHEN City IS NULL THEN Country
 ELSE City
 END); 
 
 SELECT ProductName, UnitPrice *(UnitInstock + IFNULL(UnitsOnOrder, 0))
 FROM Products;
 
 SELECT ProductName, UnitPrice* (UnitsInstock + COALESCE(UnitsOnOrder,0))
 FROM Products;
 
 CREATE PROCEDURE SelectAllCustomers
 AS
 SELECT*FROM Customers
 GO;
 
 
 
 
 
 
 
 
 
 
 
