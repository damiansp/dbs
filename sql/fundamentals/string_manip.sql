-- use `||` for concatenation; `+` in some versions of SQL
SELECT CompanyName, ContactName, CompanyName || ' (' || ContactName || ')'
FROM customers;



-- TRIM, RTRIM, LTRIM
SELECT TRIM('   You are da best.    ') AS TrimmedString;



-- SUBST
--SUBSTR(string_name, string_pos, n_chars)
SELECT first_name, SUBSTR(first_name, 2, 3)
FROM employees
WHERE dept_id = 60; --'Damian'   'ami'


-- Case
SELECT UPPER(col_name) -- LOWER, UCASE (same as UPPER)
FROM some_table



