-- Q1: List employees with their officeCode
SELECT e.firstName, e.lastName, e.email, o.officeCode
FROM employees e
INNER JOIN offices o ON e.officeCode = o.officeCode;


-- Q2: List all products with their product line info
SELECT p.productName, p.productVendor, pl.productLine
FROM products p
LEFT JOIN productlines pl ON p.productLine = pl.productLine;

-- Q3: List first 10 orders with customer info
SELECT o.orderDate, o.shippedDate, o.status, c.customerNumber
FROM customers c
RIGHT JOIN orders o ON c.customerNumber = o.customerNumber
LIMIT 10;