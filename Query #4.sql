
-- Get Flights in the last month
SELECT *
FROM Flights
WHERE departure_date_time >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
  AND arrival_date_time >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH);