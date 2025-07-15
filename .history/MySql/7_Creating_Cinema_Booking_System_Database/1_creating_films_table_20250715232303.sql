USE;
USE cinema_booking_system;
SHOW DATABASES;
SHOW TABLES;

CREATE DATABASE cinema_booking_system;


CREATE TABLE films (
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(45) NOT NULL UNIQUE,
    length_min INT NOT NULL
);


SELECT * FROM films;

DESCRIBE films;

DROP TABLE films;