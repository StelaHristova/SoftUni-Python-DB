SELECT
	c.id,
	CONCAT(c.first_name, ' ', c.last_name) AS creator_name,
	c.email
FROM
	creators AS c
WHERE c.id NOT IN(
	SELECT 
		creator_id
	FROM 
		creators_board_games
)
ORDER BY
	creator_name