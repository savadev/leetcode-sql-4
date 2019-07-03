SELECT
	sum( TIV_2016 ) AS TIV_2016 
FROM
	insurance 
WHERE
	PID IN ( SELECT PID FROM insurance GROUP BY lat, lon HAVING count( * ) = 1 ) 
	AND 
	TIV_2015 IN ( SELECT TIV_2015 FROM insurance GROUP BY TIV_2015 HAVING count( * ) > 1 )