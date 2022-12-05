
SELECT STRFTIME('%w', pickup_datetime) as weekday,
       COUNT(*) as DAROFWEEK
FROM uber_trips
GROUP BY STRFTIME('%w', pickup_datetime)

