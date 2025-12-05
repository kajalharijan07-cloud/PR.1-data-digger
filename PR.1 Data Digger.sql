


CREATE DATABASE IF NOT EXISTS EcommerceDB;
USE EcommerceDB;



CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Address VARCHAR(200)
);


CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);


CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2),
    Stock INT
);


CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    SubTotal DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);



INSERT INTO Customers VALUES
(1,'Alice','alice@gmail.com','Delhi'),
(2,'Bob','bob@gmail.com','Mumbai'),
(3,'Charlie','charlie@gmail.com','Pune'),
(4,'David','david@gmail.com','Chennai'),
(5,'Eva','eva@gmail.com','Kolkata');


INSERT INTO Orders VALUES
(101, 1, '2025-01-10', 1500),
(102, 2, '2025-01-18', 2200),
(103, 1, '2025-02-01', 900),
(104, 3, '2025-02-05', 1200),
(105, 4, '2025-02-20', 3500);

-- Products
INSERT INTO Products VALUES
(201,'Laptop',55000,10),
(202,'Mouse',500,50),
(203,'Keyboard',1200,30),
(204,'Monitor',8000,20),
(205,'Pendrive',600,100);


INSERT INTO OrderDetails VALUES
(301,101,201,1,55000),
(302,102,204,1,8000),
(303,102,202,2,1000),
(304,104,203,1,1200),
(305,105,205,5,3000);


SELECT * FROM Customers;


UPDATE Customers
SET Address = 'Bangalore'
WHERE CustomerID = 3;


DELETE FROM Customers
WHERE CustomerID = 5;


SELECT * FROM Customers
WHERE Name = 'Alice';


SELECT * FROM Orders
WHERE CustomerID = 1;


UPDATE Orders
SET TotalAmount = 5000
WHERE OrderID = 105;


DELETE FROM Orders
WHERE OrderID = 103;


SELECT * FROM Orders
WHERE OrderDate >= DATE_SUB(CURDATE(), INTERVAL 30 DAY);


SELECT 
    MAX(TotalAmount) AS HighestAmount,
    MIN(TotalAmount) AS LowestAmount,
    AVG(TotalAmount) AS AverageAmount
FROM Orders;

SELECT * FROM Products
ORDER BY Price DESC;


UPDATE Products
SET Price = 58000
WHERE ProductID = 201;


DELETE FROM Products
WHERE Stock = 0;


SELECT * FROM Products
WHERE Price BETWEEN 500 AND 2000;


SELECT MAX(Price) AS MostExpensive, MIN(Price) AS Cheapest
FROM Products;


SELECT * FROM OrderDetails
WHERE OrderID = 102;


SELECT SUM(SubTotal) AS TotalRevenue
FROM OrderDetails;


SELECT ProductID, SUM(Quantity) AS TotalQuantity
FROM OrderDetails
GROUP BY ProductID
ORDER BY TotalQuantity DESC
LIMIT 3;


SELECT ProductID, COUNT(*) AS TotalTimesSold
FROM OrderDetails
WHERE ProductID = 205
GROUP BY ProductID;
