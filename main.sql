USE sakila;
-- 1. Select all the actors with the first name ‘Scarlett’.
SELECT * FROM actor WHERE first_name = 'Scarlett'
-- 2. Select all the actors with the last name ‘Johansson’.
SELECT * FROM actor WHERE last_name = 'Johansson'
-- 3. How many films (movies) are available for rent?
SELECT COUNT(DISTINCT film_id) FROM inventory
-- 4. How many films have been rented?
SELECT COUNT(DISTINCT rental_id) FROM payment
-- 5. What is the shortest and longest rental period?
SELECT max(DATEDIFF(return_date, rental_date)) as max_period, min(DATEDIFF(return_date, rental_date)) as min_period  FROM rental;
-- 6. What are the shortest and longest movie duration? Name the values `max_duration` and `min_duration`.
-- 7. What's the average movie duration?
-- 8. What's the average movie duration expressed in format (hours, minutes)?
-- 9. How many movies longer than 3 hours?
-- 10. Get the name and email formatted. Example: Mary SMITH - *mary.smith@sakilacustomer.org*.
-- 11. What's the length of the longest film title?