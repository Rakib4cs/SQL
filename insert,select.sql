create database insertion;
create table CUSTOMERSBD(
customerID int primary key,
customerName varchar(40),
contactName varchar(40),
address varchar(40),
city varchar(40),
postalCode varchar(40),
country varchar(40)
);
select*from CUSTOMERSBD;
insert into CUSTOMERSBD(customerID,customerName,contactName,address,city,postalCode,country)
values
(2, 'Ana Trujillo Emparedados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'Mexico D.F.', '05021', 'Mexico'),
(3, 'Antonio Moreno Taqueria', 'Antonio Moreno', 'Mataderos 2312', 'Mexico D.F.', '05023', 'Mexico'),
(4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK'),
(5, 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Lulea', 'S-958 22', 'Sweden'),
(6, 'Blauer See Delikatessen', 'Hanna Moos', 'Forsterstr. 57', 'Mannheim', '68306', 'Germany'),
(7, 'Bolido Comidas preparadas', 'Martin Sommer', 'C/ Araquil 67', 'Madrid', '28023', 'Spain'),
(8, 'Bon app', 'Laurence Lebihan', '12 rue des Bouchers', 'Marseille', '13008', 'France'),
(9, 'Bottom-Dollar Marketse', 'Elizabeth Lincoln', '23 Tsawassen Blvd.', 'Tsawassen', 'T2F 8M4', 'Canada'),
(10, 'Berglunds Food', 'John Smith', 'Street 10', 'London', '10001', 'UK');
INSERT INTO CUSTOMERSBD(customerID, customerName, contactName, address, city, postalCode, country)
VALUES
(11, 'Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

SELECT customerName, city
FROM CUSTOMERSBD;

SELECT DISTINCT country
FROM CUSTOMERSBD;

SELECT COUNT(DISTINCT country) AS TotalCountries
FROM CUSTOMERSBD;

SELECT country
FROM CUSTOMERSBD;

SELECT *FROM CUSTOMERSBD
WHERE country = 'Mexico';


SELECT *FROM CUSTOMERSBD
WHERE customerID = 1;

SELECT *FROM CUSTOMERSBD
WHERE customerID > 80;

SELECT * FROM CUSTOMERSBD
WHERE customerID = 1;

SELECT * FROM CUSTOMERSBD
WHERE customerID > 5;

SELECT * FROM CUSTOMERSBD
WHERE customerID < 5;

SELECT * FROM CUSTOMERSBD
WHERE customerID >= 5;

SELECT * FROM Customers
WHERE CustomerID <= 5;


SELECT * FROM CUSTOMERSBD
WHERE country <> 'Mexico';


SELECT * FROM CUSTOMERSBD
WHERE customerID BETWEEN 3 AND 8;

SELECT * FROM CUSTOMERSBD
WHERE city LIKE 'L%';

SELECT * FROM CUSTOMERSBD
WHERE city IN ('Paris', 'London');