--Find how many inmates were over the age of 50 at execution time
SELECT COUNT* FROM executions WHERE ex_age > 50
--Find the minimum, maximum and average age of inmates at the time of execution
SELECT MIN(ex_age), MAX(ex_age), AVE(ex_age) FROM execution
--Query the executions counts per county
SELECT
 county,
 COUNT (*) AS county_executions
FROM executions
GROUP BY county
--Count the number of inmates aged 50 or older that were executed in each county.
SELECT county, COUNT (*)
FROM executions
WHERE ex_age >=50
GROUP BY county
--Find the first and last name of the inmate with the longest by character count
SELECT first_name, last_name
FROM executions
WHERE LENGTH(last_statement) = (SELECT MAX(LENGTH(last_statement))
                               FROM executions
--Insert the <count-of-all-rows> query to find the percentage of executions from each country
SELECT COUNT(*) FROM executions AS percentage
FROM executions
GROUP BY county
ORDER BY percentage DESC

