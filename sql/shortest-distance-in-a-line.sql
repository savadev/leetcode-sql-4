# Write your MySQL query statement below


SELECT
	min( abs( tmp_1.x - tmp_2.x ) ) AS shortest
FROM
	( SELECT x, ( @a := @a + 1 ) AS id FROM point p, ( SELECT @a := 0 ) a ORDER BY p.x ) tmp_1,
	( SELECT x, ( @b := @b + 1 ) AS id FROM point p, ( SELECT @b := 0 ) b ORDER BY p.x ) tmp_2
WHERE
	tmp_1.id - tmp_2.id =-1