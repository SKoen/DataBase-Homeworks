SELECT FirstName +' '+ LastName AS [Full Name] ,AddressText AS [Address]
FROM Employees E
JOIN Addresses A
ON E.AddressID = A.AddressID

