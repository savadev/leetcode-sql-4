SELECT NAME
FROM
	Candidate
WHERE
	id = ( SELECT CandidateId FROM Vote GROUP BY CandidateId ORDER BY count( * ) DESC LIMIT 0, 1 )