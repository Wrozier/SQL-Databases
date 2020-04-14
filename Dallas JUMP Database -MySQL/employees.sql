CREATE TABLE IF NOT EXISTS employees
(
id int NOT NULL AUTO_INCREMENT,
first_name varchar(50),
last_name varchar(50),
PRIMARY KEY (id)
);
SELECT * FROM employees;

INSERT INTO `employees` (`first_name`, `last_name`) VALUES
('William','Rozier'),
('Arthur','Rozier'),
('Chauncy','Rozier');
