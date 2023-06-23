--foreign key is used to link two tables--
CREATE TABLE customer(
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(50),
	last_name VARCHAR(50)
);
SELECT * FROM customers;

--inserting into the table--
INSERT INTO customer(first_name, last_name)
VALUES	("Fred", "Fish"),
	("Jons", "Lobster"),
	("Akin", "Dred");
SELECT * FROM customer;

--creating a connection between two tables--
CREATE TABLE transactions(
	transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL(5, 2),
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);
SELECT * FROM transactions;

--to delete a foreign key--
ALTER TABLE transactions
DROP FOREIGN KEY transactions_ibfk_1;

--to apply a foreign key to already exixsting table--
ALTER TABLE transactions
FOREIGN KEY(customer_id) REFERENCES customer(customer_id);

--to give a unique name to foreign key--
ALTER TABLE transactions
ADD CONSTRAINT emmy_fk
FOREIGN KEY(customer_id) REFERENCES customer(customer_id);

--to drop rolls from table--
DELETE FROM transactions;

--add new rools to the table but first set auto increment--
ALTER TABLE transactions
AUTO_INCREMENT = 1000;

--add the new role--
INSERT INTO transactions(amount, customer_id)
VALUES(3.54, 3),
      (4.12, 2),
      (7.98, 3),
      (5.76, 1);
SELECT * FROM transactions;


