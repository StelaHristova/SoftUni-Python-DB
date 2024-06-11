CREATE TABLE gift_recipients(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY ,
    name VARCHAR(76),
    country_id INT NOT NULL REFERENCES countries ON DELETE CASCADE ON UPDATE CASCADE,
    gift_sent BOOLEAN DEFAULT FALSE
);

INSERT INTO gift_recipients(
            name,
            country_id
)
(SELECT
    CONCAT(first_name,' ', last_name) AS name,
    country_id
FROM
    customers);

UPDATE
    gift_recipients
SET
    gift_sent = TRUE
WHERE
    country_id IN (7, 8, 14, 17, 26);