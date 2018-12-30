WITH
	rainy
AS (
	SELECT
		DATE(date) rain_day
	FROM
		weather
	WHERE events = 'Rain'
	GROUP BY 1
)
SELECT
	t.trip_id, t.duration, DATE(t.start_date)
FROM
	trips t
JOIN
	rainy r
ON
	DATE(t.start_date) = r.rain_day
ORDER BY duration DESC
LIMIT 3
------------------------------------------------
SELECT
	status.station_id,
	stations.name,
COUNT(CASE WHEN status.docks_available = 0 then 1 END) empty_count
FROM 
	status
JOIN 
	stations
ON 
	stations.station_id = status.station_id
GROUP BY 1,2
ORDER BY empty_count desc;
----------------------------------------------------
SELECT
	s.name, s.dockcount, COUNT(t.trip_id) trip_count
FROM
	stations s
JOIN
	trips t
ON
	s.name = t.start_station
GROUP BY 1,2
ORDER BY s.dockcount DESC;