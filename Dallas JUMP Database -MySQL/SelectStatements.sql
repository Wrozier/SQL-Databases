#1
SELECT first_name, last_name FROM employee;
SELECT
first_name AS "First Name",
lasst_name AS "Lasst Name"
FRom employees;

#2
SELECT DISTINCT department_id
FROM employees;

#3

SELECT *
FROM employees
ORDER BY first_name ASC;

#4
SELECT first_name , last_name, salary, salary*.15 AS PF
FROM employees;

#5
SELECT first_name , last_name, salary 
FROM employees
ORDER BY salary ASC;

#6
SELECT sum(salary) as 'Total Salary' from employees;

#7
SELECT 
min(salary) AS 'Min Salary',
max(salary) AS 'Max Salary'
from employees;

SELECT
min(salary) Min,
max(salary) Max 
from employees;

#8
SELECT
avg(salary) Avg,
count(*) Count
FROM employees;

#9
SELECT count(*) count
FROM employees;

#10
SELECT count(DISTINCT job_id) AS 'Distinct Jobs' FROM employees;

#11
SELECT ucase(first_name) FROM employees ORDER BY first_name;

#12
SELECT SUBSTRING(first_name,1,3)
FROM employee;

#13
Select  '171^214+625'as Result;

#14
Select concat( first_name,' ', last_name) from  employees;

#15
SELECT trim(first_name) as FirstName FROM employees;

#16
SELECT length (concat(first_name,' ' ,last_name)) as NameLength FROM employees;
SELECT length(first_name) , length(last_name) FROM employees;

#17
SELECT * FROM employees WHERE first_name REGEXP '[0-9]';
SELECT * FROM employees WHERE first_name REGEXP 'sh';#begins with 'sh'
SELECT * FROM employees WHERE first_name REGEXP 'th$';
SELECT * FROM employees WHERE first_name REGEXP 'en$|th$';

#18
SELECT employee_id, first_name
FROM employees LIMIT 10;

#19
SELECT first_name,last_name,round(salary/12,2) as 'Monthly Salary'
From employee;







