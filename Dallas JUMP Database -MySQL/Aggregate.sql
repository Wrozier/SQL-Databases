#1
SELECT count(DISTINCT job_id) FROM employees;

#2
SELECT sum(salary) AS 'Total Salary' from employees;

#3
SELECT min(salary) AS 'Main Salary' From employees ;

#4
SELECT max(salary) 
AS 'Max Salary' 
FROM employees 
WHERE job_id = 
(SELECT job_id From jobs WHERE job_title 'Programmer');

#5
Select avg(salary)
 AS 'Avg Salary' ,
 count(*) AS 'Nr Employee'
 From empolyees
 Where deparment_id = 90;
 
 #6
 Select
 max (salary) AS 'Max Salary' ,
 min (salary) AS 'Min Salary' ,
 sum (salary) AS 'Sum Salary' ,
 round(avg(salary), 2) AS 'Avg Salary'
 From empolyees;
 
 #7 
 Select count(*) FROM employees
 GROUP BY job_id;
 
 #8
 Select 
 max(salary) - min(salary) AS 'Diff Min Max'
 from employees;
 
 #9
 SELECT manager_id , min(salary)
 FROM employees
 GROUP BY manager_id;
 
 #10
 SELECT department_id ,sum(salary) 
 from employees  
 GROUP BY department_id;
 
 #11
 SELECT job_id, avg(salary) From employees
 WHERE job_id NOT IN ('IT_PROG')
 GROUP BY job_id
 HAVING  avg(salary)> 10000;
 
 #12
 SELECT
 sum(salary) as 'Sum Salary',
 max(salary) as 'Max Salary',
 min(salary) as 'Min Salary',
 round(avg(salary), 2) as 'Avg Salary'
 FROM employees
 WHERE department_id = 90
 GROUP BY job_id ;
 Select * FROM employees where DEPARTMENT_ID=90;
 
 #13
 SELECT job_id , max(salary)
 FROM employees
 GROUP BY job_id
 HAVING max(salary)>=400;
 
 




