USE;
USE coffee_store;

-- Show Create tables
SHOW CREATE TABLE orders;
SHOW CREATE TABLE customers;
SHOW CREATE TABLE products;

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



INSERT INTO
    `orders` (
        `id`,
        `product_id`,
        `customer_id`,
        `order_time`
    )
VALUES (
        1,
        1,
        1,
        '2024-07-01 10:00:00'
    ),
    (
        2,
        2,
        2,
        '2024-07-01 10:05:00'
    ),
    (
        3,
        3,
        3,
        '2024-07-01 11:00:00'
    ),
    (
        4,
        4,
        4,
        '2024-07-01 11:30:00'
    ),
    (
        5,
        5,
        5,
        '2024-07-01 12:00:00'
    );