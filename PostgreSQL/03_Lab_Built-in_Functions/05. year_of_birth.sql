SELECT
	first_name,
	last_name,
	extract('year' from born) as year
    ---date_part('year', born) as year
FROM authors