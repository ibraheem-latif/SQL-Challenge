-- Question 1
USE sakila;
SELECT first_name,last_name FROM actor;

-- Question 2
SELECT first_name,last_name FROM actor WHERE first_name = 'John';

-- Question 3
SELECT first_name, last_name FROM actor WHERE last_name = 'Neeson';

-- Question 4 
SELECT * FROM actor WHERE (actor_id%10)=0;

-- Question 5
SELECT description FROM film WHERE film_id=100;

-- Question 6
SELECT title FROM film WHERE rating = 'R';

-- Question 7 
SELECT title FROM film WHERE rating NOT LIKE 'R';

-- Question 8
SELECT title, length FROM film ORDER BY length ASC LIMIT 10; 

-- Question 9
SELECT title, length FROM film ORDER BY length DESC;

-- Question 10
SELECT title, special_features FROM film WHERE special_features LIKE "%Deleted Scenes%";

-- Question 11
SELECT last_name, 
COUNT(last_name) as ln_count
FROM actor
GROUP BY last_name
HAVING ln_count = 1
ORDER BY last_name DESC; 

-- Question 12
SELECT last_name, 
COUNT(last_name) as ln_count
FROM actor
GROUP BY last_name
HAVING ln_count > 1
ORDER BY ln_count DESC; 

-- Question 13
SELECT actor.last_name, COUNT(film_actor.actor_id) AS NoFilms
FROM (film_actor
INNER JOIN actor ON film_actor.actor_id = actor.actor_id)
GROUP BY last_name
HAVING COUNT(film_actor.actor_id)>1
ORDER BY COUNT(film_actor.actor_id) DESC; 

-- Question 14
SELECT title, rental_duration 
FROM film
WHERE title = "ACADEMY DINOSAUR";

-- Question 15
SELECT AVG(length) FROM film;

-- Question 16 
SELECT category.name, AVG(film.length) AS average_length
FROM film_category
INNER JOIN category ON film_category.category_id = category.category_id
INNER JOIN film ON film_category.film_id = film.film_id 
GROUP BY name;

-- Question 17
SELECT title, description
 FROM film
 WHERE description LIKE "%robot%";
 
 -- Question 18
 SELECT *
 FROM film
 WHERE release_year ="2010";
 
 -- Question 19
SELECT COUNT(name) as `Horror Movies`
FROM film_category fc
INNER JOIN category c ON fc.category_id = c.category_id
INNER JOIN film f ON fc.film_id = f.film_id
GROUP BY name 
HAVING name = "Horror";

-- Question 20
SELECT first_name, last_name 
FROM staff
WHERE staff_id = 2;

-- Question 21
SELECT title, first_name, last_name
FROM film f
INNER JOIN film_actor fa ON f.film_id = fa.film_id
INNER JOIN actor a ON fa.actor_id = a.actor_id
WHERE first_name = "Fred" AND last_name = "Costner";

-- Question 22
SELECT COUNT(DISTINCT country)
From country;

-- Question 23
SELECT name 
FROM language
ORDER BY name DESC;

-- Question 24
SELECT first_name, last_name
FROM actor
WHERE last_name LIKE "%son"
ORDER BY first_name ASC;

-- Question 25
SELECT name, COUNT(name) AS movie_count
FROM film_category fc
INNER JOIN category c ON fc.category_id = c.category_id
INNER JOIN film f ON fc.film_id = f.film_id
GROUP BY name
ORDER BY movie_count DESC;











