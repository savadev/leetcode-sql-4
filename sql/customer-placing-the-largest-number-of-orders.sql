SELECT
	customer_number
FROM
	orders
GROUP BY
	customer_number
ORDER BY
	count( * ) DESC
	LIMIT 0,1