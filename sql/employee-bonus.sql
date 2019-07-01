SELECT
	emp.NAME,
	b.bonus
FROM
	Employee emp
	LEFT JOIN Bonus b ON emp.empId = b.empId
WHERE
	b.bonus < 1000
	OR b.bonus IS NULL