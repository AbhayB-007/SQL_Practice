-- What are aggregate functions in MYSQL?
-- Aggregate functions are used to perform calculations on a set of values and return a single value.
-- They are often used with the GROUP BY clause to group rows that have the same values in specified columns into summary rows.
-- Common aggregate functions include:
-- 1. COUNT() - Returns the number of rows that match a specified condition.
-- 2. SUM() - Returns the total sum of a numeric column.
-- 3. AVG() - Returns the average value of a numeric column.
-- 4. MAX() - Returns the maximum value in a set.
-- 5. MIN() - Returns the minimum value in a set.
-- Example of using aggregate functions:
SELECT COUNT(*) AS total_customers FROM customers;
SELECT SUM(price) AS total_revenue FROM bookings;   
SELECT AVG(length_min) AS average_film_length FROM films;
SELECT MAX(no_seats) AS max_seats FROM rooms;
SELECT MIN(start_time) AS earliest_screening FROM screenings;
-- Note: Aggregate functions ignore NULL values, except for COUNT(*), which counts all rows regardless of NULLs.
-- Aggregate functions can be used in SELECT statements, HAVING clauses, and ORDER BY clauses.
-- Example of using aggregate functions with GROUP BY:
SELECT room_id, COUNT(*) AS total_screenings
FROM screenings
GROUP BY room_id;
-- This query counts the number of screenings for each room and groups the results by room_id.
-- Aggregate functions can also be combined with other SQL clauses like WHERE and HAVING to filter results
-- before performing the aggregation.
-- Example of using aggregate functions with HAVING:
SELECT room_id, COUNT(*) AS total_screenings
FROM screenings
GROUP BY room_id
HAVING total_screenings > 5;
-- This query counts the number of screenings for each room and only returns rooms with more than 5 screenings.
-- Aggregate functions can also be nested within other aggregate functions, but this is less common.
-- Example of nested aggregate functions:
SELECT AVG(total_screenings) AS average_screenings_per_room
FROM (SELECT room_id, COUNT(*) AS total_screenings
      FROM screenings
      GROUP BY room_id) AS subquery;
-- This query calculates the average number of screenings per room by first counting the screenings in a subquery.
-- Aggregate functions can also be used in conjunction with window functions to perform calculations across a set of rows related to the current row.
-- Example of using aggregate functions with window functions:
SELECT room_id, COUNT(*) AS total_screenings,
       AVG(COUNT(*)) OVER () AS average_screenings
FROM screenings
GROUP BY room_id;
-- This query counts the number of screenings for each room and calculates the average number of screenings across all rooms using a window function.
-- Aggregate functions can also be used in combination with JOINs to aggregate data from multiple tables.
-- Example of using aggregate functions with JOINs:
SELECT c.name AS customer_name, COUNT(b.id) AS total_bookings