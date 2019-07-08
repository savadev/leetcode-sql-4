SELECT
	ROUND(
		SQRT( pow( a.x - b.x, 2 ) + pow( a.y - b.y, 2 ) ),
		2
	) AS shortest
FROM
	point_2d a,
	point_2d b
WHERE
	a.x != b.x
	OR a.y != b.y
ORDER BY
	pow( a.x - b.x, 2 ) + pow( a.y - b.y, 2 )
	LIMIT 1