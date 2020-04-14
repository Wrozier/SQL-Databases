-- String Functions:
-- used to mainpulate strings

# ASCII
-- a character encoding standard, assigns a numeric value to each character

select ascii('c'), ascii('C');

# CONCAT
-- will concatinate (put together) two or more strings

select * from staff;

select concat(first_name, ' ', last_name) as 'full name' 
from staff;


# LENGTH
-- character length of a string

select country, length(country) from country;

# UPPER
-- changing strings to uppercase

select upper('sdfdsdf');

# LOWER
select lower('SFDKLFJ');
# SUBSTR

-- gets the substring of a string
-- 1st parameter: string
-- 2nd parameter: at what index to start
-- 3rd parameter: how many chars long is the substring

select substr('1234567', 3, 2);

select substr('1234567', 3);