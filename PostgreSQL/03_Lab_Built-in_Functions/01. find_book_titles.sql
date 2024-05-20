SELECT
	title
FROM books
WHERE
	SUBSTRING(title, 1, 3) = 'The'
    ---left(title, 3) = 'The'---