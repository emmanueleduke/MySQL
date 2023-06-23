--join another copy of a table to itself--
--use to compare rows of the same table
--helps to display heirarchy of data

--create a column called referral_id
ALTER TABLE customer
ADD referral_id INT;
SELECT * FROM customer;

--populate referral_id
UPDATE  customer
SET referral_id = 1
WHERE customer_id = 2;
SELECT * FROM customer;

--using sel-join linking the referral_id of table a with the customer_id of table b
SELECT *
FROM customer AS a
INNER JOIN customer AS b
ON a.referral_id = b.customer_id;

--reducing the ambiguity of the table
SELECT a.customer_id, a.first_name, a.last_name,
	b.first_name, b.last_name
FROM customer AS a
INNER JOIN customer AS b
ON a.referral_id = b.customer_id;

--concatenate the first_name, last_name from both tables
SELECT a.customer_id, a.first_name, a.last_name,
	CONCAT(b.first_name, " ", b.last_name) AS "referred_by"
FROM customer AS a
INNER JOIN customer AS b
ON a.referral_id = b.customer_id;

--using left join
SELECT a.customer_id, a.first_name, a.last_name,
	CONCAT(b.first_name, " ", b.last_name) AS "referred_by"
FROM customer AS a
LEFT JOIN customer AS b
ON a.referral_id = b.customer_id;

--another example
ALTER TABLE employees
ADD supervisor_id INT;
SELECT * FROM employees;


UPDATE employees
SET supervisor_id = 2
WHERE employee_id = 1512;
SELECT * FROM employees;


UPDATE employees
SET supervisor_id = 2
WHERE employee_id = 1648;
SELECT * FROM employees;


UPDATE employees
SET supervisor_id = 1
WHERE employee_id = 1711;
SELECT * FROM employees;

--using self-join to display first/last_names of employees along with the full name of the person supervising them
SELECT * 
FROM employees AS a
INNER JOIN employees AS b
ON a.supervisor_id = b.employee_id;

SELECT a.first_name, a.last_name,
	CONCAT(b.first_name, " ", b.last_name) AS "Report_to"
FROM employees AS a
INNER JOIN employees AS b
ON a.supervisor_id = b.employee_id;

SELECT a.first_name, a.last_name,
	CONCAT(b.first_name, " ", b.last_name) AS "Report_to"
FROM employees AS a
LEFT JOIN employees AS b
ON a.supervisor_id = b.employee_id;

