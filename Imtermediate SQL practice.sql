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
 
 
 
 
 
 
 
 
 
