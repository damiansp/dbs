SELECT id 
FROM employee
WHERE EXISTS(
	SELECT id
	FROM member
	WHERE member.id = employee.id)
LIMIT 30;


SELECT id
FROM employee
WHERE EXISTS(SELECT NULL)
ORDER BY id
LIMIT 30;
