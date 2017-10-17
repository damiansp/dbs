SELECT partnumber, state, name 
FROM product
	INNER JOIN producttype ON product.producttype = producttype.id
ORDER BY name, state
LIMIT 20;

SELECT partnumber, state, name 
FROM product
	INNER JOIN producttype ON product.producttype = producttype.id
WHERE state > 1
ORDER BY name, state
LIMIT 20;


SELECT partnumber, state, name 
FROM product
	FULL OUTER JOIN producttype ON product.producttype = producttype.id
WHERE state > 1
ORDER BY name, state
LIMIT 20;


SELECT partnumber, state, name 
FROM product
	LEFT JOIN producttype ON product.producttype = producttype.id
WHERE state > 1
ORDER BY name, state
LIMIT 20;


SELECT *
FROM T1
  CROSS JOIN T2; --Cartesian product (all combinations of T1 and T2)
