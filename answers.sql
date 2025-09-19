
-- Geting firstName, lastName, email, and officeCode of all employees and Using INNER JOIN to combine employees and offices tables

SELECT 
    e.firstName,
    e.lastName, 
    e.email,
    e.officeCode
FROM employees e
INNER JOIN offices o ON e.officeCode = o.officeCode;

-- Geting productName, productVendor, and productLine from products table and Using LEFT JOIN to combine products and productlines tables

SELECT 
    p.productName,
    p.productVendor,
    p.productLine
FROM products p
LEFT JOIN productlines pl ON p.productLine = pl.productLine;

-- Geting orderDate, shippedDate, status, and customerNumber for first 10 orders and Using RIGHT JOIN to combine customers and orders tables

SELECT 
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM customers c
RIGHT JOIN orders o ON c.customerNumber = o.customerNumber
ORDER BY o.orderNumber
LIMIT 10;
