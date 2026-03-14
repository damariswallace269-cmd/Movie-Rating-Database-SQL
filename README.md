# 🎬 Movie Rating Database SQL

This is a relational database project for managing movie ratings using MySQL, demonstrating fundamental SQL concepts from database creation to complex querying.

---

## 📋 Project Overview

This project involves building and exploring a movie rating system to understand how users rate movies, identify popular titles, and perform meaningful analysis using SQL statements across four progressive learning phases.

---

## 🗂️ Database Schema

### **📝 Project Phases & Key Queries**
## **PHASE 1: Database Setup**
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
