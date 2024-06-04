1. -- Query for last_name data that equals Wahlberg using the LIKE and WHERE clauses
SELECT first_name, last_name
from actor
WHERE last_name = 'Wahlberg';

2. -- Query for payments data that shows payment between $3.99 and $5.99 
-- Using the BETWEEN with the AND clause
select COUNT(amount) 
from payment
where amount BETWEEN 3.99 and 5.99;

3. -- Query to display the data in the inventory table with the most films in all stores
select film_id, Count(film_id) as count_film_id
from inventory
group by film_id
order by count_film_id desc;

select * from inventory;

4. -- Query for a last_name data that equals William using the LIKE and WHERE clauses
SELECT name, customerid
from customer
where name = 'William';

5. -- Query to display the data from rental table with employee that sold the most rental
select COUNT(staff_id), staff_id
from rental
group by staff_id
order by staff_id;

6. -- Query to display amount of district names
select COUNT(distinct district) as count_district
from address;

select * from address;

7. -- Query to display the film with the most actor
select film_id, COUNT(film_id)
from film_actor
group by film_id
order by COUNT(film_id) desc;


8. -- Query to show how many customers have a last name ending with es
select COUNT(*)
from customer
where store_id = 1 and name LIKE '%es'

select * from customers;

9. -- Query for data that shows payment amount with rentals above 250
-- croup by store_id;ustomer_id between 380 and 430
-- Using the BETWEEN aith the AND clause
select amount, COUNT(amount)
from payment
where customer_id between 380 and 430 
group by 1
having COUNT(amount) > 250;

10. -- Query the data in the fim table to display how many rating are on the film table
-- and what rating has the most movies
select rating, COUNT(rating)
from film
group by rating;



-- Query to explore the data inside the film table
select * 
from film
where customer_id between 380 and 430
group by customer_id 
having COUNT(rentals) > 250;
order by amount DESC;
