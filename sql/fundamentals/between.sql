SELECT DISTINCT partnumber, state
FROM product
WHERE state BETWEEN 2 AND 4
LIMIT 20;


SELECT DISTINCT partnumber, state
FROM product
WHERE state NOT BETWEEN 2 AND 4
LIMIT 20;
