USE;
USE cinema_booking_system;
SHOW TABLES;

CREATE TABLE reserved_seat (
	id INT PRIMARY KEY AUTO_INCREMENT,
    booking_id INT NOT NULL,
    seat_id INT NOT NULL,
    FOREIGN KEY (booking_id) REFERENCES bookings(id),
    FOREIGN KEY (seat_id) REFERENCES seats(id)
);
DROP TABLE reserved_seat;

SHOW TABLES;

DESCRIBE reserved_seat;

SELECT * FROM reserved_seat;