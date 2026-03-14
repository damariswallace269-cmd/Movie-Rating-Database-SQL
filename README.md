# 🎬 Movie Rating Database SQL

This is a relational database project for managing movie ratings using MySQL, demonstrating fundamental SQL concepts from database creation to complex querying.

---

## 📋 Project Overview

This project involves building and exploring a movie rating system to understand how users rate movies, identify popular titles, and perform meaningful analysis using SQL statements across four progressive learning phases.

---

### **📝 Project Phases & Key Queries**
## **PHASE 1: Database Setup**
Apply concepts from Day 1 – Getting Started with SQL and Databases and Day 2 – Tables and Schemas.

**Step 1: Create the Database**

CREATE DATABASE MovieRatingDB

**Step 2: Create the Tables**

Create three main tables based on relational logic:

1. Users Table
CREATE TABLE Users (...
2. Movies Table
CREATE TABLE Movies (...
3. Ratings Table
CREATE TABLE Ratings (...

**Step 3: Verify Your Schema**

Use the DESCRIBE command to confirm structure

## **PHASE 2: Insert and Explore Data**

Applying what I learned from Day 3 – Writing Your First SQL Queries (SELECT, FROM, WHERE).

**Step 1: Insert Sample Data**

Users Table
INSERT INTO Users (name, age, gender, location) VALUES (...
Movies Table
INSERT INTO Movies (title, release_year, genre, director) VALUES (...
Ratings Table
INSERT INTO Ratings (user_id, movie_id, rating_value, rating_date) VALUES (...

**Step 2: Write Basic Queries**

1. View all users
2. List all movies
3. View all ratings
4. Find movies rated by a specific user (bonus)

## **PHASE 3: Using Comparison and Logical Operators**

Applying Day 4 – Comparison and Logical Operators (>, <, =, BETWEEN, LIKE, AND, OR).

1. Find users older than 25
2. Find movies released between 2000 and 2020
3. Find female users from Abuja
4. Find movies that are not Sci-Fi
5. Find ratings greater than or equal to 4

## PHASE 4: Sorting, Filtering, and Pagination

Applying Day 5 – ORDER BY, DISTINCT, OFFSET, and LIMIT.

1. Sort movies by release year (newest first)
2. List distinct genres
3. Top 3 highest ratings
4. Skip the first 2 rows and display next 3
5. Sort users alphabetically


## 🗂️ Database Creation

```sql
CREATE DATABASE MovieRatingDB;
USE MovieRatingDB;
```

## **Tables Structure**

**Users Table**
```sql
CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    location VARCHAR(50)
);
```
**Movies Table**

```sql
CREATE TABLE Movies (
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(200),
    release_year INT,
    genre VARCHAR(50),
    director VARCHAR(100)
);
```
**Rating Table**

```sql
CREATE TABLE Ratings (
    rating_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    movie_id INT,
    rating_value INT,
    rating_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);
```
## **Verifying Schema**
```sql
DESCRIBE Users;
DESCRIBE Movies;
DESCRIBE Ratings;
```
## **PHASE 2: Basic Queries**
```sql
-- View all users
SELECT * FROM Users;

-- List all movies
SELECT * FROM Movies;

-- View all ratings
SELECT * FROM Ratings;


```
## **PHASE 3: Logical Operators**
```sql
-- Users older than 25
SELECT * FROM Users WHERE age > 25;

-- Movies released between 2000-2020
SELECT * FROM Movies WHERE release_year BETWEEN 2000 AND 2020;

-- Female users from Abuja
SELECT * FROM Users WHERE gender = 'Female' AND location = 'Abuja';

-- Non Sci-Fi movies
SELECT * FROM Movies WHERE genre != 'Sci-Fi';

-- Ratings >= 4
SELECT * FROM Ratings WHERE rating_value >= 4;
```
## **PHASE 4: Sorting & Pagination**
```sql
-- Newest movies first
SELECT * FROM Movies ORDER BY release_year DESC;

-- List unique genres
SELECT DISTINCT genre FROM Movies;

-- Top 3 highest ratings
SELECT * FROM Ratings ORDER BY rating_value DESC LIMIT 3;

-- Pagination (skip 2, show next 3)
SELECT * FROM Movies ORDER BY movie_id LIMIT 3 OFFSET 2;

-- Users alphabetically
SELECT * FROM Users ORDER BY name;
```
