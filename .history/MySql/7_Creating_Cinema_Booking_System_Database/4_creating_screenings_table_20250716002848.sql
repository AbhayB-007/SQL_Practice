USE;
USE cinema_booking_system;
SHOW TABLES;

CREATE TABLE screenings (
	id INT PRIMARY KEY AUTO_INCREMENT,
    film_id INT NOT NULL,
    room_id INT NOT NULL,
    start_time DATETIME NOT NULL,
    FOREIGN KEY (film_id) REFERENCES films(id),
    FOREIGN KEY (room_id) REFERENCES rooms(id)
);
DROP TABLE screenings;

SHOW TABLES;

DESCRIBE screenings;

SELECT * FROM screenings;


ALTER TABLE screenings
drop Foreign Key screenings_ibfk_2;

ALTER TABLE screenings
drop INDEX

SHOW INDEX FROM screenings;
SHOW CREATE TABLE screenings;