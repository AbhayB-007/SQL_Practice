USE;
USE coffee_store;

-- Show Create tables
SHOW CREATE TABLE orders;
SHOW CREATE TABLE products;
SHOW CREATE TABLE customers;

-- Get all data from the tables
SELECT * FROM orders;
SELECT * FROM products;
SELECT * FROM customers;

SELECT p.name, o.order_time FROM orders o
INNER JOIN products p ON o.product_id = p.id;

SELECT p.name, o.order_time FROM orders AS o
JOIN products p ON o.product_id = p.id
WHERE o.product_id = 5
ORDER BY o.order_time;

SELECT 
CONCAT(c.first_name, ' ', c.last_name) AS customer_name, p.name AS product_name, o.order_time
FROM orders o
INNER JOIN products p ON o.product_id = p.id
INNER JOIN customers c ON o.customer_id = c.id;


-- Inner join syntax
-- SELECT <table name>.<column name>, ... FROM <table 1>
-- JOIN <table 2> ON <table 1>.<column name> = <table 2>.<column name>
-- WHERE clause, if needed
-- ORDER BY clause, if needed;


CREATE TABLE `new_orders` (
    `id` int DEFAULT NULL,
    `product_id` int DEFAULT NULL,
    `customer_id` int DEFAULT NULL,
    `order_time` datetime DEFAULT NULL,
    FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) 
    ON DELETE CASCADE 
    ON UPDATE CASCADE,
    FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) 
    ON DELETE CASCADE O
    N UPDATE CASCADE
);

