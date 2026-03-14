-- Step 1: Create the Database
DROP DATABASE IF EXISTS MovieRatingDB;
CREATE DATABASE MovieRatingDB;
USE MovieRatingDB;

-- Step 2: Create the Tables

-- 1. Users Table
CREATE TABLE Users (
    User_Id INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INT,
    Gender VARCHAR(10),
    Location VARCHAR(50)
);

-- 2. Movies Table
CREATE TABLE Movies (
    ID INT PRIMARY KEY,
    Title VARCHAR(200) NOT NULL,
    Release_Year INT,
    Genre VARCHAR(50),
    Director VARCHAR(100)
);

-- 3. Ratings Table
CREATE TABLE Ratings (
    User_ID INT,
    Movie_ID INT,
    Rating_Value DECIMAL(3,1),
    Rating_Date DATETIME,
    PRIMARY KEY (User_ID, Movie_ID),
    FOREIGN KEY (User_ID) REFERENCES Users(User_Id),
    FOREIGN KEY (Movie_ID) REFERENCES Movies(ID)
);

-- Step 3: Verify Your Schema
DESCRIBE Users;
DESCRIBE Movies;
DESCRIBE Ratings;

-- 1. View all users
SELECT * FROM Users;

-- 2. List all movies
SELECT * FROM Movies;

-- 3. View all ratings
SELECT * FROM Ratings;

-- PHASE 3: Using Comparison and Logical Operators

-- 1. Find users older than 25
SELECT Name, Age, Gender, Location
FROM Users
WHERE Age > 25
ORDER BY Age;

-- 2. Find movies released between 2000 and 2020
SELECT Title, Release_Year, Genre, Director
FROM Movies
WHERE Release_Year BETWEEN 2000 AND 2020
ORDER BY Release_Year;

-- 3. Find female users from Abuja
SELECT Name, Age, Location
FROM Users
WHERE Gender = 'Female' AND Location = 'Abuja';

-- 4. Find movies that are not Sci-Fi
SELECT Title, Release_Year, Genre, Director
FROM Movies
WHERE Genre != 'Sci-Fi'
ORDER BY Genre;

-- 5. Find ratings greater than or equal to 4
SELECT u.Name, m.Title, r.Rating_Value, r.Rating_Date
FROM Ratings r, Users u, Movies m
WHERE r.User_ID = u.User_Id 
  AND r.Movie_ID = m.ID
  AND r.Rating_Value >= 4
ORDER BY r.Rating_Value DESC;

-- PHASE 4: Sorting, Filtering, and Pagination

-- 1. Sort movies by release year (newest first)
SELECT Title, Release_Year, Genre, Director
FROM Movies
ORDER BY Release_Year DESC;

-- 2. List distinct genres
SELECT DISTINCT Genre
FROM Movies
ORDER BY Genre;

-- 3. Top 3 highest ratings
SELECT 
    (SELECT Name FROM Users WHERE User_Id = r.User_ID) AS Name,
    (SELECT Title FROM Movies WHERE ID = r.Movie_ID) AS Title,
    r.Rating_Value
FROM Ratings r
ORDER BY r.Rating_Value DESC
LIMIT 3;

-- 4. Skip the first 2 rows and display next 3 (ratings)
SELECT u.Name, m.Title, r.Rating_Value, r.Rating_Date
FROM Ratings r, Users u, Movies m
WHERE r.User_ID = u.User_Id 
  AND r.Movie_ID = m.ID
ORDER BY r.Rating_Date
LIMIT 3 OFFSET 2;

-- 5. Sort users alphabetically
SELECT Name, Age, Gender, Location
FROM Users
ORDER BY Name;
