SELECT DISTINCT partnumber, state
FROM product 
WHERE state IN (1, 3, 5)
LIMIT 20;


SELECT DISTINCT partnumber, state
FROM product 
WHERE state NOT IN (1, 3, 5)
LIMIT 20;
