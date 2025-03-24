CREATE DATABASE motorcycle_sales;
USE motorcycle_sales;

CREATE TABLE sales (
    order_number VARCHAR(20) PRIMARY KEY,
    date DATETIME,
    warehouse VARCHAR(50),
    client_type VARCHAR(20),
    product_line VARCHAR(100),
    quantity INT,
    unit_price DECIMAL(10,2),
    total DECIMAL(10,2),
    payment VARCHAR(20),
    payment_fee DECIMAL(10,2)
);


LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/sales.csv'
INTO TABLE sales
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(order_number, date, warehouse, client_type, product_line, quantity, unit_price, total, payment, payment_fee)
SET date = STR_TO_DATE(date, '%Y-%m-%d %H:%i:%s');

SELECT * FROM sales LIMIT 10;



-- Select the first 10 rows to inspect data
SELECT * FROM sales LIMIT 10;

-- Check the number of records
SELECT COUNT(*) AS total_records FROM sales;

-- View column details
DESCRIBE sales;



-- Check for NULL values in any column
SELECT 
    SUM(CASE WHEN order_number IS NULL THEN 1 ELSE 0 END) AS missing_order_number,
    SUM(CASE WHEN date IS NULL THEN 1 ELSE 0 END) AS missing_date,
    SUM(CASE WHEN warehouse IS NULL THEN 1 ELSE 0 END) AS missing_warehouse,
    SUM(CASE WHEN client_type IS NULL THEN 1 ELSE 0 END) AS missing_client_type,
    SUM(CASE WHEN product_line IS NULL THEN 1 ELSE 0 END) AS missing_product_line,
    SUM(CASE WHEN quantity IS NULL THEN 1 ELSE 0 END) AS missing_quantity,
    SUM(CASE WHEN unit_price IS NULL THEN 1 ELSE 0 END) AS missing_unit_price,
    SUM(CASE WHEN total IS NULL THEN 1 ELSE 0 END) AS missing_total,
    SUM(CASE WHEN payment IS NULL THEN 1 ELSE 0 END) AS missing_payment
FROM sales;
