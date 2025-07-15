USE;
SHOW DATABASES;
SHOW TABLES;

CREATE DATABASE cinema_booking_system;
USE cinema_booking_system;


CREATE TABLE films (
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(45) NOT NULL UNIQUE,
    length_min INT NOT NULL
);

DROP TABLE films;

SELECT * FROM films;

DESCRIBE films;
