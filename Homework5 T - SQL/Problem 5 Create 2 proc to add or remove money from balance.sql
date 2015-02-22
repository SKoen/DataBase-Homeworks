CREATE PROC  usp_WithdrawMoney (@accountId INT, @money MONEY)
AS
BEGIN TRAN
DECLARE @currentBalance MONEY =
(
SELECT a.Balance FROM Accounts a
WHERE a.AccountID = @accountId
)
IF (@currentBalance < @money) 
BEGIN

ROLLBACK TRAN

END 
ELSE
BEGIN

UPDATE Accounts SET Balance = @currentBalance - @money
WHERE AccountID = @accountId
COMMIT TRAN

END

GO

CREATE PROC  usp_DepositMoney (@accountId INT, @money MONEY)
AS
BEGIN TRAN
DECLARE @currentBalance MONEY =
(
SELECT a.Balance FROM Accounts a
WHERE a.AccountID = @accountId
)
UPDATE Accounts SET Balance = @currentBalance + @money
WHERE AccountID = @accountId
IF 
((SELECT a.Balance FROM Accounts a 
WHERE a.AccountID = @accountId) = @currentBalance + @money
)
BEGIN

COMMIT TRAN

END 
ELSE
BEGIN

ROLLBACK TRAN

END

GO

EXEC usp_WithdrawMoney 1,10000
EXEC usp_DepositMoney 1,10000