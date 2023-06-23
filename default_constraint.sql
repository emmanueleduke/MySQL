--when inserting a new roll in a table without specifying the value for a column, you can use default value--

--using the DEFAULT statement while creating a table--
CREATE TABLE products(
	product_id INT,
	product_name VARCHAR(50),
	product_price DECIMAL(5, 2) DEFAULT 0
);

SELECT * FROM products;

--inserting values into the table--
INSERT INTO products
VALUES (100, "oranges", 3),
       (101, "pinapples", 4),
       (102, "apples", 5),
       (103, "banana")
       (104, "blueberry");

SELECT * FROM products;


--using the DEFAULT statement in an existing table--

ALTER TABLE products
ALTER product_pice SET DEFAULT 0;

SELECT * FROM product;

--insert into table--
INSERT INTO products(product_id, product_name)
VALUES(105, "straw"), 
      (106, "napkin"), 
      (107, "plastic_fork");
SELECT * FROM products;



--to see the time a transaction occur, lets create anothe table called transaction--
CREATE TABLE transaction(
	transaction_id INT,
	amount DECIMAL(5, 2),
	transaction_date DATETIME DEFAULT NOW()
);

--insert values into transaction table--
INSERT INTO transaction(transaction_id, amount)
VALUES(1, 4),
      (2, 6);
SELECT * FROM transaction;

