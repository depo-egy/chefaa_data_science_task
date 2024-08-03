-- Create the sales table with Sales_Region column
CREATE TABLE Sales (
    Sale_ID INT PRIMARY KEY,
    Sale_Date DATE,
    Product_ID INT,
    Customer_ID INT,
    Quantity INT,
    Total_Amount DECIMAL(10, 2),
    Sales_Region VARCHAR(255)
);

-- Insert data into the sales table
INSERT INTO Sales (Sale_ID, Sale_Date, Product_ID, Customer_ID, Quantity, Total_Amount, Sales_Region) VALUES
(1, '2023-01-01', 101, 1001, 2, 49.98, 'North'),
(2, '2023-01-03', 102, 1002, 1, 19.99, 'South'),
(3, '2023-01-05', 103, 1003, 3, 89.97, 'East'),
(4, '2023-01-07', 104, 1004, 1, 29.99, 'West'),
(5, '2023-01-09', 105, 1005, 2, 59.98, 'North'),
(6, '2023-01-11', 106, 1006, 1, 9.99, 'South'),
(7, '2023-01-13', 107, 1007, 4, 119.96, 'East'),
(8, '2023-01-15', 108, 1008, 1, 39.99, 'West'),
(9, '2023-01-17', 109, 1009, 2, 79.98, 'North'),
(10, '2023-01-19', 110, 1010, 1, 49.99, 'South'),
(11, '2023-01-21', 101, 1011, 3, 74.97, 'East'),
(12, '2023-01-23', 102, 1012, 2, 39.98, 'West'),
(13, '2023-01-25', 103, 1013, 1, 29.99, 'North'),
(14, '2023-01-27', 104, 1014, 4, 119.96, 'South'),
(15, '2023-01-29', 105, 1015, 2, 59.98, 'East'),
(16, '2023-01-31', 106, 1016, 1, 9.99, 'West'),
(17, '2023-02-02', 107, 1017, 3, 89.97, 'North'),
(18, '2023-02-04', 108, 1018, 2, 79.98, 'South'),
(19, '2023-02-06', 109, 1019, 1, 39.99, 'East'),
(20, '2023-02-08', 110, 1020, 4, 199.96, 'West');

-- Create the products table with the Category column
CREATE TABLE Products (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(255),
    Price DECIMAL(10, 2),
    Category VARCHAR(255)
);

-- Insert data into the products table
INSERT INTO Products (Product_ID, Product_Name, Price, Category) VALUES
(101, 'Product A', 24.99, 'Electronics'),
(102, 'Product B', 19.99, 'Home & Kitchen'),
(103, 'Product C', 29.99, 'Beauty & Personal Care'),
(104, 'Product D', 29.99, 'Toys & Games'),
(105, 'Product E', 29.99, 'Books'),
(106, 'Product F', 9.99, 'Stationery'),
(107, 'Product G', 29.99, 'Fashion'),
(108, 'Product H', 39.99, 'Sports & Outdoors'),
(109, 'Product I', 39.99, 'Health & Wellness'),
(110, 'Product J', 49.99, 'Automotive');

-- Create the customers table for reference
CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(255),
    Customer_Email VARCHAR(255)
);

-- Insert data into the customers table
INSERT INTO Customers (Customer_ID, Customer_Name, Customer_Email) VALUES
(1001, 'John Smith', 'john.smith@example.com'),
(1002, 'Jane Doe', 'jane.doe@example.com'),
(1003, 'Emily Johnson', 'emily.johnson@example.com'),
(1004, 'Michael Brown', 'michael.brown@example.com'),
(1005, 'Sarah Davis', 'sarah.davis@example.com'),
(1006, 'Peter Pan', 'peter.pan@example.com'),
(1007, 'Lily Evans', 'lily.evans@example.com'),
(1008, 'Tom Riddle', 'tom.riddle@example.com'),
(1009, 'Bruce Wayne', 'bruce.wayne@example.com'),
(1010, 'Clark Kent', 'clark.kent@example.com'),
(1011, 'Diana Prince', 'diana.prince@example.com'),
(1012, 'Barry Allen', 'barry.allen@example.com'),
(1013, 'Arthur Curry', 'arthur.curry@example.com'),
(1014, 'Hal Jordan', 'hal.jordan@example.com'),
(1015, 'Victor Stone', 'victor.stone@example.com'),
(1016, 'Lois Lane', 'lois.lane@example.com'),
(1017, 'James Gordon', 'james.gordon@example.com'),
(1018, 'Selina Kyle', 'selina.kyle@example.com'),
(1019, 'Oliver Queen', 'oliver.queen@example.com'),
(1020, 'Roy Harper', 'roy.harper@example.com');
