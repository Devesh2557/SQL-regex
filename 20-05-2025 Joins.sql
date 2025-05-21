-- use sakila;
-- select * from actor;
-- select * from film_actor;
create database regex;
use regex;
create table product( pid int, pname varchar(20), price int);
insert into product values(10,"Iphone",20000), (11,"TV",10000),
(12,"LED",3000), (13,"Jeans",800);

select * from product;

create table orders1( oid int, city varchar(20), pid int);
insert into orders1 values(124111,"Jaipur",10), (124112,"GOA",11),
(145631,"Manali",12), (59869011,"Raipur",16);
select * from orders1;

select o.oid, o.city, o.pid, p.pname, p.pid from orders1 as o
join product as p;
-- what is cartisan join
-- it is a type of join jha opr hr ek row first column ki each row k second table se match kregi

-- COMMON CONDITION
select o.oid, o.city, o.pid, p.pname, p.pid from orders1 as o
join product as p where o.pid=p.pid;

-- new syntax 
select o.oid, o.city, o.pid, p.pname, p.pid from orders1 as o
inner join product as p where o.pid=p.pid;    


-- combine film id and film table to find out the acot id and film id and movie name done by each actor
-- find out the actor id and movie name only for those movies which have length of more then 100
-- get the acotr id and the numebr of movies he has done in his wbole carrer
-- get the titile and the film id for the movies whose waiting is nc-17 and sort all the oviebased on descending order of film id.
use sakila;
-- (1)
SELECT 
    fa.actor_id,
    f.film_id,
    f.title AS movie_name
FROM 
    film_actor fa
JOIN 
    film f ON fa.film_id = f.film_id;
    
-- (2)
SELECT 
    fa.actor_id,
    f.title AS movie_name
FROM 
    film_actor fa
JOIN 
    film f ON fa.film_id = f.film_id
WHERE 
    f.length > 100;
    
