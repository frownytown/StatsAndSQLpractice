SELECT
	max(price) as price, name, neighbourhood, minimum_nights, reviews_per_month
FROM
	ash_listings
GROUP BY
	name, neighbourhood, minimum_nights, reviews_per_month
ORDER BY
	max(price) DESC
LIMIT 10;

---------------------------------------------------------------------------------
SELECT
	max(number_of_reviews) as popularity, name, neighbourhood, reviews_per_month
FROM
	ash_listings
GROUP BY
	name, neighbourhood, reviews_per_month
ORDER BY
	max(number_of_reviews) DESC
LIMIT 10;

---------------------------------------------------------------------------------
SELECT 
	to_char(calendar_date,'Mon') as mon, AVG(TO_NUMBER(price, 'L9G999g999.99')) as average_price, 
	COUNT(*) FILTER (WHERE available = 't') as availability         
FROM 
	ash_calendar
GROUP BY 1
ORDER BY
	average_price DESC;