SHOW DATABASES;
USE sales;
SHOW TABLES;
SELECT checkNumber, paymentDate, amount FROM payments;

SELECT orderDate, requiredDate, status FROM orders 
WHERE status = 'In Process'
ORDER BY orderDate DESC;

SELECT employeeNumber, firstName, lastName FROM employees
WHERE jobTitle = 'Sales Rep'
ORDER BY employeeNumber DESC;

SELECT *
FROM offices;

SELECT productName, quantityInstock
FROM products
ORDER BY buyPrice ASC
LIMIT 5;


USE sales;
DROP TABLE IF EXISTS student;

CREATE TABLE student (
    id INT PRIMARY KEY,
    fullName VARCHAR(100),
    age INT
);

-- then your INSERT and UPDATE
INSERT INTO student (id, fullName, age) VALUES
(1, 'John Doe', 19),
(2, 'Jane Smith', 22),
(3, 'Peter Jones', 21);

UPDATE student
SET age = 20
WHERE id = 2;

SELECT * FROM student;
