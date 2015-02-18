CREATE VIEW TodayVisitors AS
SELECT *
FROM Users
WHERE DAY([Last login time]) = DAY(GETDATE())
AND MONTH([Last login time]) = MONTH(GETDATE())
AND YEAR([Last login time]) = YEAR(GETDATE())

