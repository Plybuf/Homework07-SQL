-- This area is the working queries or overall queries I will come back to so I understand the tables
select * from actor;
select * from country;
select * from staff;
select * from address;
select * from payment;
select * from film_actor;
select * from film;
select * from inventory;
select * from customer;
select * from language;
select * from city;
select * from country;
select * from film_category;
select * from category;
select * from rental;
select * from store;


SELECT title, (SELECT COUNT(*) FROM inventory WHERE film.film_id = inventory.film_id ) AS 'Number of Copies'
FROM film;

select first_name, last_name, SUM(payment.amount) as "Total Amount Paid"
from customer
inner join payment on payment.customer_id = customer.customer_id
group by customer.customer_id
order by payment.amount;