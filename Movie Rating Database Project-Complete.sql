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

-- =====================================================
-- PHASE 2: Insert Sample Data
-- =====================================================

-- 1. Insert Users Data
INSERT INTO Users (User_Id, Name, Age, Gender, Location) VALUES
(1, 'Ade Taiwo', 28, 'Male', 'Lagos'),
(2, 'Mary Johnson', 34, 'Female', 'Abuja'),
(3, 'Samuel Peters', 22, 'Male', 'Kano'),
(4, 'Ada Obi', 30, 'Female', 'Enugu'),
(5, 'Grace Yusuf', 26, 'Female', 'Ibadan'),
(6, 'Emeka Uzo', 40, 'Male', 'Port Harcourt'),
(7, 'Tunde Ajayi', 24, 'Male', 'Lagos'),
(8, 'Bola Ade', 31, 'Female', 'Abeokuta'),
(9, 'Fatima Musa', 27, 'Female', 'Abuja'),
(10, 'Chinedu Eze', 35, 'Male', 'Owerri'),
(11, 'Ngozi Nnamdi', 29, 'Female', 'Onitsha'),
(12, 'Ibrahim Sule', 33, 'Male', 'Kaduna'),
(13, 'Peace Akpan', 21, 'Female', 'Uyo'),
(14, 'Segun Bello', 37, 'Male', 'Lagos'),
(15, 'Oluwakemi Adebayo', 25, 'Female', 'Ilorin'),
(16, 'David Okoro', 32, 'Male', 'Benin'),
(17, 'Hauwa Abdullahi', 27, 'Female', 'Sokoto'),
(18, 'Kelvin Bright', 23, 'Male', 'Jos'),
(19, 'Rita Johnson', 36, 'Female', 'Abuja'),
(20, 'Collins Ojo', 29, 'Male', 'Lagos'),
(21, 'Sadiya Ibrahim', 28, 'Female', 'Kano'),
(22, 'Abdulrahman Bello', 31, 'Male', 'Kaduna'),
(23, 'Chika Nwosu', 24, 'Female', 'Enugu'),
(24, 'Olamide Fashola', 26, 'Male', 'Lagos'),
(25, 'Halima Abubakar', 35, 'Female', 'Sokoto'),
(26, 'Ikechukwu Nwankwo', 38, 'Male', 'Onitsha'),
(27, 'Uchechi Eze', 22, 'Female', 'Owerri'),
(28, 'Musa Abdullahi', 30, 'Male', 'Abuja'),
(29, 'Funke Akinola', 33, 'Female', 'Ibadan'),
(30, 'Chukwuemeka Obi', 27, 'Male', 'Enugu'),
(31, 'Aisha Sule', 25, 'Female', 'Kano'),
(32, 'Tayo Adeyemi', 29, 'Male', 'Lagos'),
(33, 'Ngozi Okafor', 31, 'Female', 'Onitsha'),
(34, 'Oluwaseun Adesanya', 28, 'Male', 'Ilorin'),
(35, 'Hauwa Lawal', 34, 'Female', 'Abuja'),
(36, 'Emmanuel Akpan', 36, 'Male', 'Uyo'),
(37, 'Fatimah Bello', 23, 'Female', 'Kaduna'),
(38, 'David Oladipo', 39, 'Male', 'Lagos'),
(39, 'Rita Chukwu', 32, 'Female', 'Enugu'),
(40, 'Ahmed Musa', 24, 'Male', 'Kano'),
(41, 'Chinwe Obi', 27, 'Female', 'Onitsha'),
(42, 'Tunde Olatunji', 35, 'Male', 'Lagos'),
(43, 'Blessing Nwachukwu', 28, 'Female', 'Owerri'),
(44, 'Abubakar Yusuf', 33, 'Male', 'Sokoto'),
(45, 'Yetunde Adeola', 26, 'Female', 'Abeokuta'),
(46, 'Ibrahim Lawal', 31, 'Male', 'Kaduna'),
(47, 'Chidimma Eze', 29, 'Female', 'Enugu'),
(48, 'Solomon Okeke', 38, 'Male', 'Lagos'),
(49, 'Amina Abubakar', 25, 'Female', 'Sokoto'),
(50, 'Tosin Ajayi', 27, 'Male', 'Lagos');

-- 2. Insert Movies Data
INSERT INTO Movies (ID, Title, Release_Year, Genre, Director) VALUES
(1, 'Inception', 2010, 'Sci-Fi', 'Christopher Nolan'),
(2, 'Black Panther', 2018, 'Action', 'Ryan Coogler'),
(3, 'Titanic', 1997, 'Romance', 'James Cameron'),
(4, 'The Matrix', 1999, 'Sci-Fi', 'Lana Wachowski'),
(5, 'Avatar', 2009, 'Adventure', 'James Cameron'),
(6, 'The Dark Knight', 2008, 'Action', 'Christopher Nolan'),
(7, 'Avengers: Endgame', 2019, 'Action', 'Anthony Russo'),
(8, 'The Shawshank Redemption', 1994, 'Drama', 'Frank Darabont'),
(9, 'Forrest Gump', 1994, 'Drama', 'Robert Zemeckis'),
(10, 'Interstellar', 2014, 'Sci-Fi', 'Christopher Nolan'),
(11, 'Joker', 2019, 'Drama', 'Todd Phillips'),
(12, 'Parasite', 2019, 'Thriller', 'Bong Joon Ho'),
(13, 'Gladiator', 2000, 'Action', 'Ridley Scott'),
(14, 'Frozen', 2013, 'Animation', 'Chris Buck'),
(15, 'The Lion King', 1994, 'Animation', 'Roger Allers'),
(16, 'Doctor Strange', 2016, 'Action', 'Scott Derrickson'),
(17, 'The Godfather', 1972, 'Crime', 'Francis Coppola'),
(18, 'Spider-Man: No Way Home', 2021, 'Action', 'Jon Watts'),
(19, 'Dune', 2021, 'Sci-Fi', 'Denis Villeneuve'),
(20, 'Oppenheimer', 2023, 'Biography', 'Christopher Nolan');

-- 3. Insert Ratings Data
INSERT INTO Ratings (User_ID, Movie_ID, Rating_Value, Rating_Date) VALUES
(1, 1, 4.5, '2024-06-01 00:00:00'),
(1, 3, 4.2, '2024-06-02 00:00:00'),
(2, 2, 5.0, '2024-06-03 00:00:00'),
(2, 5, 4.6, '2024-06-04 00:00:00'),
(3, 4, 4.0, '2024-06-05 00:00:00'),
(3, 6, 4.3, '2024-06-06 00:00:00'),
(4, 2, 4.8, '2024-06-07 00:00:00'),
(4, 8, 4.9, '2024-06-08 00:00:00'),
(5, 1, 3.9, '2024-06-09 00:00:00'),
(5, 7, 4.7, '2024-06-10 00:00:00'),
(6, 9, 4.2, '2024-06-11 00:00:00'),
(6, 10, 4.5, '2024-06-12 00:00:00'),
(7, 5, 4.6, '2024-06-13 00:00:00'),
(7, 12, 4.3, '2024-06-14 00:00:00'),
(8, 11, 3.8, '2024-06-15 00:00:00'),
(8, 14, 4.1, '2024-06-16 00:00:00'),
(9, 13, 4.7, '2024-06-17 00:00:00'),
(9, 15, 4.9, '2024-06-18 00:00:00'),
(10, 3, 3.6, '2024-06-19 00:00:00'),
(10, 17, 4.4, '2024-06-20 00:00:00'),
(11, 16, 4.8, '2024-06-21 00:00:00'),
(11, 19, 4.9, '2024-06-22 00:00:00'),
(12, 18, 4.5, '2024-06-23 00:00:00'),
(12, 20, 4.7, '2024-06-24 00:00:00'),
(13, 7, 4.2, '2024-06-25 00:00:00'),
(13, 10, 4.4, '2024-06-26 00:00:00'),
(14, 9, 4.1, '2024-06-27 00:00:00'),
(14, 12, 4.3, '2024-06-28 00:00:00'),
(15, 1, 3.8, '2024-06-29 00:00:00'),
(15, 5, 4.5, '2024-06-30 00:00:00'),
(16, 6, 4.7, '2024-07-01 00:00:00'),
(16, 8, 4.4, '2024-07-02 00:00:00'),
(17, 2, 4.0, '2024-07-03 00:00:00'),
(17, 3, 4.1, '2024-07-04 00:00:00'),
(18, 4, 4.6, '2024-07-05 00:00:00'),
(18, 7, 4.2, '2024-07-06 00:00:00'),
(19, 9, 4.8, '2024-07-07 00:00:00'),
(19, 11, 4.5, '2024-07-08 00:00:00'),
(20, 12, 4.7, '2024-07-09 00:00:00'),
(20, 14, 4.3, '2024-07-10 00:00:00');

-- PHASE 2: Write Basic Queries (Step 2)

-- 1. View all users
SELECT * FROM Users;

-- 2. List all movies
SELECT * FROM Movies;

-- 3. View all ratings
SELECT * FROM Ratings;

-- 4. Find movies rated by a specific user (bonus)
-- Example: Find all movies rated by User_ID = 1
SELECT m.Title, m.Release_Year, m.Genre, r.Rating_Value, r.Rating_Date
FROM Movies m
JOIN Ratings r ON m.ID = r.Movie_ID
WHERE r.User_ID = 1;

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
FROM Ratings r
JOIN Users u ON r.User_ID = u.User_Id
JOIN Movies m ON r.Movie_ID = m.ID
WHERE r.Rating_Value >= 4
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
SELECT u.Name, m.Title, r.Rating_Value
FROM Ratings r
JOIN Users u ON r.User_ID = u.User_Id
JOIN Movies m ON r.Movie_ID = m.ID
ORDER BY r.Rating_Value DESC
LIMIT 3;

-- 4. Skip the first 2 rows and display next 3 (ratings)
SELECT u.Name, m.Title, r.Rating_Value, r.Rating_Date
FROM Ratings r
JOIN Users u ON r.User_ID = u.User_Id
JOIN Movies m ON r.Movie_ID = m.ID
ORDER BY r.Rating_Date
LIMIT 3 OFFSET 2;

-- 5. Sort users alphabetically
SELECT Name, Age, Gender, Location
FROM Users
ORDER BY Name;

-- BONUS QUERIES: Additional Analysis

-- Average rating per movie
SELECT m.Title, AVG(r.Rating_Value) AS Average_Rating, COUNT(r.Rating_Value) AS Number_of_Ratings
FROM Movies m
JOIN Ratings r ON m.ID = r.Movie_ID
GROUP BY m.ID, m.Title
ORDER BY Average_Rating DESC;

-- Most active users (users with most ratings)
SELECT u.Name, COUNT(r.Rating_Value) AS Ratings_Count
FROM Users u
JOIN Ratings r ON u.User_Id = r.User_ID
GROUP BY u.User_Id, u.Name
ORDER BY Ratings_Count DESC
LIMIT 10;

-- Ratings count by genre
SELECT m.Genre, COUNT(r.Rating_Value) AS Total_Ratings, AVG(r.Rating_Value) AS Avg_Rating
FROM Movies m
JOIN Ratings r ON m.ID = r.Movie_ID
GROUP BY m.Genre
ORDER BY Avg_Rating DESC;

-- Movies rated in 2024 vs 2025
SELECT YEAR(r.Rating_Date) AS Year, COUNT(*) AS Total_Ratings
FROM Ratings r
GROUP BY YEAR(r.Rating_Date)
ORDER BY Year;