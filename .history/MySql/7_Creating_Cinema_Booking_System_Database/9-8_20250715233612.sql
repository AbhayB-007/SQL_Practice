USE;
USE cinema_booking_system;
SHOW TABLES;

CREATE TABLE bookings (
	id INT PRIMARY KEY AUTO_INCREMENT,
    screening_id INT NOT NULL,
    customer_id INT NOT NULL,
    FOREIGN KEY (screening_id) REFERENCES screenings(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);
DROP TABLE bookings;

SHOW TABLES;

DESCRIBE bookings;
