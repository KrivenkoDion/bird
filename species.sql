CREATE TABLE species (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    scientific_name TEXT NOT NULL,
    family TEXT NOT NULL,
    conservation_status TEXT,
    wingspan_cm NUMERIC(5,2)
);

INSERT INTO species (name, scientific_name, family, conservation_status, wingspan_cm)
VALUES
('House Sparrow', 'Passer domesticus', 'Passeridae', 'Least Concern', 21.0),
('European Robin', 'Erithacus rubecula', 'Muscicapidae', 'Least Concern', 22.5),
('Barn Owl', 'Tyto alba', 'Tytonidae', 'Least Concern', 95.0),
('White Stork', 'Ciconia ciconia', 'Ciconiidae', 'Least Concern', 195.0);
