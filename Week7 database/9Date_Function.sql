-- Date functions
-- used to manipulate dates

#ADDDATE

-- adds a number of days to the sepcified date

-- 1st parameter: date
-- 2nd parameter: days to add

select adddate('2018-04-30', 100);

#LAST_DAY
-- returns the last day of a month of the date given 

select last_day('2005-06-08');


#CURRENT_DATE

select current_date(); -- current date
select current_time(); -- current time 
select current_timestamp(); -- current date and time

#EXTRACT

-- extract a part of the date or time
-- month
-- week
-- hour_minute
-- day
-- microsecond
-- second
-- second_micro
-- extract month
select extract(month from '2019-17-05');
-- extract week
select extract(week from current_date());

-- extract the hour and minute
select extract(hour_minute from current_timestamp());
select  concat(extract(hour from current_timestamp());


