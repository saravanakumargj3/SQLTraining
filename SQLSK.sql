CREATE TABLE BikeTable
(BikeID int IDENTITY, BikeName varchar(200), Quantity int, Price numeric(18,3), Description nvarchar(MAX));

SELECT * FROM BikeTable;

INSERT INTO BikeTable
VALUES('Yamaha', 3, 2344, 'sport bike');

ALTER TABLE BikeTable ADD TotalAmount as (Quantity * Price)
ALTER TABLE BikeTable ADD DiscountAmount as (Price - (Price/10))
ALTER TABLE BikeTable ADD DiscountTotal as ((Price - (Price/10)) * Quantity)

ALTER TABLE BikeTable
DROP COLUMN ONRoadAmount;