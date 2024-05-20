SELECT
	last_name,
	to_char(born, 'DD (Dy) Mon YYYY') as "Date of Birth"
FROM authors