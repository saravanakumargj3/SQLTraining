-ALTER FUNCTION CalcTotalAmountQP(@Price int, @Quantity int)
RETURNS NUMERIC(18,3)
BEGIN
	RETURN @Price *@Quantity		--no queries
END


--SELECT * , TotalAmount = CalcTotalAmountQP(Price,Quantity) FROM Sales
SELECT
	S.SalesID, S.SalesPersonID,
	S.CustomerID, S.ProductID, S.Quantity, P.Price,
	TotalAmount = dbo.CalcTotalAmountQP(P.Price, S.Quantity)
	From Sales S, Products P
	WHERE S.ProductID = P.ProductID


