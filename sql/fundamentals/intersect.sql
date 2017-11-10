SELECT id, item 
FROM licence
WHERE id <= 1000
INTERSECT
SELECT id, item
FROM licence
WHERE item <= 100
ORDER BY item
LIMIT 30;
