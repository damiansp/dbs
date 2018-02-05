-- Add single row
INSERT INTO table(col1, col2)
VALUES (value1, value2);


-- Add multiple rows
INSERT INTO table(col1, col2)
VALUES (value1, value2),
       (value1, value2);


-- Insert from another table
INSERT INTO table(value1, value2)
SELECT col1, col2
FROM other_table
WHERE condition;




