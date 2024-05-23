SELECT
	COUNT(CASE department_id WHEN 1 THEN 1 ELSE NULL END) as "Engineering",
	COUNT(CASE department_id WHEN 2 THEN 1 ELSE NULL END) as "Tool Design",
	COUNT(CASE department_id WHEN 3 THEN 1 ELSE NULL END) as "Sales",
	COUNT(CASE department_id WHEN 4 THEN 1 ELSE NULL END) as "Marketing",
	COUNT(CASE department_id WHEN 5 THEN 1 ELSE NULL END) as "Purchasing",
	COUNT(CASE department_id WHEN 6 THEN 1 ELSE NULL END) as "Research and Development",
	COUNT(CASE department_id WHEN 7 THEN 1 ELSE NULL END) as "Production"
FROM employees