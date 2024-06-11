SELECT
    p.name AS product_name,
    ROUND(AVG(price),2) AS average_price,
    COUNT(f) AS total_feedbacks
FROM
    feedbacks AS f
JOIN
    products AS p
ON
    f.product_id = p.id
WHERE
    price > 15
GROUP BY
    p.name
HAVING
    COUNT(f) > 1
ORDER BY
    total_feedbacks;