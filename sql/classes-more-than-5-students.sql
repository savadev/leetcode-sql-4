SELECT
	class
FROM
	( SELECT DISTINCT * FROM courses ) AS tmp
GROUP BY
	class
HAVING
	count( * ) >4