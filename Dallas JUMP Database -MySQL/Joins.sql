#1
SELECT location_id, street_address, city, state_province,country_name
FROM locations
NATURAL JOIN (location_id);

#2
SELECT first_name , last_name, department_id, deaprtment_name
FROM employees
JOIN departments USING (department_id);

#3
SELECT e.frist_name, e.last_name, e.job_id, e.department_id, e.department_name, l.city
FROM employees e
Join deparments d
	ON (e.department_id = d.department_id)
JOIN locations l 
    ON (d.location_id = l.location_id)
WHERE l.city ='SEATTLE';

#4
SELECT e.employee_id 'Emp_Id', e.last_name 'Employee', m.employee_id 'Mgr_ID', m.last_name 'Manager'
FROM employees e
JOIN employees m
ON(e.manager_id = m.employee_id);
#SELECT * FROM employees WHERE employee_id in (0,100, 101,102);

#5
SELECT e.first_name , e.last_name , e.hire_date
FROM employees e
JOIN employees j 
  ON (j.last_name = 'Jones')
  Where j.hire_date <e.hire_date;
  
  SELECT first_name , last_name , hire_date FROM employees e
  WHERE hire_date >( SELECT max(hire_date) FROM  employees WHERE last_name = 'JONES');
  
  #6
  SELECT department_name AS 'Department Name',
  COUNT(*) AS 'No of Employees'
  FROM departments 
  INNER JOIN employees
  ON employees.department_id = departments.department_id
  Group By departments.department_id
  Order by department_name;
  
  #7
  SELECT employee_id, job_title, end_date,start_date Days FROM job_history
  NATURAL JOIN jobs
  WHERE department_id = 90;
  

  
  SELECT jh.employee_id, j.job_title, datediff(jh.end_date,jhstart_date) Days
  FROM job_history jh
  INNER JOIN jobs j ON jh.job_id = j_id
  WHERE jh.department_d =90;
  
    #8
  SELECT d.department_id , d.department_name , d.manger_id, e.first_name
  FROM departments d
  INNER JOIN employees e
  ON (d.manager_id = e.employee_id);
  
  #9
  SELECT d.department_name , e.first_name, l.city
  FROM departments d
  JOIN employees e  
       ON (d.manager_id = e.employee_id)
       JOIN locations l USING (location_id);
       
   #10
   SELECT job_title , AVG(salary)
   FROM employees
   NATURAL JOIN jobs
   GROUP BY job_title;
   
   #11
    SELECT job_title , employee_name , salary-min_salary 'Salary - Min_Salary'
    FROM employees
    NATURAL JOIN jobs;
    
    #12
    SELECT job_history FROM  job_history jh
    JOIN employees e 
    ON (jh.employee_id = e.employee_id)
    WHERE salary > 10000;
    
    #13
    SELECT first_name, Last_name ,hire_date, salary,
    (DATEDIFF(now(), hire_date))/365 Experience
    #FROM departments d JOIN employees e
    FROM employees e JOIN departments d
    ON (d.manager_id = e.employee_id)
    WHERE (DATEDIFF(now(), hire_date))/365>15 and 
    e.manager_id in (SELECT DISTINCT manger_id FROM employees);
    
    #14
    SELECT job_id , GROUP_CONCAT(employee_id, ' ' SEPARATOR '|') 'Employees ID'
    FROM employees GROUP BY job_id;
    
    
    #15
    UPDATE employees
    SET phone_number = REPLACE(phone_number , '124' , '999')
    WHERE phone_number LIKE '%124';
    
    SELECT * FROM employees WHERE PHONE_NUMBER LIKE '%124';
    
    #16
    SELECT *
    FROM employees
    WHERE LENGTH(first_name) >= 8;
    
    #17
    SELECT job_id, LPAD( max_salary, 7,'0') ' Max Salary' ,
    LPAD( min_salary, 7, '0') 'Min Salary'
    FROM job;
    
    #18
    UPDATE employees SET email = CONCAT(email, '@example.com');
    
    #19
    SELECT employee_id, first_name, hire_date , MID(hire_date, 6,2) as hire_month FROM employees;
    
    #20
    SELECT employee_id, REVERSE(SUBSTR(REVERSE(email),4)) as Email_id  from employees;
    
    SELECT employee_id, SUBSTR(email, 1, length(email)-3) as Email_ID from employees; 
    
    
    
    
    
    
   
   

  
  
  
  
  

 