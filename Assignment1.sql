USE db_wed;


CREATE TABLE FirstCustomers (
    CustomerID INT PRIMARY KEY,             
    CustomerName VARCHAR(50) NOT NULL,      
    Email VARCHAR(40) UNIQUE               
);
SELECT * FROM FirstCustomers;


CREATE TABLE SecondOrders (
    OrderID INT PRIMARY KEY,                 
    CustomerID INT,                          
    OrderDate DATE NOT NULL,                  
    TotalAmount DECIMAL(10, 2),               
    CONSTRAINT fk_customer FOREIGN KEY (CustomerID) REFERENCES FirstCustomers(CustomerID), 
    CONSTRAINT check_totalAmount CHECK (TotalAmount > 0)
);


INSERT INTO FirstCustomers (CustomerID, CustomerName, Email) 
VALUES 
(1, 'Huma', 'riazhuma@gmail.com.com'),
(2, 'Hassan', 'hassanriaz@gmail.com.com'),
(3, 'Bilal', '.bilalriaz@gmail.com'),
(4, 'Kiran', 'riazkiran@gmail.com'),
(5, 'Ali', 'ali@gmail.com.com');

SELECT * FROM FirstCustomers;


INSERT INTO SecondOrders (OrderID, CustomerID, OrderDate, TotalAmount) 
VALUES 
(11, 1, '2025-03-03', 1500),
(12, 2, '2025-03-08', 8000),
(13, 3, '2025-03-09', 1200),
(14, 4, '2025-03-12', 4500),
(17, 5, '2025-03-11', 60),
(15, 1, '2025-03-15', 1600),
(16, 2, '2025-03-11', 40);

SELECT * FROM SecondOrders;


SELECT * FROM FirstCustomers c
JOIN SecondOrders o ON c.CustomerID = o.CustomerID;


SELECT c.CustomerName, o.OrderDate
FROM FirstCustomers c
JOIN SecondOrders o ON c.CustomerID = o.CustomerID
WHERE o.TotalAmount > 100;


