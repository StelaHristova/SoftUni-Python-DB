SELECT
	   v.name as volunteers,
	   v.phone_number,
	   SUBSTRING(TRIM(replace(v.address, 'Sofia', '')), 3) AS address
FROM volunteers AS v
	JOIN volunteers_Departments as vd
		ON v.department_id = vd.id
WHERE 
	vd.department_name = 'Education program assistant' 
	AND v.address LIKE '%Sofia%'
ORDER BY v.name ASC;