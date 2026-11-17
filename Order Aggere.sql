create database OrderDetails;
create table OrderInfo(
OrderDetailID int primary key,
OrderID int,
ProductID int,
Quantity int
);
select*from OrderInfo
insert into OrderInfo(OrderDetailID,OrderID,ProductID,Quantity)
values
(1,10248,11,12),
(2,10248,42,10),
(3,10248,72,5),
(4,10249,14,9),
(5,10249,51,40);

select sum(Quantity)
from OrderInfo
where ProductID=11;

select sum(Quantity) as total_Quantity
from OrderInfo
where ProductID=11;

SELECT 
    OrderID,
    SUM(Quantity) AS Total_Quantity
FROM OrderInfo
GROUP BY OrderID;
