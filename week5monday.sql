Week 5 - Monday Questions

-- 1. How many actors are there with the last name ‘Wahlberg’?
SELECT COUNT(last_name)
FROM actor
WHERE last_name = 'Wahlberg';
-- There are two actors with the last name 'Wahlberg'.

-- 2. How many payments were made between $3.99 and $5.99?
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
-- There were 5,602 paymments made between $3.99 and $5.99.

-- 3. What film does the store have the most of? (search in inventory)
SELECT film_id, COUNT(*)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(*) DESC
LIMIT 1;
-- The store has the most (8) copies of 'Garden Island' (film_id: 350)

-- 4. How many customers have the last name ‘William’?
SELECT last_name
FROM customer
WHERE last_name = 'William';
-- There are no customers with the last name 'William'.

-- 5. What store employee (get the id) sold the most rentals?
SELECT staff_id, COUNT(rental_id)
FROM rental
GROUP BY staff_id
ORDER BY COUNT(rental_id) DESC;
-- Mike (staff_id: 1) has sold the most rentals (8,040)

-- 6. How many different district names are there?
SELECT COUNT(DISTINCT district)
FROM address;
-- There are 378 different districts.

-- 7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, COUNT(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC
LIMIT 1;
-- The film with the most actors is film_id 508 (Lambs Cincinatti), with 15 actors.

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT store_id, COUNT(last_name)
FROM customer
WHERE last_name LIKE '%es'
GROUP BY store_id;
-- There are 13 people with a last name ending in 'es' in store_id 1.

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
SELECT amount, customer_id
FROM payment
WHERE customer_id BETWEEN 380 AND 430; -- As far as I got sorry...

-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
SELECT rating, COUNT(*) AS movie_count
FROM film
GROUP BY rating
ORDER BY movie_count DESC;
-- There are 5 rating categories in the film table and PG-13 has the most movies.