SELECT id, minutes, product, title 
FROM video 
WHERE minutes > (
	SELECT AVG(minutes)
	FROM video)
ORDER BY minutes
LIMIT 30;
