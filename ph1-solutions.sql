/* SQL "Sakila" database query exercises - phase 1 */

-- Database context
USE sakila;

-- Your solutions...

/* 1. Which actors have the first name ‘Scarlett’ */
SELECT * FROM actor WHERE first_name = 'Scarlett';

/* 2. Which actors have the last name ‘Johansson’ */
SELECT * FROM actor WHERE last_name = 'Johansson';

/* 3. How many distinct actors last names are there? */
SELECT COUNT( DISTINCT last_name) as last_names FROM actor;

/* 4. Which last names are not repeated? */
SELECT last_name FROM actor GROUP BY last_name HAVING COUNT(*) = 1;
SELECT COUNT(last_name) FROM ( SELECT last_name FROM actor GROUP BY last_name HAVING COUNT(*) = 1 ) AS ONLY_ONCE;

/* 5. Which last names appear more than once? */
SELECT last_name FROM actor GROUP BY last_name HAVING COUNT(*) > 1;
SELECT COUNT(last_name) FROM ( SELECT last_name FROM actor GROUP BY last_name HAVING COUNT(*) > 1 ) AS MORE_THAN_ONCE;

/* 6. Which actor has appeared in the most films? */
SELECT actor.actor_id, actor.first_name, actor.last_name, COUNT(actor_id) AS film_count FROM actor JOIN film_actor USING (actor_id) GROUP BY actor_id ORDER BY film_count DESC limit 1;

/* 7. Is ‘Academy Dinosaur’ available for rent from Store 1? */

/* 8. Insert a record to represent Mary Smith renting ‘Academy Dinosaur’ from Mike Hillyer at Store 1 today . */

/* 9. When is ‘Academy Dinosaur’ due? */

/* 10. What is that average running time of all the films in the sakila DB? */

/* 11. What is the average running time of films by category? */

/* 12. Why does this query return the empty set? */