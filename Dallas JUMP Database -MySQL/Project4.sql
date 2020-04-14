
#2
CREATE TABLE IF NOT EXISTS departments (
  department_id varchar(2) not null unique, 
  department_name varchar(40) not null, 
  PRIMARY KEY (department_id)
);
DESC departments;

SELECT * from departments;

CREATE TABLE IF NOT EXISTS employees (
Employee_Id integer NOT NULL PRIMARY KEY,
First_name varchar(50) Default null,
Last_name varchar(50) not null, 
Department_Id integer DEFAULT NULL, 
foreign key(department_Id) references departments(department_Id)
);


#3
Insert Into departments  values('1','Accounting');
Insert Into departments  values('2','HR');
Insert Into departments  values('3','DEVELOPMENT');
Insert Into departments  values('4','SALES');








