-- EXCEPT is set subtraction: A EXCEPT B = A - B
SELECT id, item
FROM license 
WHERE id <= 1000
EXCEPT
SELECT id, item
FROM license
WHERE item > 500
ORDER BY item
LIMIT 30;


-- To me this reads better:
SELECT id, item
FROM license 
WHERE id <= 1000
EXCEPT (
	SELECT id, item
	FROM license
	WHERE item > 500
	ORDER BY item)
LIMIT 30;
