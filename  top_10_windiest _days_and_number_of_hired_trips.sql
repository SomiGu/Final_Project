
CREATE TABLE IF NOT EXISTS hired_trips as 
SELECT pickup_datetime , distance 
FROM taxi_trips WHERE STRFTIME('%Y', pickup_datetime) = 2014
UNION ALL
SELECT pickup_datetime, distance 
FROM uber_trips WHERE STRFTIME('%Y', pickup_datetime) = 2014;


SELECT STRFTIME('%j', pickup_datetime), COUNT(*) from hired_trips GROUP BY STRFTIME('%j', pickup_datetime) 
HAVING STRFTIME('%j', pickup_datetime) IN (
  SELECT STRFTIME('%j', DATE) from daily_weather
  ORDER BY DailyWindSpeed  DESC
  LIMIT 10
);

