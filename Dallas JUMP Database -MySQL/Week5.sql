INSERT INTO employees (employee_id, first_name, last_name)
VALUES (value1, value2, value3);

  CREATE TABLE employees
(
id int NOT NULL AUTO_INCREMENT,
first_name varchar(50),
last_name varchar(50),
city_name varchar(50),
email varchar(50),
PRIMARY KEY (id)
);
DESC employees;
SELECT * from employees;