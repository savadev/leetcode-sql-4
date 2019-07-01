SELECT NAME
FROM
	Employee
WHERE
	id IN ( SELECT ManagerId FROM Employee GROUP BY ManagerId HAVING ManagerId IS NOT NULL AND count( * ) > 4 )