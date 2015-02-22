CREATE PROC usp_PeopleWithMoreMoneyThan(@Money money)
AS
SELECT FirstName + ' ' + LastName AS [Name] FROM Persons P
JOIN Accounts A ON P.PersonId = A.PersonId
WHERE A.Balance >= @Money