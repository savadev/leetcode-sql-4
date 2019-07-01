SELECT
	question_id AS survey_log
FROM
	survey_log
GROUP BY
	question_id
ORDER BY
	( ifnull( count( answer_id ), 0 ) / count( * ) ) DESC
	LIMIT 1