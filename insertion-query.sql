-- Inserting sample data into Passengers table
INSERT INTO Passengers (name, email, phone_number, address, date_of_birth)
VALUES
    ('John Doe', 'john.doe@example.com', '123-456-7890', '123 Main St, Anytown, USA', '1990-05-15'),
    ('Jane Smith', 'jane.smith@example.com', '987-654-3210', '456 Elm St, Othertown, USA', '1985-08-20'),
    ('Michael Johnson', 'michael.johnson@example.com', '555-123-4567', '789 Oak Ave, Anothercity, USA', '1982-12-10'),
    ('Emily Davis', 'emily.davis@example.com', '111-222-3333', '321 Pine Rd, Yetanothercity, USA', '1995-03-25'),
    ('Robert Wilson', 'robert.wilson@example.com', '999-888-7777', '654 Birch Ln, Somewhere, USA', '1978-09-05'),
    ('Sarah Brown', 'sarah.brown@example.com', '444-555-6666', '876 Cedar Blvd, Anywhere, USA', '1993-07-12'),
    ('David Lee', 'david.lee@example.com', '777-666-5555', '432 Maple Dr, Nowhere, USA', '1987-04-30'),
    ('Jessica Taylor', 'jessica.taylor@example.com', '333-444-5555', '987 Willow Ave, Everytown, USA', '1991-11-15'),
    ('Matthew Clark', 'matthew.clark@example.com', '222-333-4444', '741 Pineapple St, Hereville, USA', '1980-06-20'),
    ('Amanda White', 'amanda.white@example.com', '666-777-8888', '852 Cherry Ln, Thereville, USA', '1989-02-28');

-- Inserting sample data into Flights table
INSERT INTO Flights (flight_number, departure_airport, arrival_airport, departure_date_time, arrival_date_time)
VALUES
    ('AB123', 'JFK', 'LAX', '2024-07-05 08:00:00', '2024-07-05 11:30:00'),
    ('CD456', 'LHR', 'SFO', '2024-07-06 14:00:00', '2024-07-06 18:30:00'),
    ('EF789', 'ORD', 'DFW', '2024-07-07 10:30:00', '2024-07-07 12:00:00'),
    ('GH012', 'ATL', 'MIA', '2024-07-08 12:45:00', '2024-07-08 14:15:00'),
    ('IJ345', 'PEK', 'HND', '2024-07-09 09:15:00', '2024-07-09 13:00:00'),
    ('KL678', 'SYD', 'MEL', '2024-07-10 16:00:00', '2024-07-10 17:30:00'),
    ('MN901', 'CDG', 'FRA', '2024-07-11 11:30:00', '2024-07-11 13:00:00'),
    ('OP234', 'BCN', 'MAD', '2024-07-12 08:45:00', '2024-07-12 10:15:00'),
    ('QR567', 'AMS', 'BRU', '2024-07-13 13:00:00', '2024-07-13 14:30:00'),
    ('ST890', 'FCO', 'ATH', '2024-07-14 07:30:00', '2024-07-14 09:00:00');

-- Inserting sample data into Luggage table
INSERT INTO Luggage (passenger_id, flight_id, description, weight, size, is_fragile)
VALUES
    (1, 1, 'Small suitcase', 15.5, '20x14x8 inches', 0),
    (2, 2, 'Large duffel bag', 22.0, '30x18x12 inches', 0),
    (3, 3, 'Backpack', 8.2, '18x12x6 inches', 0),
    (4, 4, 'Briefcase', 5.0, '16x12x4 inches', 0),
    (5, 5, 'Golf bag', 35.0, '48x14x10 inches', 0),
    (6, 6, 'Rolling carry-on', 12.8, '22x14x9 inches', 1),
    (7, 7, 'Large suitcase', 28.5, '30x20x12 inches', 0),
    (8, 8, 'Gym bag', 10.0, '24x12x10 inches', 0),
    (9, 9, 'Laptop bag', 3.5, '18x12x4 inches', 0),
    (10, 10, 'Ski bag', 40.0, '72x14x10 inches', 0);

-- Inserting sample data into Luggage_Sharing_Preferences table
INSERT INTO Luggage_Sharing_Preferences (passenger_id, flight_id, from_date, to_date, allowed_weight_range, allowed_size_range, allow_fragments)
VALUES
    (1, 2, '2024-07-05', '2024-07-08', '10-25 kg', '15x10x8 - 30x20x15 inches', 0),
    (2, 3, '2024-07-06', '2024-07-09', '15-30 kg', '20x15x10 - 35x25x20 inches', 1),
    (3, 4, '2024-07-07', '2024-07-10', '5-15 kg', '10x8x5 - 25x15x12 inches', 0),
    (4, 5, '2024-07-08', '2024-07-11', '8-20 kg', '18x12x6 - 30x18x10 inches', 0),
    (5, 6, '2024-07-09', '2024-07-12', '20-40 kg', '25x15x12 - 40x24x18 inches', 1),
    (6, 7, '2024-07-10', '2024-07-13', '15-35 kg', '20x12x10 - 35x20x15 inches', 0),
    (7, 8, '2024-07-11', '2024-07-14', '10-25 kg', '18x10x8 - 30x18x12 inches', 0),
    (8, 9, '2024-07-12', '2024-07-15', '5-10 kg', '15x8x6 - 25x15x10 inches', 0),
    (9, 10, '2024-07-13', '2024-07-16', '12-30 kg', '22x14x10 - 35x22x18 inches', 1),
    (10, 1, '2024-07-14', '2024-07-17', '25-50 kg', '30x18x12 - 50x30x20 inches', 0);
    
    -- Inserting sample data into Shared_Luggage table
INSERT INTO Shared_Luggage (luggage_id, shared_with_passenger_id, share_date, return_date, is_accepted)
VALUES
    (1, 2, '2024-07-05', '2024-07-07', 1),
    (3, 4, '2024-07-06', '2024-07-09', 1),
    (5, 6, '2024-07-07', '2024-07-10', 0),
    (7, 8, '2024-07-08', '2024-07-11', 1),
    (9, 10, '2024-07-09', '2024-07-12', 0),
    (2, 3, '2024-07-10', '2024-07-13', 1),
    (4, 5, '2024-07-11', '2024-07-14', 0),
    (6, 7, '2024-07-12', '2024-07-15', 1),
    (8, 9, '2024-07-13', '2024-07-16', 1),
    (10, 1, '2024-07-14', '2024-07-17', 0);