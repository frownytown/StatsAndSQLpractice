SELECT
	date, zip, max(maxtemperaturef) as temperature
FROM
	weather
GROUP by
	date, zip
ORDER BY 
	max(maxtemperaturef) DESC
LIMIT 5;
----------------------------------------------------------
SELECT
	start_station, count(trip_id)
FROM
	trips
GROUP BY 
	start_station
ORDER BY 
	count(trip_id) DESC;
----------------------------------------------------------
SELECT
	trip_id, min(duration)
FROM
	trips
GROUP BY 
	trip_id
ORDER BY
	min(duration) ASC
LIMIT 5;
-----------------------------------------------------------
SELECT
	end_station, avg(duration)
FROM
	trips
GROUP BY 
	end_station
ORDER BY
	avg(duration) ASC;