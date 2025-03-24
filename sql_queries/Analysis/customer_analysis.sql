-- Identify top customers by total spending
SELECT 
    client_type, 
    SUM(total) AS total_spent 
FROM sales
GROUP BY client_type
ORDER BY total_spent DESC
LIMIT 5;


-- Calculate the average order value
SELECT 
    AVG(total) AS avg_order_value 
FROM sales;

-- Number of orders per customer type
SELECT 
    client_type, 
    COUNT(order_number) AS total_orders 
FROM sales
GROUP BY client_type
ORDER BY total_orders DESC;