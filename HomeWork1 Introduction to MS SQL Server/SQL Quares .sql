SELECT * FROM Students
WHERE Name LIKE 'P%'
AND Age >= 20
GO

SELECT * FROM Students
WHERE PhoneNumber LIKE '+359%'
GO

SELECT * FROM Classes
WHERE MaxStudents > 200
GO
