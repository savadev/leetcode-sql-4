# Write your MySQL query statement below

SELECT
	d.dept_name,
IF
	( count( * ) = 1 AND student_id IS NULL, 0, count( * ) ) AS student_number
FROM
	student s
	RIGHT JOIN department d ON s.dept_id = d.dept_id
GROUP BY
	dept_name
ORDER BY
	student_number DESC,
	dept_name


	# Write your MySQL query statement below

	SELECT
	d.dept_name,
	count( student_id ) AS student_number
FROM
	student s
	RIGHT JOIN department d ON s.dept_id = d.dept_id
GROUP BY
	dept_name
ORDER BY
	student_number DESC,
	dept_name