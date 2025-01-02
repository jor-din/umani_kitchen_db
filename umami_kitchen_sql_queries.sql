/* Retrieve all products priced above $10 (Simple) */
SELECT ProductID, Name, Price, Stock
FROM PRODUCT
WHERE Price > 10.00;

/* Count the total number of orders and calculate the average order amount (Aggregate) */
SELECT COUNT(OrderID) AS TotalOrders, AVG(TotalAmount) AS AverageOrderAmount
FROM `ORDER`;

/*List all orders along with customer names (Inner Join) */
SELECT 
    o.OrderID,
    c.Name AS CustomerName,
    o.OrderDate,
    o.TotalAmount
FROM
    `ORDER` o
        INNER JOIN
    CUSTOMER c ON o.CustomerID = c.CustomerID;

/*List all orders along with customer names (Inner Join) */
SELECT o.OrderID, c.Name AS CustomerName, o.OrderDate, o.TotalAmount
FROM `ORDER` o
INNER JOIN CUSTOMER c ON o.CustomerID = c.CustomerID;

/* List all customers and their orders (including customers who have not placed an order). (Outer Join)*/
SELECT 
    c.CustomerID,
    c.Name AS CustomerName,
    o.OrderID,
    o.OrderDate,
    o.TotalAmount
FROM CUSTOMER c
LEFT JOIN `ORDER` o ON c.CustomerID = o.CustomerID;

/* Find customers who have spent more than the average order total (Nested) */
SELECT 
    c.CustomerID,
    c.Name AS CustomerName,
    SUM(o.TotalAmount) AS TotalSpent
FROM CUSTOMER c
JOIN `ORDER` o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.Name
HAVING SUM(o.TotalAmount) > (
    SELECT AVG(TotalAmount)
    FROM `ORDER`
);

/* Find all orders where the total amount is greater than the average order total (Correlated) */
SELECT OrderID, TotalAmount
FROM `ORDER` o1
WHERE TotalAmount > (
    SELECT AVG(TotalAmount)
    FROM `ORDER` o2
);
/*List all customers who have placed at least one order (Exists) */
SELECT c.CustomerID, c.Name
FROM CUSTOMER c
WHERE EXISTS (
    SELECT 1
    FROM `ORDER` o
    WHERE o.CustomerID = c.CustomerID
);

/*Combine two queries: a list of customer names and a list of influences names (Union)*/
SELECT Name AS PersonName, 'Customer' AS Role
FROM CUSTOMER
UNION
SELECT Name AS PersonName, 'Influencer' AS Role
FROM INFLUENCER;

/* Retrieve each product’s total sales (quantity ordered) using a subquery in SELECT clause */
SELECT p.ProductID, p.Name, p.Price, 
    (SELECT SUM(op.Quantity)
     FROM ORDER_PRODUCT op
     WHERE op.ProductID = p.ProductID) AS TotalQuantitySold
FROM PRODUCT p;
