-- question 1 
-- sql query to get firstName, lastName, email and office code of all employees 
-- using an INNER JOIN between employees and offices on officeCode

SELECT e.firstName, e.lastName, e.email, e.officeCode
FROM employees AS e
INNER JOIN offices AS o ON e.officeCode = o.officeCode;


-- Question 2 🛍️
-- Write an SQL query to get the productName, productVendor, and productLine from the products table.
-- Use a LEFT JOIN to combine the products table with the productlines table using the productLine column.
SELECT p.productName, p.productVendor, p.productLine
FROM products AS p
LEFT JOIN productlines AS pl ON p.productLine = pl.productLine;

-- Question 3 📦
-- Write an SQL query to retrieve the orderDate, shippedDate, status, and customerNumber for the first 10 orders.
-- Use a RIGHT JOIN to combine the customers table with the orders table using the customerNumber column.

SELECT o.orderDate, o.shippedDate, o.status, o.customerNumber
FROM customers AS c
RIGHT JOIN orders AS o ON c.customerNumber = o.customerNumber
ORDER BY o.orderDate
LIMIT 10;
