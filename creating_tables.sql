
------------------------------ CREATING TABLES --------------------------------

-- CREATE TABLE name_of_table (field_1 datatype, field_2 datatype);

-- DataTypes:
-- INT -> INTEGER
-- VARCHAR - you need to set a max limit to the character count
-- TEXT - no cap to the character count
-- BOOLEAN - True false values
-- DATE - YYYY-MM-DD
-- DATETIME - DATE + Timestamp
-- TIME - Timestamp
-- FLOAT - Decimals

-- Create a Book table
-- id - INTEGER
-- title - VARCHAR/TEXT
-- author - VARCHAR/TEXT
-- publish_date - DATE
-- page_count - INTEGER
-- genre - VARCHAR/TEXT

-- Need to add PRIMARY KEY constraint

CREATE TABLE books4 (
    id INTEGER PRIMARY KEY, -- Default behavior of primary keys is to auto-increment
    title VARCHAR(340),
    author TEXT,
    genre TEXT,
    publish_date DATE,
    page_count INTEGER
);

-- INSERTING a book into our DB

-- INSERT INTO table (field_1, field_2, field_3...) VALUES
-- (value_1, value_2, value_3)

INSERT INTO books4 (title, author, genre, publish_date, page_count) VALUES
('A Clash of Kings', 'George R. R. Martin', 'Fantasy', '1998-11-16', 807);

SELECT * FROM books4;


-- DROPPING Database 

-- DROP DATABASE name_of_db
-- SQLite you can just delete you db file from your explorer

-- DROPPING Tables

-- DROP TABLE name_of_table

DROP TABLE books3;