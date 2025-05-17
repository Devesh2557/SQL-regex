-- string fun-- ctions
-- numbers, date

-- dual  Ek row or ek column m output dikhana of opertion what we performed
select 9*1554 from dual;

-- now()
select sysdate(), curdate(), curtime(), current_timestamp() from dual;

select now(), adddate(now() , 2) from dual;
select now(), adddate(now() , interval 2 month) from dual;
select now(), adddate(now() ,interval  2 year) from dual;
select now(), adddate(now() , interval 2 hour) from dual;

select now(), datediff(now() , '2025-05-25 15:38:31') from dual;

select last_day(now()) from dual;
select month(now()), year(now()) from dual;

-- %Y --> access modifier 
-- scaler funcitons--> jo rows wise work krte h ya jo hr ek line p apply honge and hr ek line ka result denge

select now(), date_format(now(), 'This year is  %Y') from dual;

select extract(year from now()) from dual;
select extract(month from now()) from dual;
select extract(minute from now()), extract(second from now()) from dual;

-- round(),truncate(it will remove the last deimal values), pow(), floor(), ceil
select 23.45, round(23.45), round(23.45,1) from dual;
select round(23.45,1 ), truncate(23.45,1) from dual;

select mod(11,2), pow(2,3), floor(29.0001532), ceil(9.0121) from dual;

-- genereal function through condition lga k koi kaam krna h to 
use sakila ;
select * from actor;
select first_name , actor_id*10 from actor where first_name = 'NICK';
-- if(condition , true, false)

select first_name, actor_id, if(first_name ='NICK', actor_id*20, 'No Value') from actor;
-- if(condition , true, if(condition , true, false))
select first_name, actor_id, if(first_name ='NICK', actor_id*20, if(first_name = 'ED' ,'Hello', 'No value') ) from actor;

-- actor_id =even f_name and l_name concate;
-- if actor_id =odd f_name and l_name concate woth dollar symbole;

select actor_id,
case
	when mod(actor_id,2)=0 then 
    concat( first_name , '-', last_name) 
    else 'No Value'
end
from actor;

select actor_id,
case
	when mod(actor_id,2)!=0 then 
    concat(  first_name ,'$' , last_name) 
    else 'No Value'
end
from actor;