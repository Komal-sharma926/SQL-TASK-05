

CREATE TABLE Customers (
  CustomerID INT PRIMARY KEY,
  CompanyName VARCHAR(255),
  ContactName VARCHAR(255),
  Phone VARCHAR(20)
);

CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  CustomerID INT,
  OrderDate DATE,
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Customers (CustomerID, CompanyName, ContactName, Phone)
VALUES
(1, 'ABC Inc.', 'John Doe', '123-456-7890'),
(2, 'XYZ Corp.', 'Jane Smith', '987-654-3210'),
(3, ' DEF Ltd.', 'Bob Johnson', '555-123-4567');

INSERT INTO Orders (OrderID, CustomerID, OrderDate)
VALUES
(101, 1, '2022-01-01'),
(102, 1, '2022-01-15'),
(103, 2, '2022-02-01'),
(104, 4, '2022-03-01');  -- Note: CustomerID 4 does not exist in Customers table

SELECT Customers.CustomerID, CompanyName, OrderID, OrderDate
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;

SELECT Customers.CustomerID, CompanyName, OrderID, OrderDate
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;

SELECT Customers.CustomerID, CompanyName, OrderID, OrderDate
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;

SELECT Customers.CustomerID, CompanyName, OrderID, OrderDate
FROM Customers
FULL JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;


