show databases;

use sakila;
show tables;
select * from actor;

select actor_id , last_name from actor;

select actor_id,actor_id*10 , last_name from actor;

select * from actor;

select * from actor where actor_id = 2;

select * from actor where first_name = 'ED';

select * from actor where first_name = 'ED' and actor_id>100;

select * from actor where first_name = 'ED' or actor_id>100;

select * from actor where actor_id >10 and actor_id<25;

-- between operator lower value and then high values  it defines the range of values.

select * from actor where actor_id between 11 and 25; 

select actor_id, first_name from actor where actor_id=5;

select * from actor where actor_id between 2 and 5;
select * from actor where actor_id in (2,5);

-- select data ko access krne ka kaam krta h  
--  sql case insesitive
--  sql multi line query
-- between and in

--  like => pattern par kam karega   findout the data 
select * from actor where first_name = 'NICK';

-- Like % [Zero or more character]  _[Only 1 character]
select * from actor where first_name like 'NICK';  

select * from actor where first_name like 'N%';  

select * from actor where first_name like '%T';

select * from actor where first_name like 'S%T';  

select * from actor where first_name like 'ED%';

select * from actor where first_name like 'E_';

select * from actor where first_name like '__';

select * from actor where first_name like '_A%';



select * from actor where actor_id in (5,3,7);

select * from actor where actor_id<7 and actor_id>3;

select actor_id , first_name from actor where actor_id not between 3 and 100;

select first_name from actor where first_name like '_E%R';

select first_name from actor where first_name like '%NN%';

select first_name from actor where first_name like '_____';

select first_name from actor where first_name like '_A%T%H__';