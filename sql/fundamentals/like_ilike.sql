SELECT DISTINCT partnumber, state
FROM product 
WHERE partnumber LIKE '%csco%'
LIMIT 20;


SELECT DISTINCT partnumber, state
FROM product 
WHERE partnumber NOT LIKE '%csco%' AND partnumber NOT LIKE '%msft%'
LIMIT 20;


SELECT DISTINCT partnumber, state
FROM product 
WHERE partnumber LIKE '_c%'
LIMIT 20;


SELECT DISTINCT partnumber, state
FROM product 
WHERE partnumber ILIKE '_C%' --case insensitive
LIMIT 20;
