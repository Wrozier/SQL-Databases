#1
SELECT 
first_name, last_name, salary
FROM employees
WHERE salary NOT BETWEEN 10000 AND 15000 ;

#2
SELECT 
first_name, last_name, deparment
FROM employees
WHERE department_id (30,100)
Order by department_id ASC;

#3
SELECT
first_name, last_name, department_id
FROM employees
WHERE salary not between 10000 and 15000
AND departmetn__id IN (30, 100);

#4
SELECT 
first_name, last_name, hire_date
FROM employees
WHERE YEAR(hire_date) =1987;

#5
SELECT 
first_name 
FROM 
employees
WHERE first_name Like '%b%'
AND first_name Like '%c%';

SELECT first_name 
FROM employees 
WHERE first_name
 REGEXP '[bc],[bc]';
 
 #6 
 SELECT last_name ,job_id, salary
 FROM employees
 WHERE job_id IN ('IT_PROG' , 'SH_Clerk')
 And Salary not in (4500,10000, 15000);
 
 #7
 SELECT last_name FROM employees where last_name like '_____________';
 SELECT last_name FROM employees where length(last_name) = 6;
 
 #8
 SELECT last_name FROM employees where last_name like '___e%';
 SELECT last_name FROM employees where substring(LAST_NAME, 3, 1)= 'e' ;
 
 #9
 SELECT job_id FROM employees;
 
 #10
 SELECT first_name, last_name, salary, salary*.15 PercentSalary from employees;
 
 #11
 SELECT * FROM employees
 where last_name IN ('Rozier' , 'Kent' , 'Canty' );
 
