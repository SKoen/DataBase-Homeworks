CREATE FUNCTION ufn_InterestCalculator 
	(@sum money, @interest float, @months float)
	RETURNS money
AS
BEGIN
	RETURN (@sum * (@interest / 100)) * (@months / 12)
END

GO

SELECT dbo.ufn_InterestCalculator(1000, 15, 10) AS [Money]