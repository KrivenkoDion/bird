CREATE TABLE birdspotting (
    id SERIAL PRIMARY KEY,
    bird_id INTEGER NOT NULL,
    spotted_at TIMESTAMP NOT NULL,
    location VARCHAR(255) NOT NULL,
    observer_name VARCHAR(255) NOT NULL,
    notes TEXT,
    FOREIGN KEY (bird_id) REFERENCES birds(id) ON DELETE CASCADE
);

INSERT INTO birdspotting (bird_id, spotted_at, location, observer_name, notes)
VALUES
(1, '2026-03-01 08:15:00', 'Brussels Park', 'Nina Peeters', 'Seen near the fountain'),
(1, '2026-03-02 09:40:00', 'Ghent Riverside', 'Lars Mertens', 'Feeding on breadcrumbs'),
(2, '2026-03-02 07:55:00', 'Antwerp Zoo Garden', 'Emma Janssens', 'Singing from a low branch'),
(3, '2026-03-03 21:10:00', 'Ardennes Forest Edge', 'Tom Wouters', 'Hunting at dusk'),
(4, '2026-03-04 12:25:00', 'Leuven Wetlands', 'Sofie Claes', 'Resting close to the marsh');