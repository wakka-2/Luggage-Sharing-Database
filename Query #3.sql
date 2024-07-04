
-- Get total number of flights for each passenger
SELECT 
    p.passenger_id,
    p.name,
    COUNT(DISTINCT lsp.flight_id) AS total_flights
FROM 
    Passengers p
JOIN 
    Luggage_Sharing_Preferences lsp ON p.passenger_id = lsp.passenger_id
JOIN 
    Flights f ON lsp.flight_id = f.flight_id
GROUP BY 
    p.passenger_id, p.name
ORDER BY 
    total_flights DESC;