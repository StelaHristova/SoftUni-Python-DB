SELECT
	continent_name,
	TRIM(LEADING FROM continent_name) AS "trim"
	-- LTRIM(continent_name) AS "trim" -- 2nd solution
FROM
	continents;