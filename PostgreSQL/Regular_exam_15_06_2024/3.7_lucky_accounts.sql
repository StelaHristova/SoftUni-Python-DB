SELECT
    CONCAT(a.id, ' ', a.username) AS id_username,
	a.email
FROM
    accounts AS a
INNER JOIN 
	accounts_photos AS ap
ON 
	a.id = ap.account_id
WHERE
	a.id = ap.photo_id
ORDER BY
    a.id;