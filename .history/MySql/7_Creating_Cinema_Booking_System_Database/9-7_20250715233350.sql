USE;
USE cinema_booking_system;
SHOW TABLES;

CREATE TABLE seats (
	id INT PRIMARY KEY AUTO_INCREMENT,
    seat_row CHAR(1) NOT NULL,
    number INT NOT NULL,
    room_id INT NOT NULL,
    FOREIGN KEY (room_id) REFERENCES rooms(id)
);
DROP TABLE seats;

SHOW TABLES;

DESCRIBE seats;