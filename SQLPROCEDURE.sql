Create procedure SalesTotalAmount
@CustID int, @ProductID int
AS
BEGIN
select * FROm Sales WHERE CustomerID = @CustID AND ProductID = @ProductID
END






exec SalesTotalAmount @custid = 1, @ProductID = 1

alter procedure SalesTotalAmount
@CustID int, @ProductID int
AS
BEGIN
select * FROm Sales WHERE CustomerID = @CustID AND ProductID = @ProductID
END



