SELECT 
	i.name AS ingredient_name,
	p.name AS product_name,
	d.name AS distributor_name
FROM
	ingredients AS i
JOIN
	distributors AS d
ON 
	i.distributor_id = d.id
JOIN 
	products_ingredients as pi
ON 
	pi.ingredient_id = i.id
JOIN
	products as p
ON
	pi.product_id = p.id
WHERE 
	LOWER(i.name) = 'mustard' and d.country_id = 16
ORDER BY 
	product_name;