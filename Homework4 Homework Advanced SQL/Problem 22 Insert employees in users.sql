INSERT INTO Users
SELECT	   LOWER(LEFT(FirstName, 1) + LastName) AS [username],
           LOWER(LEFT(FirstName, 1) + LastName + 'pwd') AS [password],
           FirstName + ' ' + LastName AS [Full Name],
           GETDATE() AS [LastLoginTime],
           NULL AS [GroupID]
FROM Employees
