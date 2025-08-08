-- Total revenue per category
SELECT Category, SUM(Quantity * Price) AS TotalRevenue
FROM sales_data
GROUP BY Category;

-- Top selling product
SELECT Product, SUM(Quantity) AS TotalSold
FROM sales_data
GROUP BY Product
ORDER BY TotalSold DESC
LIMIT 1;

-- Monthly sales trend
SELECT strftime('%Y-%m', OrderDate) AS Month, SUM(Quantity * Price) AS Revenue
FROM sales_data
GROUP BY Month
ORDER BY Month;
