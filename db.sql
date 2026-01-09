CREATE DATABASE superstore_db;
USE superstore_db;
CREATE TABLE superstore (
    Row_ID INT,
    Order_ID VARCHAR(50),
    Order_Date DATE,
    Ship_Date DATE,
    Ship_Mode VARCHAR(50),
    Customer_ID VARCHAR(50),
    Customer_Name VARCHAR(100),
    Segment VARCHAR(50),
    Country VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(50),
    Postal_Code VARCHAR(20),
    Region VARCHAR(50),
    Product_ID VARCHAR(50),
    Category VARCHAR(50),
    Sub_Category VARCHAR(50),
    Product_Name VARCHAR(200),
    Sales DOUBLE,
    Quantity INT,
    Discount DOUBLE,
    Profit DOUBLE
);
SELECT COUNT(*) FROM superstore;
TRUNCATE TABLE superstore;
SELECT COUNT(*) FROM superstore;
SELECT COUNT(*) FROM superstore;
SELECT 
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore;
SELECT 
    Category,
    ROUND(SUM(Profit),2) AS Profit
FROM superstore
GROUP BY Category
ORDER BY Profit DESC;
SELECT 
    Product_Name,
    ROUND(SUM(Sales),2) AS Sales
FROM superstore
GROUP BY Product_Name
ORDER BY Sales DESC
LIMIT 10;
SELECT 
    Region,
    ROUND(SUM(Sales),2) AS Sales
FROM superstore
GROUP BY Region
ORDER BY Sales DESC;
SELECT 
    Order_ID,
    Profit
FROM superstore
WHERE Profit < 0
ORDER BY Profit;














