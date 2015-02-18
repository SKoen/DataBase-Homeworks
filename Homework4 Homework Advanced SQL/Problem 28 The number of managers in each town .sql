SELECT T.Name as [Town], COUNT(DISTINCT E.ManagerID) AS [Number of Managers] FROM Employees E
JOIN Employees M ON E.ManagerID=M.EmployeeID
JOIN Addresses A ON M.AddressID = A.AddressID
JOIN Towns T ON A.TownID = T.TownID
GROUP BY T.Name