
SELECT STRFTIME('%H', pickup_datetime) as hour,
       COUNT(*) as ORDERPERHOUR
FROM taxi_trips
GROUP BY STRFTIME('%H', pickup_datetime)

