-- DataManipulation Language (DML)
-- used to mainpulate data in a database

use sql_review;
# INSERT COMMAND

-- insert is used to add new rows to a table

describe person;

-- insert using a short form without specifying the column names
insert into person values(null, 'hello', '123456789', current_date(), 'female');

select * from person;

-- suggest way, better practice because you are more likely not to 
-- get an error by missing a column entry
insert into person(person_id, person_name, ssn, dob, gender) 
	values(null, 'hello', '123456788', current_date(), 'male');

select * from person;

-- insert with only the values that shouldn't be null
insert into person(person_name, ssn)
	values('hello', '123456787');
    
select * from person;

-- error: you don't specify the columns
insert into person values('hello', '123456786');

-- can also switch arround column order when doing inserts this way
insert into person(ssn, person_name)
	values('123456786', 'hello');
    
select * from person;


# UPDATE COMMAND

-- update is used to modify existing records in a table

-- by specifying a condition on one record using the where clause
update person set person_name = 'world' where person_id = 2;
select * from person;

-- updating multiple records based on the same condition
update person set person_name = 'hi' where person_name = 'hello';
select * from person;

-- update all records
update person set person_name = 'same';
select * from person;

# DELETE COMMAND

-- delete is used to remove existing records from a table

-- delete is specified based on where clause
delete from person where person_id = 2;
select * from person;
-- if no where cleause, all records will be deleted from the table
-- this is slower than the truncate command
-- truncate permanently removes data, while delete isn't necessarily permanent
delete from person;
select * from person;