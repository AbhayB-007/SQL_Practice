USE;

USE cinema_booking_system;

SHOW TABLES;

CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(45),
    last_name VARCHAR(45) NOT NULL,
    email VARCHAR(45) NOT NULL UNIQUE
);

DROP TABLE customers;

DESCRIBE customers;

SELECT * FROM customers;


