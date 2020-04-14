#1

SELECT first_name, last_name , salary
FROM employees
WHERE salary >
(SELECT salary FROM employees where last_name = ' Bull');

#2
SELECT first_name, last_name
From employees
WHere
departmenet_id
IN (SELECT department_id FROM departments Where department_name ='IT');

#3
SELECT first_name , last_name
FROM employees
WHERE manager_id IN 
(SELECt employee_id FROM employees Where department_id IN
(SELECt employee_id FROM departments Where location_id IN
(SELECt employee_id FROM locations Where country_id = 'US' )));

