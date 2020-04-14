#1
#UPDATE employees SET email=' available'
UPDATE employees SET email=  concat(substring(first_name,1,1), last_name)
WHERE employee_id = 205;
select * from employees WHERE employee_id=205;

#2
UPDATE employees SET email = 'not avalible',
commission_pct =0.10
WHERE department_id = 205;

#3
Update employees
SET commission_pct =0.10
Where separtment_id = 110;
SELECT * FROM employees where department_id = 110;

#4
UPDATE employees
SET comission_pct = 0.10
WHERE department_id =80 AND comission_pct<.20;
Select *from employees Where department_id = 80;

#5
#Update the commisioon_pct for all employees in Accounting dept to 0.10
Update employees 
SET commission_pct = 0.10
Where department_id=
(SELECT department_id from departments where department_name= 'Accounting');

#6
UPDATE employees SET SALARY = 8000
WHERE employee_id = 105 AND salary < 5000;

select * from employees Where employee_id = 105;

#7
UPDATE employees SET job_id = 118 AND
department_id = 30 AND
NOT job_id   Like 'SH%';
select * from employees WHERE employee_id = 110;


#8
select * from employees where department_id in (40, 90, 110);
UPDATE employees
SET salary = 
  CASE department_id
WHEN 40 THEN salary = salary * 1.25
WHEN 90 THEN salary = salary * 1.15
WHEN 110 THEN salary = salary * 1.10
ElSE salary
End
Where department_id in(40,90,110);
select * from employees where department_id in (40, 90, 110);

#9
Update employees, jobs 
Set 
jobs.min_salary = min_salary + 2000,
jobs.max_salary = min_salary + 2000,
employees.salary = employees.salary+ 2000,
employees.salary = employees.salary *1.2,
employees.commission_pct = employee.commission_pct * 1.1

Where employee.job_id = 'PU_CLERK' AND
	  j.job_id = 'PU_CLERK';
      
      UPDATE employee e, jobs j
      SET j.min_salary  = j.min_salary+2000,
      j.max_salary = j.max_salary + 2000,
      e.salary = e.salary * 1.2,
      e.commission_pct = IF(e.commission_pct = 0, 0.1, e.commission_pct * 1.1)
      WHERE e.job_id = 'PU_CLERK' AND
      j.job_id = 'PU_Clerk';









