INSERT INTO WorkHours (EmployeeId,Date,Task,Hours,Comments)
VALUES (10,GETDATE(),'Clean cache',15,'That`s cool')

UPDATE WorkHours SET Hours=20
WHERE Hours = 15

DELETE WorkHours WHERE EmployeeId = 10