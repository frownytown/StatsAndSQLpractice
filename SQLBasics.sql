SELECT
	trip_id, duration
FROM
	trips
WHERE 
	duration > 500
ORDER BY duration DESC;

--------------------------------------
SELECT
	*
FROM
	stations
WHERE 
	station_id = 84;

-------------------------------------
SELECT
	mintemperaturef, precipitationin, zip
FROM
	weather
WHERE
	zip = 94301 AND
	precipitationin > 0;