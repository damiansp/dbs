--DATE(timestring, modifier, modifier, ...)
--TIME(timestring, modifier, modifier, ...)
--DATETIME(timestring, modifier, modifier, ...)
--JULIANDAY(timestring, modifier, modifier, ...) -- 2612018 = 261st day of 2018
--STRFTIME(format, timestring, modifier, modifier, ...)

SELECT Birthdate
  , STRFTIME('%Y', Birthdate) AS Year
  , STRFTIME('%m', Birthdate) AS Month
  , STRFTIME('%d', Birthdate) AS Day
  , DATE('now') - Birthdate AS Age
FROM Employees;

SELECT DATE('now');

SELECT STRFTIME('%Y %m %d', 'now');

SELECT STRFTIME('%H %M %S %s', 'now');


