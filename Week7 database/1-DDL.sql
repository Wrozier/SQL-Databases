create database sql_review;
use sql_review;
​

create table if not exists person 
(
	person_id int primary key auto_increment,
    person_name varchar(30) not null,
    ssn char(9) not null unique,
    dob date,
    gender varchar(6) default 'n/a'
);
describe person;


create table if not exists duck
(
duck_id int primary key auto_increment,
duck_name varchar(50) not null,
duck_ssn char(9) not null unique,
duck_dob date,
duck_gender varchar(6) default 'n/a'
);
desc duck;

#################
# ALTER COMMAND #
#################
-- alter used to add, modify, and delete columns in existing table
​
# add a column
​
alter table person add column fave_color varchar(15);
describe person;
​
# modify column
​
alter table person modify column person_name varchar(50);
describe person;
​
# delete column
​
alter table person drop fave_color;
describe person;
​
​
################
# DROP COMMAND #
################
​
-- drop will delete the entire table (structure and data included)
​
-- be careful with accidently running this command, comment it out if you need to run it,
-- once you delete a table it cannot be recovered
​
# drop table person;
​
​
####################
# TRUNCATE COMMAND #
####################
​
-- truncate removes all records from a table but will not destroy the table's structure
​
insert into person values(null, 'hello', '123456789', current_date(), 'female');
insert into person values(null, 'hello', '123456788', current_date(), 'female');
insert into person values(null, 'hello', '123456787', current_date(), 'female');
​
select * from person;
​
truncate table person;
​
select * from person;
​



