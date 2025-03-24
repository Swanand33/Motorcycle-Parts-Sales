-- Top 5 customers by total amount spent
SELECT 
    client_type, 
    SUM(total) AS total_spent 
FROM sales
GROUP BY client_type
ORDER BY total_spent DESC
LIMIT 5;


-- Average order value per customer type
SELECT 
    client_type, 
    AVG(total) AS avg_order_value 
FROM sales
GROUP BY client_type;


-- Count number of orders per customer type
SELECT 
    client_type, 
    COUNT(*) AS order_count 
FROM sales
GROUP BY client_type
ORDER BY order_count DESC;