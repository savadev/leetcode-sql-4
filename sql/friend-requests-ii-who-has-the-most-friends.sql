# Write your MySQL query statement below
SELECT
	id,
	sum( num ) AS num
FROM
	(
	SELECT requester_id AS id, count( * ) AS num FROM request_accepted GROUP BY  requester_id
	UNION ALL
	SELECT accepter_id AS id, count( * ) AS num FROM request_accepted GROUP BY accepter_id
	) AS tmp
GROUP BY
	id
ORDER BY
	num DESC
	LIMIT 1