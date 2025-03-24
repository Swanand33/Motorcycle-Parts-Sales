USE motorcycle_sales;

-- Total revenue
SELECT SUM(total) AS total_revenue FROM sales;

-- Total number of sales transactions
SELECT COUNT(order_number) AS total_orders FROM sales;

-- Average order value
SELECT AVG(total) AS average_order_value FROM sales;


-- Monthly total sales
SELECT 
    DATE_FORMAT(date, '%Y-%m') AS month, 
    SUM(total) AS total_sales 
FROM sales
GROUP BY month
ORDER BY month;


-- Top product lines by revenue
SELECT 
    product_line, 
    SUM(total) AS revenue 
FROM sales
GROUP BY product_line
ORDER BY revenue DESC
LIMIT 5;


-- Warehouse-wise sales performance
SELECT 
    warehouse, 
    COUNT(order_number) AS total_orders, 
    SUM(total) AS total_revenue 
FROM sales
GROUP BY warehouse
ORDER BY total_revenue DESC;