CREATE TABLE birds (
    id SERIAL PRIMARY KEY,
    nickname VARCHAR(255) NOT NULL,
    ring_code VARCHAR(100) UNIQUE NOT NULL,
    age INTEGER NOT NULL,
    species_id INTEGER NOT NULL,
    FOREIGN KEY (species_id) REFERENCES species(id) ON DELETE RESTRICT
);

INSERT INTO birds (nickname, ring_code, age, species_id)
VALUES
('Pip', 'SPARROW-001', 2, 1),
('Rusty', 'ROBIN-001', 1, 2),
('Ghost', 'OWL-001', 4, 3),
('Cloud', 'STORK-001', 6, 4);