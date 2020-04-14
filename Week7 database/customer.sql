create table customer
(
	cust_id int primary key auto_increment,
    first_name varchar(30) not null,
    last_name varchar(30) not null
);

insert into customer(cust_id, first_name, last_name) values(null, 'Sam', 'Miller');
insert into customer(cust_id, first_name, last_name) values(null, 'Juan', 'Del Mar');
insert into customer(cust_id, first_name, last_name) values(null, 'Gina', 'Stokes');
insert into customer(cust_id, first_name, last_name) values(null, 'Dorothy', 'Crawford');
insert into customer(cust_id, first_name, last_name) values(null, 'Michael', 'Allen');
insert into customer(cust_id, first_name, last_name) values(null, 'Lori', 'Gutierrez');
insert into customer(cust_id, first_name, last_name) values(null, 'Terrell', 'Wood');

select * from customer;

create table orders
(
	order_id int primary key auto_increment,
    order_date date not null,
    cust_id int,
    foreign key (cust_id) references customer(cust_id)
);

insert into orders(order_id, order_date, cust_id) values(null, current_date(), 2);
insert into orders(order_id, order_date, cust_id) values(null, current_date(), 2);
insert into orders(order_id, order_date, cust_id) values(null, current_date(), 5);
insert into orders(order_id, order_date, cust_id) values(null, current_date(), 6);
insert into orders(order_id, order_date, cust_id) values(null, current_date(), 3);
insert into orders(order_id, order_date, cust_id) values(null, current_date(), 3);
insert into orders(order_id, order_date, cust_id) values(null, current_date(), 2);
insert into orders(order_id, order_date, cust_id) values(null, current_date(), 2);
insert into orders(order_id, order_date, cust_id) values(null, current_date(), null);
insert into orders(order_id, order_date, cust_id) values(null, current_date(), 6);
insert into orders(order_id, order_date, cust_id) values(null, current_date(), 5);

select * from orders;
