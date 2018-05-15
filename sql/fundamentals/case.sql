--CASE input_expression
--  WHEN case1 THEN expression1
--  WHEN case2 THEN expression2
--  ...
--  ELSE default_expression -- (optional)
--END

SELECT employeeid
  , firstname
  , lastname
  , city
  , CASE City
      WHEN 'Calgary' THEN 'Calgary'
      ELSE 'Other'
    END calgary
FROM Employees
ORDER BY lastname, firstname;


-- CASE WHEN boolean_expression
--   THEN res_expression [...n]
--   [ELSE default_expression]
-- END

SELECT trackid, name, bytes
  , CASE
      WHEN bytes < 300000 THEN 'small'
      WHEN bytes > 300000 AND bytes < 500000 THEN 'medium'
      WHEN bytes > 500000 THEN 'large'
      ELSE 'other'
    END bytesize
FROM tracks;
