
CREATE TABLE  IF NOT EXISTS hired_trips  as 
SELECT pickup_datetime , distance 
FROM taxi_trips WHERE STRFTIME('%Y', pickup_datetime) = 2009 
UNION ALL
SELECT pickup_datetime, distance 
FROM uber_trips WHERE STRFTIME('%Y', pickup_datetime) = 2009 ;


SELECT STRFTIME('%j', pickup_datetime),AVG(distance) from hired_trips GROUP BY STRFTIME('%j', pickup_datetime) 
HAVING COUNT(*) IN (  SELECT DISTINCT COUNT(*)
  FROM hired_trips data
  GROUP BY STRFTIME('%j', pickup_datetime)
  ORDER BY count(*) DESC
  LIMIT 10);

