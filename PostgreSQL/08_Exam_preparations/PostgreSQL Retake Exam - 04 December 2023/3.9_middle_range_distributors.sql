SELECT
    d.name AS distributor_name,
    i.name AS ingredient_name,
    p.name AS product_name,
    AVG(f.rate) AS average_rate
FROM
    products AS p
JOIN
    feedbacks AS f
ON
    f.product_id = p.id
JOIN
    products_ingredients AS pi
ON
    p.id = pi.product_id
JOIN
    ingredients AS i
ON
    pi.ingredient_id = i.id
JOIN
    distributors AS d
ON
    i.distributor_id = d.id
GROUP BY
    p.name,
    p.id,
    distributor_name,
    ingredient_name
HAVING
    AVG(f.rate) BETWEEN 5 AND 8
ORDER BY
    distributor_name,
    ingredient_name,
    product_name;