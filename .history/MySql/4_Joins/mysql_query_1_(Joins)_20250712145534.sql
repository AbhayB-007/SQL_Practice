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

SELECT products.name, orders.order_time FROM orders o
INNER JOIN products p ON o.product_id = p.id;

SELECT p.name, o.order_time FROM orders o
JOIN products p ON o.product_id = p.id;

SELECT p.name, o.order_time FROM orders AS o
JOIN products p ON o.product_id = p.id
WHERE o.product_id = 5
ORDER BY o.order_time;

-- Inner join syntax
-- SELECT <table name>.<column name>, ... FROM <table 1>
-- JOIN <table 2> ON <table 1>.<column name> = <table 2>.<column name>
-- WHERE clause, if needed
-- ORDER BY clause, if needed;


ALTER TABLE products
DROP PRIMARY KEY;

ALTER TABLE products
MODIFY id INT NULL;

DESCRIBE products;
SELECT
    TABLE_NAME,
    CONSTRAINT_NAME,
    COLUMN_NAME
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE
    TABLE_SCHEMA = 'coffee_store'
    AND TABLE_NAME = 'products'
    AND CONSTRAINT_NAME = 'PRIMARY';