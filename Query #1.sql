
-- Get Top ten passengers with heaviest luggage
SELECT 
    p.passenger_id,
    p.name,
    l.luggage_id,
    l.description,
    l.weight
FROM Passengers p
JOIN 
    Luggage l ON p.passenger_id = l.passenger_id
ORDER BY   l.weight DESC
LIMIT 10;