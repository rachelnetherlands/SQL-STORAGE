--Find all branches and the names of their managers
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
JOIN branch
ON employee.emp_id = branch.mgr_id; 

--Nested Query
--Find names of all employees who have sold over 30,000 to a single clients 

SELECT employee.first_name, employee.last_name
FROM employee
WHERE employee.emp_id IN( 
 SELECT emp_id
 FROM works_with
 WHERE total_sales. total sales >30000
); 

-- Find all clients who are handled by the branch that Michael Scott manages
--Assume you know Micheal's ID 

SELECT client.client_name
FROM client
WHERE client.branch_id = (
  SELECT branch.branch_id
  FROM branch
  WHERE branch.branch_id = 102; 
); 

--ON Delete
DELETE FROM employee
WHERE emp_id = 102;

SELECT* from branch;


DELETE FROM branch 
WHERE branch_id = 2

SELECT *from branch_supplier;

--Triggers
CREATE TABLE trigger_test (
   message VARCHAR(100)
); 

