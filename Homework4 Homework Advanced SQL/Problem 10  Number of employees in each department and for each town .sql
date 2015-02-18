SELECT T.Name as [Town],D.Name as [Department Name], COUNT(FirstName) FROM Employees E
JOIN Departments D ON E.DepartmentID = D.DepartmentID
JOIN Addresses A ON E.AddressID = A.AddressID
JOIN Towns T ON A.TownID = T.TownID
GROUP BY T.Name,D.Name