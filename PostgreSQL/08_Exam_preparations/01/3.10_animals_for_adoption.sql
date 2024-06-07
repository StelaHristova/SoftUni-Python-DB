SELECT
	   a.name as animal,
	   EXTRACT('year' FROM a.birthdate) AS birth_year,
	   at.animal_type
FROM animals AS a
	JOIN animal_types AS at
		 ON a.animal_type_id = at.id
WHERE 
	at.animal_type <> 'Birds'
  	AND a.owner_id IS NULL
  	AND age('01/01/2022', a.birthdate) < '5 year'
ORDER BY a.name ASC;