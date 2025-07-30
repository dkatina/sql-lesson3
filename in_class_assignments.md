# Lesson 3: In-Class Assignments

## Assignment 1: Database Setup and First Table

### Task
Set up your SQLite environment and create your first database with a simple table.
We'll create a table to hold student data that should contain the following fields:
- id
- first_name
- last_name
- DOB
- grade_level

### Requirements
```sql
-- Step 1: Create a new database file
-- called assignment.db

-- Step 2: Create a simple table for students, utilizing proper datatypes


-- Step 3: Verify the table was created 

```

### Test Your Table
```sql
-- Insert at least 2 test students with different data
-- View the data to verify your inserts worked
-- Practice inserting more students
```

### Modify Your Table
```sql
-- Add a new column to your Students table
-- Update the new column with data for your students
-- View the updated table structure
-- View the data with the new column
```

---

## Assignment 2: Building a Pet Clinic Database

### Task
Create a complete database schema for a pet clinic with appropriate constraints.
We'll create a table to hold owner data that should contain the following fields:
- id
- first_name
- last_name
- email

Then create a Pet table:

- id 
- owner_id (should point to their owner)
- species
- age

### Requirements
```sql
-- Create the pet clinic database
-- sqlite3 pet_clinic.db

-- 1. Create Owners table


-- 2. Create Pets table

```

### Test Your Schema
```sql
-- Verify all tables were created
-- Check the schema of each table
-- Make sure your foreign key relationship is properly set up
```

---

## Assignment 3: Data Manipulation with Your Pet Clinic Database

### Task
Build on your pet clinic database from Assignment 2 to practice data manipulation operations.

### Requirements

#### Part A: Add Sample Data
```sql
-- Use your pet_clinic.db from Assignment 2

-- Insert at least 3 sample owners with different information
-- Insert at least 4 sample pets, making sure some owners have multiple pets
-- Verify your data was inserted correctly
```

#### Part B: UPDATE Operations
```sql
-- Update all pet ages (they got older!)
-- Update an owner's phone number
-- Update a pet's name
-- Make sure to use WHERE clauses to target specific records
```

#### Part C: DELETE Operations
```sql
-- Delete a specific pet
-- Try to delete an owner (this should fail due to foreign key constraint)
-- Explain why the deletion failed
```

#### Part D: Verify Your Changes
```sql
-- View all owners
-- View all pets
-- View the updated table structure
-- Show pets with their owners using a JOIN query
```

---

