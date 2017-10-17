SELECT producttype
FROM product 
GROUP BY producttype
LIMIT 20;


SELECT state, COUNT(partnumber)
FROM product
GROUP BY state
LIMIT 20;


SELECT partnumber, SUM(expectedvideos) AS n_videos
FROM product
WHERE expectedvideos IS NOT NULL
GROUP BY partnumber
ORDER BY n_videos DESC
LIMIT 20;


SELECT partnumber, SUM(expectedvideos) AS n_videos
FROM product
WHERE expectedvideos IS NOT NULL
GROUP BY partnumber
HAVING partnumber LIKE '%cbt%'
ORDER BY n_videos DESC
LIMIT 20;


SELECT partnumber, SUM(expectedvideos) AS n_videos
FROM product
WHERE expectedvideos IS NOT NULL
GROUP BY partnumber
HAVING SUM(expectedvideos) <= 100
ORDER BY n_videos DESC
LIMIT 20;
