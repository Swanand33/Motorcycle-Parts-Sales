-- Calculate total revenue and profit
SELECT 
    SUM(total) AS total_revenue, 
    SUM(total - (quantity * unit_price)) AS total_profit 
FROM sales;


-- Find top 5 most profitable product lines
SELECT 
    product_line, 
    SUM(total - (quantity * unit_price)) AS total_profit 
FROM sales
GROUP BY product_line
ORDER BY total_profit DESC
LIMIT 5;


-- Profit distribution across warehouses
SELECT 
    warehouse, 
    SUM(total - (quantity * unit_price)) AS total_profit 
FROM sales
GROUP BY warehouse
ORDER BY total_profit DESC;
