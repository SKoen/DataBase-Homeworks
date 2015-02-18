SELECT FirstName +' '+ LastName AS [Full Name] ,d.Name as [Department Name] , E.HireDate
FROM Employees E
JOIN Departments D
ON E.DepartmentID = D.DepartmentID
WHERE (D.Name = 'Sales'
OR D.NAME = 'Finance')
AND YEAR(HireDate) > 1995
AND YEAR(HireDate) < 2005

