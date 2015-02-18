CREATE TABLE WorkHoursLogs
(
        Id int PRIMARY KEY IDENTITY NOT NULL,
		Message nvarchar(200) NOT NULL,
		DateOfChange datetime NOT NULL
)