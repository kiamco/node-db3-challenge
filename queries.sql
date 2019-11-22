-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT * FROM [Products] 
INNER JOIN Categories
ON Products.CategoryID = Categories.CategoryID

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT Orders.OrderID, Shippers.ShipperName, Orders.OrderDate
FROM Orders 
INNER JOIN Shippers
ON Orders.ShipperID = Shippers.ShipperID
WHERE OrderDate < '2012-8-9'



-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT P.ProductName, O.ProductID, COUNT(P.ProductName) 
FROM [Products] AS P
INNER JOIN OrderDetails AS O
ON P.ProductID = O.ProductID
WHERE P.ProductID=10251
GROUP BY P.ProductName
ORDER BY P.ProductID


-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
