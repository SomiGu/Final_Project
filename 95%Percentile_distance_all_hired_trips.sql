
CREATE TABLE  IF NOT EXISTS hired_trips  as 
SELECT pickup_datetime , distance 
FROM taxi_trips WHERE STRFTIME('%Y', pickup_datetime) = 2013 AND STRFTIME('%m', pickup_datetime) = '07'
UNION ALL
SELECT pickup_datetime, distance 
FROM uber_trips WHERE STRFTIME('%Y', pickup_datetime) = 2013 AND STRFTIME('%m', pickup_datetime) = '07';


SELECT
  distance AS '95% distance'
FROM hired_trips
ORDER BY distance ASC
LIMIT 1
OFFSET (SELECT
         COUNT(*)
        FROM hired_trips) * 95 / 100 - 1;

