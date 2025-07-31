
CREATE TABLE owners (
    id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE
);

DROP TABLE pets;
CREATE TABLE pets (
    id INTEGER PRIMARY KEY,
    owner_id INTEGER NOT NULL,
    species TEXT CHECK( species IN ('dog', 'cat', 'lizard')),
    age INTEGER NOT NULL,
    FOREIGN KEY (owner_id) REFERENCES owners(id)
);

INSERT INTO owners (first_name, last_name, email) VALUES
('billy', 'bob', 'billbob@email.com'),
('nancy', 'noodle', 'nancyn@eamil.com');


INSERT INTO pets (owner_id, species, age) VALUES
(7, 'dog', 8);


------------------ Udating data in a table -----------------

--- UPDATE table_name SET column = new_value WHERE target specific record (ex. id = 4)

UPDATE pets SET owner_id = 1 WHERE id = 4;

-- ADDING pet_name column to table
ALTER TABLE pets ADD pet_name TEXT;

-- Updating pet_name for dog number 1
UPDATE pets SET pet_name = 'Rhiannon' WHERE id = 1;

-- Update all cats to have name == 'mittens'
UPDATE pets SET pet_name = 'Mittens' WHERE species = 'cat';

--------------- DELETE data from a table

DELETE FROM pets WHERE id = 3;


------------------------------ CASCADING DELETE

-- FOREIGN KEY CONSTRAINT

-- ON DELETE CASCADE: If the Primary Key is deleted, then this record is deleted aswell

-- ON DELETE SET NULL: If the Primary Key is deleted, then this records FK to NULL

-- ON DELETE RESTRICT: Prevents deletion of Primary Key Holder, if they are referenced in another table


CREATE TABLE pets (
    id INTEGER PRIMARY KEY,
    owner_id INTEGER NOT NULL,
    species TEXT CHECK( species IN ('dog', 'cat', 'lizard')),
    age INTEGER NOT NULL,
    FOREIGN KEY (owner_id) REFERENCES owners(id) -- Cascade constraint goes here
);
