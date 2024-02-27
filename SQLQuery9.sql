CREATE TABLE cartBYquery
(ProductID int IDENTITY, ProductName varchar(200), Quantity int, price int , Description varchar(MAX));


INSERT INTO cartBYquery
Values('Laptop', 2, 200,'Its a laptop');
 
SELECT * FROM cartBYquery;

ALTER TABLE cartBYquery ADD TotalAmount as (Quantity * Price)