CREATE DATABASE Studens_db;

USE Studens_db;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100),
    Age INT CHECK (Age >= 18),
    Email VARCHAR(255) NOT NULL UNIQUE
);

INSERT INTO Students (StudentID, FirstName, LastName, Age, Email) 
VALUES 
(1, 'John', 'Doe', 20, 'john.doe@example.com'),
(2, 'Jane', 'Smith', 22, 'jane.smith@example.com'),
(3, 'Michael', 'Brown', 19, 'michael.brown@example.com');

ALTER TABLE Students
ADD EnrollmentDate DATE;

ALTER TABLE Students
MODIFY Email VARCHAR(300) NOT NULL UNIQUE;

ALTER TABLE Students
DROP COLUMN LastName;


