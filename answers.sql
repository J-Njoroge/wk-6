-- Q1: Employees with their office info (INNER JOIN)
SELECT emp.firstName, emp.lastName, emp.email, emp.officeCode
FROM employees emp
INNER JOIN offices ofc
ON emp.officeCode = ofc.officeCode;

-- Q2: Products with product line info (LEFT JOIN)
SELECT prod.productName, prod.productVendor, prod.productLine
FROM products prod
LEFT JOIN productlines pl
ON prod.productLine = pl.productLine;

-- Q3: Orders with customer info (RIGHT JOIN, limit 10)
SELECT ofc.orderDate, ofc.shippedDate, ofc.status, ofc.customerNumber
FROM customers cust
RIGHT JOIN orders ofc
ON cust.customerNumber = ofc.customerNumber
LIMIT 10;