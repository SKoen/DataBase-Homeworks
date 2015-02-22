CREATE TABLE Logs
(
LogId INT PRIMARY KEY IDENTITY NOT NULL,
AccountId INT FOREIGN KEY REFERENCES Accounts(AccountID) NOT NULL,
OldSum MONEY NOT NULL,
NewSum MONEY NOT NULL
)

GO
CREATE TRIGGER tg_ChangeBalance ON Accounts FOR UPDATE
AS
	INSERT INTO Logs(AccountId, OldSum, NewSum)
	SELECT d.AccountID, d.Balance, i.Balance
	FROM INSERTED i
		JOIN DELETED d
		ON d.AccountID = i.AccountID
GO

EXEC dbo.usp_WithdrawMoney 1,10000