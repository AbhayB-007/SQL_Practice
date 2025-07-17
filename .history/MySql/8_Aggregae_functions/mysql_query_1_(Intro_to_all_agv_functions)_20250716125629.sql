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