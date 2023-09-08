show databases;
use sub_query;
show tables;
create table customers(
	customer_id int primary key,
    amount int,
    mode varchar(50),
    payment_date date
);
desc customers;
insert into customers values(1,60,"cash","2020-09-24"),(2,30,"credit card","2020-10-27"),(8,110,"cash","2020-11-12"),(10,70,"mobile payment","2020-12-12");
insert into customers values(11,80,"cash","2021-01-03");

select * from customers;
update customers set amount = 50 where customer_id = 11;
select * from customers where amount > (select avg(amount) from customers);
update customers set mode = "udhar" where customer_id = 8;
set sql_safe_updates = 0;

create table emp(
	e_id int primary key,
    e_name varchar(30),
    dept varchar(30),
    salary int
);
insert into emp values(5,"varun","it",50000);
select * from emp;
select e_name,salary from emp where salary =(select max(salary) from emp where salary <> (select max(salary) from emp));

select count(e_id),dept from emp group by dept;
select e_name from emp where dept in (select dept from emp group by dept having count(dept) < 2);
select dept from emp group by dept having count(dept) < 2;