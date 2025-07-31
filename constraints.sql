
-------------------- CONSTRAINTS ----------------------


-- PRIMARY KEY - Automatically increment, 
--prevents NULL values from being enterd
--ensures every key is unique

-- NOT NULL - means data is required (can't leave empty)

-- UNIQUE - means you cannot repeat this field on another record

-- CHECK - allows us to set our own check, on data entering the db.
-- completion_status should be ('started', 'pending', 'complete')


-- food table
-- culture - TEXT
-- name - TEXT
-- dietary_restriction: TEXT ('vegetarian', 'vegan', 'gluten-free')
-- calories INT
-- spice_level INT
-- meal_type : ('dessert', 'lunch', 'brekkie', 'dinner')

CREATE TABLE foods (
    id INTEGER PRIMARY KEY,
    food_name TEXT NOT NULL,
    dietary_restriction TEXT CHECK( dietary_restriction IN ('vegetarian', 'vegan', 'gluten-freen')),
    calories INTEGER NOT NULL,
    spice_level INTEGER,
    meal_type TEXT CHECK( meal_type IN ('dessert', 'lunch', 'brekkie', 'dinner'))
);


INSERT INTO foods (food_name, dietary_restriction, calories, spice_level, meal_type) VALUES
('tacos', NULL, 100, 50000, 'lunch');


----------------------- ALTERING TABLES ----------------------

-- Add new column to the foods table

-- add recipe column to foods table

ALTER TABLE foods ADD dairy BOOLEAN;


-- ADDING CONSTRAINTS 
-- IN OTHER RDBMS 

-- ALTER TABLE table_name
-- ADD CONSTRAINT constraint_name 
-- COLUMN column_name

-- Turn FK's off
-- rename original_table to temp_table (this frees up the original table name)
-- recreate the entire table with the new constraints using original_name
-- repopulate new tables
-- drop old table


-- PRAGMA foreign_keys=off

ALTER TABLE foods RENAME TO new_foods;
CREATE TABLE foods (
    id INTEGER PRIMARY KEY,
    food_name TEXT NOT NULL UNIQUE,
    dietary_restriction TEXT CHECK( dietary_restriction IN ('vegetarian', 'vegan', 'gluten-freen')),
    calories INTEGER NOT NULL,
    spice_level INTEGER,
    meal_type TEXT CHECK( meal_type IN ('dessert', 'lunch', 'brekkie', 'dinner')),
    recipe TEXT,
    dairy BOOLEAN
);

INSERT INTO foods SELECT * FROM new_foods;
DROP TABLE new_foods;

-- PRAGMA foreign_keys=on
