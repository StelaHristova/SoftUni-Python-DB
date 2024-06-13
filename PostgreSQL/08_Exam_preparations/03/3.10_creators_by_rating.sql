SELECT
	c.last_name,
	CEIL(AVG(bg.rating)) as average_rating,
	p.name as publisher_name
FROM 
	board_games AS bg
JOIN 
	publishers AS p 
ON 
	p.id = bg.publisher_id
JOIN 
	creators_board_games AS cbg 
ON 
	bg.id = cbg.board_game_id
JOIN
	creators AS c
ON
	c.id = cbg.creator_id
WHERE 
	p.name = 'Stonemaier Games'
GROUP BY
	c.last_name,
	p.name
ORDER BY 
	average_rating DESC;