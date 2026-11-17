Create database parina;
use parina;
create table customer(
customerID int primary key,
name varchar(50),
email varchar(50),
phone varchar(50),
address varchar(50)
);
insert into customer(customerID,name,email,phone,address)
values
(1,'John Smith','john@example.com','123-456-7890','123 Elm St,NY'),
(2,'Jane Doe','jane@example.com','234-567-8901','456 Oak St,LA'),
(3,'Sam Wilson','sam@example.com','345-678-9012','789 Pine St,TX'),
(4,'Emily Davis','emily@example.com','456-789-0123','101 Maple St,FL');
create table orders(
OrderID int primary key,
customerID int,
product varchar(50),
orderDate date,
quantity int,
foreign key(customerID)references customer(customerID) 
);
insert into orders(OrderID,customerID,product,orderDate,quantity)
values
(101,1,'Laptop','2024-09-01',1),
(102,2,'Tablet','2024-09-02',2),
(103,3,'Phone','2024-09-05',1),
(104,1,'Headphones','2024-09-08',3);

select orders.OrderID, customer.name
from orders
inner join customer
on orders.customerID=customer.customerID;

select customer.phone, orders.OrderID
from customer
left join orders
on customer.customerID = orders.customerID;

select customer.customerID, orders.product
from customer
right join orders
on customer.customerID = orders.customerID;