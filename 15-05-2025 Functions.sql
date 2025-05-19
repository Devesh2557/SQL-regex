use sakila;
-- distinct (it will count unique value, and removes duplicate values)  count 

select distinct(first_name) from actor;
select count(first_name) from actor;

-- Functions
--  Code reusable
-- String functions
-- Scaler function      Multi-row functions
-- (Scaler function)hr ek row k liye apply honge and hr ek row k liye result dega 
select first_name , lower(first_name) , upper(lower(first_name)) , length(first_name) from actor;

-- substring function////////  substr(column name , indexing , total_character)
select first_name , substr(first_name , 2) from actor;

select first_name , substr(first_name , 2,5) from actor;
select first_name , substr(first_name , -3,2) from actor;

select first_name , instr(first_name ,'E') from actor;

select first_name , last_name , concat(first_name , ' - ' , last_name) from actor;
-- concat_ws(concate with seprater)
select first_name , last_name , concat_ws( ' - '  ,first_name , last_name , '$') from actor;

-- trim() remove white spaces from aage se and peeche se 
select first_name, length(trim('      hey   ')) from actor;
select first_name, trim('      hey   ') from actor;
select first_name, length(trim('      hey   ')) from actor;

-- lower(), upper() , length()*, substr()* , trim()* , concat()
-- lpad() , rpad()
select first_name, rpad(first_name,8,'$') from actor;
