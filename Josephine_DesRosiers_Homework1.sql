#Josephine Des Rosiers Homework #1

/* Question 1 */
SELECT first_name, last_name FROM actor
	WHERE first_name = "Penelope";

/* Question 2 */
SELECT first_name, last_name FROM actor 
	JOIN film_actor ON actor.actor_id = film_actor.actor_id
	JOIN film ON film_actor.film_id = film.film_id 
	AND film.title = "ZOOLANDER FICTION";

/* Question 3 */
SELECT title FROM actor 
	JOIN film_actor ON actor.actor_id = film_actor.actor_id
	JOIN film ON film_actor.film_id = film.film_id 
	AND actor.first_name = "JENNIFER" AND actor.last_name = "DAVIS";

/* Question 4 */
SELECT title FROM rental
	JOIN inventory ON rental.inventory_id = inventory.inventory_id
	JOIN film ON film.film_id = inventory.film_id
	WHERE rental.return_date IS NULL AND rental.customer_id = 11;

/* Question 5 */
SELECT title FROM film_category
	JOIN film ON film.film_id = film_category.film_id
	WHERE film_category.category_id = 2;

/* Question 6 */
SELECT amount, payment_date FROM payment
	JOIN rental ON payment.rental_id = rental.rental_id
	JOIN inventory ON rental.inventory_id = inventory.inventory_id
	JOIN film ON film.film_id = inventory.film_id
	AND payment.customer_id = 95 AND title = "CLOSER BANG";

/* Question 7 */
SELECT staff.first_name, staff.last_name FROM staff
	JOIN rental ON rental.staff_id = staff.staff_id
	JOIN inventory ON inventory.inventory_id = rental.inventory_id
	JOIN film ON film.film_id = inventory.film_id
	JOIN customer ON rental.customer_id = customer.customer_id
	AND customer.first_name = "MARIE" AND customer.last_name = "TURNER" AND film.title = "CHAINSAW UPTOWN";