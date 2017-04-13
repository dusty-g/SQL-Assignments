select city.city_id, city.city, customer.first_name, customer.last_name, customer.email, address.address from city
join address on address.city_id = city.city_id
join customer on customer.address_id = address.address_id
where city.city_id = 312;

select film.film_id, film.title, film.description, film.release_year, film.rating, film.special_features, category.name as genre from film
left join film_category on film_category.film_id = film.film_id
left join category on category.category_id = film_category.category_id
where category.name = "Comedy";

select actor.actor_id, CONCAT_WS(" ", actor.first_name, actor.last_name) as actor_name, film.film_id, film.description, film.release_year from actor
left join film_actor on film_actor.actor_id = actor.actor_id
left join film on film.film_id = film_actor.film_id
where actor.actor_id = 5;

select store.store_id, address.city_id, customer.first_name, customer.last_name, customer.email, address.address from store
left join customer on customer.store_id = store.store_id
left join address on address.address_id = customer.address_id
where store.store_id = 1 and (address.city_id = 42 or address.city_id = 312 or address.city_id = 459 or address.city_id = 1);

select film.title, film.description, film.release_year, film.rating, film.special_features from film
join film_actor on film_actor.film_id = film.film_id
where film_actor.actor_id = 15 and film.rating = "G" and film.special_features like "%Behind%";

select film.film_id, film.title, film_actor.actor_id, concat_ws(" ", actor.first_name, actor.last_name) as actor_name from film
join film_actor on film_actor.film_id = film.film_id
join actor on actor.actor_id = film_actor.actor_id
where film.film_id = 369;

select film.film_id, film.title, film.description, film.release_year, film.rating, film.special_features, category.name as genre, film.rental_rate from film
left join film_category on film_category.film_id = film.film_id
left join category on category.category_id = film_category.category_id
where film.rental_rate = 2.99 and category.name = "Drama";

select actor.actor_id, concat_ws(" ", actor.first_name, actor.last_name) as actor_name, film.film_id, film.title, film.description, film.release_year, film.rating, film.special_features, category.name as genre
from actor
left join film_actor on film_actor.actor_id = actor.actor_id
left join film on film.film_id = film_actor.film_id
left join film_category on film_category.film_id = film.film_id
left join category on category.category_id = film_category.category_id
where category.name = "Action" and actor.actor_id = 23;