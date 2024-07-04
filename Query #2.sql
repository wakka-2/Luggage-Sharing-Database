
-- Get Detailed info about passengers and their flights
SELECT 
    p.passenger_id,
    p.name,
    p.email,
    p.phone_number,
    p.address,
    p.date_of_birth,
    f.flight_id,
    f.flight_number,
    f.departure_airport,
    f.arrival_airport,
    f.departure_date_time,
    f.arrival_date_time
FROM 
    Passengers p
JOIN 
    Flights f ON p.passenger_id = f.passenger_id
ORDER BY 
    p.passenger_id;