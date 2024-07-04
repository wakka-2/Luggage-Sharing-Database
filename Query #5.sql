
-- Get all accepted luggage requests
SELECT l.*, p.name AS passenger_name, s.name AS shared_with_name
FROM Shared_Luggage sl
INNER JOIN Luggage l ON sl.luggage_id = l.luggage_id
INNER JOIN Passengers p ON l.passenger_id = p.passenger_id
INNER JOIN Passengers s ON sl.shared_with_passenger_id = s.passenger_id
WHERE sl.is_accepted = TRUE;