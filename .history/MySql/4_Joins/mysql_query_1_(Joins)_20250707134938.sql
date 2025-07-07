USE;
USE coffee_store;
use test;

CREATE TABLE orders (
    `id` int,
    
    `last_name` varchar(50) NOT NULL,
    `gender` varchar(5) DEFAULT NULL,
    `phone_number` int DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci
SELECT * FROM orders;

SELECT * FROM products;

CREATE TABLE customers (
    id INT,
    first_name varchar(30),
    last_name varchar(30),
    gender ENUM('M', 'F'),
    phone_number varchar(11)
);
SELECT * FROM customers;

SELECT products.name, orders.order_time
FROM orders
    INNER JOIN products ON orders.product_id = products.id;

SELECT p.name, o.order_time
FROM orders AS o
    JOIN products p ON o.product_id = p.id;

SELECT p.name, o.order_time
FROM orders AS o
    JOIN products p ON o.product_id = p.id
WHERE
    o.product_id = 5
ORDER BY o.order_time;

-- Inner join syntax
-- SELECT <table name>.<column name>, ... FROM <table 1>
-- JOIN <table 2> ON <table 1>.<column name> = <table 2>.<column name>
-- WHERE clause, if needed
-- ORDER BY clause, if needed;


