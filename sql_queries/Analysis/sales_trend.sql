-- Monthly total sales
SELECT 
    DATE_FORMAT(date, '%Y-%m') AS month, 
    SUM(total) AS total_sales 
FROM sales
GROUP BY month
ORDER BY month;


-- Daily total sales
SELECT 
    DATE(date) AS sales_date, 
    SUM(total) AS total_sales 
FROM sales
GROUP BY sales_date
ORDER BY sales_date;


-- Identify the highest revenue month
SELECT 
    DATE_FORMAT(date, '%Y-%m') AS month, 
    SUM(total) AS total_sales 
FROM sales
GROUP BY month
ORDER BY total_sales DESC
LIMIT 1;