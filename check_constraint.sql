--check constraint is use to check the amount of value put in a column--

--if creating the table--
CREATE TABLE employees (
	employee_id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	hourly_pay DECIMAL(5, 2),
	hire_date DATE,
	phonenumber VARCHAR(20),
	email-address VARCHAR(50),

	--putting a CHECK statement after creating the table to ensure a value entered will not be less than expected--
	--CHECK (hourly_pay >= 25)--
	--giving your CHECK a name is a good practice just incase you want to drop the CHECK--
	CONSTRAINT chk_hourly_pay CHECK (hourly_pay >= 25)
);


--if table is created already before adding CHECK--
ALTER TABLE employees
ADD CONSTRAINT chk_hourly_pay CHECK(hourly_pay >= 25);

--if you add say a new hire with hourly_pay less than 25, you get a violation error --
