-- order by(sorting of you data), alias, multi-row function
use sakila;
select * from actor;

select * from actor order by first_name, actor_id desc;

select actor_id, actor_id+10 as 'Newactor_id' from actor;

-- sum, count, max, min, avg
select * from payment;

select distinct(customer_id) from payment;
select count(customer_id) from payment;

select count(customer_id) as TotalCustomer, 
count(distinct(customer_id)) as UniqueCustomer,
count(customer_id) - count(distinct(customer_id)) as RepetativeCustomer
from payment;

select count(amount), 
sum(amount), 
max(amount), 
min(amount), 
avg(amount) from payment;
-- Aggregate funtion:- These are the funcntions which is use to calculation over certain value and return a single value. 
-- These skip null values bt count ginta h null values.
-- We cannot select noramlly column in this function.

-- group by
-- similar values ka group
select * from payment;
select sum(amount) from payment where customer_id=1;
select sum(amount) from payment where customer_id=2;
select sum(amount) from payment where customer_id=3;

select customer_id, 
count(amount), 
sum(amount) 
from payment group by customer_id;

select amount, count(amount) from payment group by amount;

-- get the count of rental_id, sum of amount spended and the maximum rental value for each staff
select staff_id, count(staff_id), max(rental_id), sum(amount) from payment group by staff_id;

-- get the total number of customer served when the max and min rental_id is the averge amount of month of 7 days
select * from payment;
select month(payment_date), count(customer_id), month(payment_date), max(rental_id), min(rental_id), avg(amount) from payment 
group by month(payment_date);