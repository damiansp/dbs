DELETE FROM table
WHERE condition;

DELETE FROM table
USING other_table
WHERE table.id = other_table.id; -- AND ...

DELETE FROM table
WHERE table.id = (SELECT id FROM other_table);
