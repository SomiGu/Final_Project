
CREATE TABLE IF NOT EXISTS hired_trips as 
SELECT STRFTIME('%j', pickup_datetime) as DATE, STRFTIME('%H', pickup_datetime) as HOUR from 
(SELECT pickup_datetime 
FROM taxi_trips WHERE STRFTIME('%Y', pickup_datetime) = 2012 AND 
STRFTIME('%m', pickup_datetime) = '10' AND STRFTIME('%j', pickup_datetime) <= '30'  AND STRFTIME('%j', pickup_datetime) <= '22'
UNION ALL
SELECT pickup_datetime
FROM uber_trips WHERE STRFTIME('%Y', pickup_datetime) = 2012 AND STRFTIME('%m', pickup_datetime) = '10' 
AND STRFTIME('%j', pickup_datetime) <= '30'  AND STRFTIME('%j', pickup_datetime) <= '22');



SELECT COUNT(*), HourlyPrecipitation, HourlyWindSpeed from hired_trips INNER JOIN hourly_weather 
ON hired_trips.DATE = STRFTIME('%j', hourly_weather.DATE) 
AND hired_trips.HOUR =STRFTIME('%h', hourly_weather.DATE)
GROUP BY hourly_weather.DATE, STRFTIME('%h', hourly_weather.DATE);

