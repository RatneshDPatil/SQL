CREATE DATABASE sales_data;
CREATE TABLE Sales (
    sale_id INT,
    sale_date DATE,
    sale_quantity INT,
    sale_unit_price DECIMAL(10, 2),
    product_id INT);
    -- Inserting sample data into the "Sales" table
INSERT INTO Sales 
(sale_id, sale_date, sale_quantity, sale_unit_price, product_id)
VALUES
    (1, '2024-05-01', 120, 25.50, 101),
    (2, '2024-05-02', 80, 30.00, 102),
    (3, '2024-05-03', 150, 20.75, 101),
    (4, '2024-05-04', 200, 18.90, 103),
    (5, '2024-05-05', 90, 35.20, 102);

-- Retrieve Sales Records with Quantity > 100
SELECT *
FROM Sales
WHERE sale_quantity > 100;

-- Calculate Average Sale Quantity per Product:
SELECT product_id, AVG(sale_quantity) AS avg_sale_quantity
FROM Sales
GROUP BY product_id;

-- Find Maximum and Minimum Sale Unit Prices:
SELECT MAX(sale_unit_price) AS max_unit_price
FROM Sales;
SELECT MIN(sale_unit_price) AS min_unit_price
FROM Sales;

-- Determine Total Number of Sales and Total Sales Amount:
SELECT COUNT(*) AS total_sales
FROM Sales;
SELECT SUM(sale_quantity * sale_unit_price) AS total_sales_amount
FROM Sales;

-- Identify Products with Unique Sale Quantities (No Duplicates):
SELECT product_id, COUNT(DISTINCT sale_quantity) AS unique_quantities
FROM Sales
GROUP BY product_id
HAVING unique_quantities = 1;




