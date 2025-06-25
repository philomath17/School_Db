-- creating Database school

CREATE DATABASE IF NOT EXISTS SchoolDB;
USE SchoolDB;

-- sample table for "students" database 

CREATE TABLE Students (
    student_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE,
    age INTEGER DEFAULT 18,
    grade VARCHAR(5)
);

-- Inserting Data

INSERT INTO Students (name, email, age, grade)VALUES
  ('Jeet', 'jeet@example.com', 20, 'A'),
  ('Abhijeet', 'abhi@example.com', NULL, 'B'),
  ('Jagjit', 'jagjit@example.com', DEFAULT, 'A'),
  ('Sujeet', NULL, 19, NULL);
  
  -- Updating the null values 
  
UPDATE Students
JOIN (
    SELECT student_id
    FROM Students
    WHERE age IS NULL
) AS temp
ON Students.student_id = temp.student_id
SET Students.age = 25;

UPDATE Students SET grade = 'C' WHERE grade IS NULL;
UPDATE Students SET email = 'sujeet@example.com' WHERE email IS NULL;

-- Deleting Data
DELETE FROM Students WHERE grade = 'C';

-- Final Data after Update and Delete
SELECT * FROM Students;