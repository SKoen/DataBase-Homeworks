UPDATE Users SET password = NULL
WHERE LastLoginTime <= CAST('2013-10-03' AS DATETIME);