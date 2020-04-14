#create database day16;
#drop table countries;
/*CREATE TABLE IF NOT Exists countries(
country_id varchar(2),
country_ame varchar(40),
region_id decimal(10,0)
);


DESC countries;
*/
#select * from countries;

/*CREATE TABLE IF NOT Exists dup_countries
LIKE countries;
DESC dup_countries;*/

/*CREATE TABLE  countries(
country_id varchar(2) NOT NULL,
country_name varchar(40) NOT NULL,
region_id decimal(10,0)NOT NULL
);
DESC countries;
*/
/*
CREATE TABLE IF NOT Exists jobs (
job_id varchar(10) Not Null,
job_title varchar(35) Not Null,
min_salary decimal(6,0),
CHECK(max_salary <= 25000)
);
*/
#INSERT INTO jobs(job_id, job_title, min_salary, max salary) VALUES('QQ', 'ADMIN' , 10000, 30000)
#DESC jobs;

/* CREATE TABLE IF NOT EXISTS countries(
country_id varchar(2),
country_name varchar(40),
CHECK(country_name 
IN('Italy', 'India', 'China')),
region_id decimal(10,0) 
);
DESC countries;
*/

CREATE TABLE IF NOT EXISTS job_history (
employee_id decimal(6,0) not null,
start_date date not null,
end_date date not null
CHECK (end_date LIKE '---/--/---'),
job_id varchar(10) not null,
deparment_id decimal (4,0) not null
);
DESC job_history;


CREATE TABLE IF NOT EXISTS countries ( 
country_id varchar(2) not null, 
country_name varchar(40) not null, 
region_id decimal(10,0) not null, 
unique(country_id) 
);
DESC countries;


CREATE TABLE IF NOT EXISTS jobs ( 
job_id varchar(2) not null unique, 
job_title varchar(40) not null, 
min_salary decimal(6,0) default 8000, 
max_salary decimal(6,0)  null
); 
insert into jobs(job_id) values('QQ');
select * from jobs;

CREATE TABLE IF NOT EXISTS countries ( 
country_id varchar(2) not null unique, 
country_name varchar(40) not null, 
region_id decimal(10,0) not null, 
unique(country_id) 
);
DESC countries;

CREATE TABLE IF NOT EXISTS countries ( 
country_id  int not null unique auto_increment primary key, 
country_name varchar(40) not null, 
region_id decimal(10,0) not null 
);

Insert into countries( country_name, region_id)
values('BB', 33);

select * from countries;

CREATE TABLE IF NOT EXISTS countries ( 
country_id  int not null unique , 
country_name varchar(40) not null, 
region_id decimal(10,0) not null ,
primary key(country_id, region)

);
DESC countries;

CREATE TABLE IF NOT EXISTS job_history (
employee_id decimal(6,0) not null unique,
start_date date not null,
end_date date not null,
job_id varchar(10) not null,
deparment_id decimal (4,0) not null,
foreign key(job_id) references jobs(job_id)
);
DESC job_history;

CREATE TABLE IF NOT EXISTS countries ( 
country_id  varchar(2)not null , 
country_name varchar(40) not null, 
region_id decimal(10,0) not null ,
primary key(country_id, region_id)

);
DESC countries;

#Insert Into value countries('c1' , 'India' ,'U.S');


#2
Insert Into countries (country_id, country_name) VALUES('C1','India');
Insert Into countries (country_id) VALUES('C2');
select * from countries;

#3
Create Table If not exists country_new
As select * from countries;

Select * from country_new;

Show Columns from country;

#4
Insert Into countries (country_id,country_name,region_id) values('C1','India',null);


#5
Insert Into countries Values('C1', 'India', 1001),( 'C2', 'USA','1002'), ('C3','UK',1003);
select * from countries;

Insert into countries Select * from country_new;

select * from countries;
truncate table countries;

#7
Create table if not exists jobs(
job_id integer not null UNIQUE,
job_title varchar(35) not null,
min_salary decimal(6,0)
);
desc jobs;

Insert into jobs values(1001, 'OFFICER', 8000);


#9 
Create Table If not exists countries(
country_id integer not null,
country_name varchar(40) not null,
region_id integer not null,
primary key (country_id, Region__id)
);

Insert Into countries Values('India','185');
select * from countries;


#10
create table if not exists countries(
country_id integer not null Auto_Increment Primary key,
country_name varchar(40) not null,
region_id integer not null
);

Insert Into countries(country_name,region_id)VALUES ('INDIA','102');
select * from countries;



#11
Create table if not exists countries(
country_id integer not null Auto_Increment Primary key,
country_name varchar(40) not null,
region_id integer not null
);
Insert Into countries(country_name,region_id)VALUES ('501','INDIA','102');
Insert Into countries(country_name,region_id)VALUES ('109');
select * from countries;

#12
Create table if not exists jobs(
job_id integer not null unique primary key,
job_title varchar(35) not null default 'OFFICER',
min_salary decimal(6,0) Default 8000,
max_salary decimal(6,0) Default 20000
);

Insert into jobs(job_id,job_title) Values(1001,'Officer');
Insert into jobs(job_id,job_title) Values(1002,'Clerk');


/*create table job_history (
Employee_id integer not null Primary key,
job_id int not null,*/

CREATE TABLE IF NOT EXISTS departments (
department_id integer not null,
department_name varchar(30) not null,
manager_id integer default null,
location_id integer default null,
Primary Key (department_id,manager_id)
);
Insert into departments values (60, 'Sales',201,89);
Insert into departments values (61, 'Accounts',201,89);
Insert into departments values (80, 'Finance',211,89);
select * from departments;
Create Table If Not exists employees (
employee_id integer not null primary key,
first_name varchar(20) default null,
last_name varchar(25) not null,
job_id varchar(10) not null,
Salary decimal(8,2) default null,
manager_id integer not null,
department_id integer not null,
foreign key(Department_id, manager_id)
REFERENCES departments(department_id,manger_id)
);
Insert into employees values(510, 'Alex', 'Hanes', 'Clerk', 10000, 201,60);
Insert into employees values(511, 'Kia', 'Leon', 'Clerk', 10000, 2111, 80);
Insert into employees values(512, 'Joe', 'Doe', 'IT', 10000,333,88);

select * from information_schema.table_constrraints where table_schema = 'employees';




















