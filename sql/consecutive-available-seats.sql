# Write your MySQL query statement below
SELECT DISTINCT
	( c1.seat_id )
FROM
	cinema c1
	INNER JOIN cinema c2 ON abs( c1.seat_id - c2.seat_id ) = 1
	AND c1.free = TRUE
	AND c2.free = TRUE
ORDER BY
	c1.seat_id