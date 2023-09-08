create database abc;
use abc;
create table orders(order_id int primary key auto_increment,product varchar(50),category char(50),amount int,date_1 date,country varchar(30));
desc orders;
insert abc.orders values("10","Apple","Fruit",9487,"2017-1-9","France");
select * from orders;