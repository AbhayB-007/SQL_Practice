USE;
SHOW DATABASES;

CREATE DATABASE cinema_booking_system;

USE cinema_booking_system;

CREATE TABLE films (
	id INT PRIMARY KEY ,
    name VARCHAR(45) NOT NULL UNIQUE,
    length_min INT NOT NULL
);

SHOW TABLES;

SELECT * FROM films;

DESCRIBE films;

DROP TABLE films;