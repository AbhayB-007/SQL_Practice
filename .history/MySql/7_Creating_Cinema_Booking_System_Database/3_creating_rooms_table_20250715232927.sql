USE;
USE cinema_booking_system;
SHOW TABLES;

CREATE TABLE rooms (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL,
    no_seats INT NOT NULL
);
DROP TABLE rooms;


DESCRIBE rooms;

SELECT * FROM rooms;