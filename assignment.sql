
CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    DOB DATE,
    grade_level INTEGER
);

INSERT INTO students(FIRST_NAME, LAST_NAME, DOB, GRADE_LEVEL)
VALUES ('Tanya', 'Daniels', '2007-01-01', 12);

INSERT INTO students (first_name, last_name, DOB, grade_level)
VALUES ('John', 'Laydon', '1992-08-14', 12);

INSERT INTO students ( first_name,last_name,DOB,grade_level) 
VALUES ( 'John', 'Smith', '2011-02-02', 8)

-- Adding multiple values in a single query

INSERT INTO students ( first_name,last_name,DOB,grade_level) VALUES 
( 'John', 'Smith', '2011-02-02', 8),
('Dylan', 'Katina', '1900-01-01', 1),
('Peter', 'Cottontail', '2000-12-21', 7)