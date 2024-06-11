UPDATE 
	products AS p
SET 
	price = p.price * 1.10
WHERE (
    SELECT
           MAX(f.rate)
    FROM feedbacks AS f
    WHERE f.product_id = p.id) > 8
RETURNING *;