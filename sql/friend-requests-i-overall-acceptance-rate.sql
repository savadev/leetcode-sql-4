SELECT
	ifnull(
		ROUND (
			count( DISTINCT concat( requester_id, "-", accepter_id ) ) / count( DISTINCT concat( sender_id, "-", send_to_id ) ),
			2
		),
		0
	) AS accept_rate
FROM
	request_accepted,
	friend_request