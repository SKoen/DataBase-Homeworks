SELECT TOP 1 T.Name as [Town], COUNT(FirstName) AS [Number of employees] FROM Employees E
JOIN Addresses A ON E.AddressID = A.AddressID
JOIN Towns T ON A.TownID = T.TownID
GROUP BY T.Name
ORDER BY COUNT(FirstName) DESC