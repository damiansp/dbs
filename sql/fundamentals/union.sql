SELECT id, item
FROM license
WHERE id <= 1000
UNION
SELECT id, item
FROM license 
WHERE item <= 100
ORDER BY item
LIMIT 30;

-- Or, for easier reading (imho):
SELECT id, item
FROM license
WHERE id <= 1000
UNION (
  SELECT id, item
  FROM license 
  WHERE item <= 100
  ORDER BY item)
LIMIT 30;

-- UNION removes duplicates. To retain:
SELECT id, item
FROM license
WHERE id <= 1000
UNION ALL
SELECT id, item
FROM license
WHERE item <= 100
ORDER BY item
LIMIT 30;
