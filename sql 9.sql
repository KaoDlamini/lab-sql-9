#1. Create a table rentals_may to store the data from rental table with information for the month of May.
drop table if exists rentals_may;
CREATE TABLE rentals_may (
`rental_id` int(4) NOT NULL,
`rental_date` DATETIME DEFAULT NULL,
`inventory_id` int(7) NOT NULL,
`customer_id` int(7) NOT NULL,
  PRIMARY KEY (`rental_id`)
);

insert into rentals_may (rental_id, rental_date, inventory_id,customer_id)
select rental_id, rental_date, inventory_id,customer_id
from rental
where month(rental_date)= 5 ;


Select * from rentals_may



#2.Create a table rentals_june to store the data from rental table with information for the month of June.
drop table if exists rentals_june;
CREATE TABLE rentals_june (
`rental_id` int(4) NOT NULL,
`rental_date` DATETIME DEFAULT NULL,
`inventory_id` int(7) NOT NULL,
`customer_id` int(7) NOT NULL,
  PRIMARY KEY (`rental_id`)
);

insert into rentals_june (rental_id, rental_date, inventory_id,customer_id)
select rental_id, rental_date, inventory_id,customer_id
from rental
where month(rental_date)= 6 ;

select * from rentals_june

#3. Check the number of rentals for each customer for May.
select customer_id, count(rental_id) as nb_of_rentals from rentals_may
group by customer_id
order by customer_id asc

#4.Check the number of rentals for each customer for June.
select customer_id, count(rental_id) as nb_of_rentals from rentals_june
group by customer_id
order by customer_id asc


