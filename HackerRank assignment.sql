-- Query the list of the city from station that do not start with vowels. Your result cannot contain duplicates

SELECT DISTINCT CITY 
FROM STATION
WHERE CITY NOT LIKE 'A%'
AND CITY NOT LIKE 'E%'
AND CITY NOT LIKE 'I%'
AND CITY NOT LIKE 'O%'
AND CITY NOT LIKE 'U%';

-- Query the list of the city from station that do not end with vowels. Your result cannot contain duplicates

SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY NOT LIKE '%A' 
AND CITY NOT LIKE '%E' 
AND CITY NOT LIKE '%I' 
AND CITY NOT LIKE '%O' 
AND CITY NOT LIKE '%U';

SELECT DISTINCT CITY 
FROM STATION
WHERE CITY NOT LIKE 'A%'
AND CITY NOT LIKE 'E%'
AND CITY NOT LIKE 'I%'
AND CITY NOT LIKE 'O%'
AND CITY NOT LIKE 'U%'
OR CITY NOT LIKE '%A' 
AND CITY NOT LIKE '%E' 
AND CITY NOT LIKE '%I' 
AND CITY NOT LIKE '%O' 
AND CITY NOT LIKE '%U';

--Query the name of any students who scored higher than 75 marks. Order you output by the last three characters of each name. If two more students both have names ending in the same 
last three characters(i.e: Bobby, Robby, etc.), secondary sort them by ascending ID.

SELECT NAME 
FROM STUDENTS 
WHERE MARKS >75 
ORDER BY RIGHT(NAME,3), ID;

--Query that prints a list of employee names(i.e: the name attribute) from the Employee table in alphabetical order.

SELECT NAME 
FROM EMPLOYEE
ORDER BY NAME ASC;

SELECT name 
FROM employee
WHERE salary > 2000 AND months < 10
Order by employee_id ASC

SELECT s.Name
FROM Students s
JOIN Friends f ON s.ID = f.ID
JOIN Packages p ON f.Friend_ID = p.ID
WHERE p.Salary > (SELECT Salary FROM Packages WHERE ID = s.ID)
ORDER BY p.Salary;



