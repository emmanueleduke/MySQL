--this allows you get the current date and time in mysql--
CREATE TABLE test (
	my_date DATE,
	my_time TIME,
	my_datetime DATETIME
);

--to see the table --
SELECT * FROM test;

--to get the current date say an event--

INSERT INTO test
VALUES(CURRENT_TIME(), CURRENT_DATE(), NOW());

SELECT * FROM test;


--to get the date for the next day--

INSERT INTO test
VALUES(CURRENT_DATE + 1, NULL, NULL);

SELECT * FROM test;

--you can as well increment the time and datetime--
