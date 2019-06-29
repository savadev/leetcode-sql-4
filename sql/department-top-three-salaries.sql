# Write your MySQL query statement below


SELECT
	d.NAME AS Department,
	e.NAME AS Employee,
	e.salary AS Salary
FROM
	employee AS e
	INNER JOIN department AS d ON e.DepartmentId = d.id
WHERE
	( SELECT count( DISTINCT salary ) FROM employee WHERE e.salary < salary AND departmentid = e.DepartmentId ) < 3
ORDER BY
	e.departmentid,
	Salary DESC