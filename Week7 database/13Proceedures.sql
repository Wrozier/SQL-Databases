-- Stored Procedures:
-- subrotuine/subprogram stored in database
-- like functions, can take in parameters and run numerous sql state sql statements

#STORED PROCEDURES AND DELIMITERS

/* 
delimeter: character or string of characters used to ened an SQL statement,
the; is used as a common delimeter in MySQL


*/

delimiter $$

create procedure spExample()
begin
select * from actor;
select * from film;
select * from film_actor;
end $$

delimiter ;

-- call our procedures
call spExample();

#Variables

use sql_review;

create table employee
(
emp_id int primary key auto_increment,
emp_name varchar(50),
hourly_rate double,
email varchar(50)
);

insert into employee values( null, 'sam', 15, 'sam@mail.com');

select * from employee;

/*
VARIABLE TYPES:

in = pass a value to procedure, value can be modified within but 
modification not visible to caller

out = passes a value from the procedure back to the caller, starts as a null 
value and value is vissible to caller after procedure runs 

inout = can pass a value from the caller , be modified within the procedure

*/

delimiter $$ 

create procedure spAddEmployee(in empName varchar(50),
in hourly double, out salary double, inout emailInput varchar(50))
begin 
-- create local variables 
declare email varchar(50);

-- calculate salary
select hourly * 40 * 52 into salary;

-- format our email
select concat(empName, '@' , emailInput) into email;
select email into emailInput;

-- insert to the table 
insert into employee values ( null, empName, hourly, emailInput);
end $$

delimiter ;

-- create local variables
set @nameInput = 'orquidia';
set @hourly = 50;
 
 -- sset Input pay
 set @emailInput = 'gmail.com';
 
 call spAddEmployee(@nameInput, @hourly, @salary,emailInput);
 select * from employee;
 
 select @nameInput, @hourly, @salary, @emailInput;
 
 # PROCEDURES WITH IF STATEMENTS
 
 
 delimiter $$
 
 create procedure passwordStrength(in pw varchar(100))
 begin
 IF (length(pw) > 10) then
 select 'password is very strong';
 ELSE
 select 'password too weak';
 
 end if;

 end $$
 
  delimiter ;
  
  call passwordStrength('12345678901');
 
