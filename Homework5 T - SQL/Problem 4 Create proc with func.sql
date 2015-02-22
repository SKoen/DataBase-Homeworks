GO
CREATE PROC usp_InterestOverAccounts
@accountId int, @rate FLOAT
AS

SELECT
	AccountID,
	a.Balance,
	dbo.ufn_InterestCalculator(a.Balance, @rate, 1) AS [Interest]
FROM Accounts a
WHERE a.AccountID = @accountId
GO

EXEC usp_InterestOverAccounts 2,35