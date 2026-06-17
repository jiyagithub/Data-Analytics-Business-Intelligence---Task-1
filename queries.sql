-- Query 1: Total Sales by Region
SELECT Region, SUM(Sales) AS Total_Sales
FROM superstore_utf8_csv
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Query 2: Top 5 Profitable Categories
SELECT Category, SUM(Profit) AS Total_Profit
FROM superstore_utf8_csv
GROUP BY Category
ORDER BY Total_Profit DESC
LIMIT 5;

-- Query 3: Monthly Sales Trend
SELECT MONTH("Order Date") AS Month,
       SUM(Sales) AS Total_Sales
FROM superstore_utf8_csv
GROUP BY MONTH("Order Date")
ORDER BY Month;

-- Query 4: Discount Impact on Profit
SELECT Discount, AVG(Profit)
FROM superstore_utf8_csv
GROUP BY Discount;