## 🎬 Movie Ratings Database
A simple project that shows how to organize and explore movie ratings using a database.

## 📋 What This Project Does
This project creates a system to track movie ratings from different users. Think of it like a notebook where you record:

Who the users are

What movies exist

How users rated those movies

The goal is to practice organizing information and answering questions like:

Which movies have the highest ratings?

What kind of movies do people like?

Who are the most active users?

## 📝 What I Learned to Do
Phase 1: Setting Up
Created a place to store all the information — like setting up a new filing system.

Phase 2: Adding Information
Filled the system with sample users, movies, and ratings — like writing entries into the notebook.

Phase 3: Finding Answers
Learned how to ask questions about the data, such as:

Who is older than 25?

Which movies came out between 2000 and 2020?

What movies are not Sci-Fi?

Phase 4: Organizing Results
Practiced sorting and filtering information, like:

Listing movies from newest to oldest

Seeing only the top 3 highest-rated movies

Skipping the first few results to see the next ones

## 🗂️ How the Information Is Organized
The system has three notebooks (tables):

Users — Stores names, ages, locations of people rating movies

Movies — Stores movie titles, release years, genres, directors

Ratings — Connects users to movies and stores their ratings

## 🔍 Example Questions I Can Answer
Once the system is set up, I can ask:

Show me all users

List every movie

What did a specific user rate?

Who are the female users from Abuja?

What are the top 3 highest ratings?

Show me movies starting from the 3rd one

## 🛠️ Built With
MySQL — a popular database system for organizing information

Basic SQL — a language used to talk to databases

## 🎯 Why This Project Matters
This project shows how real-world applications (like Netflix or IMDb) might store and organize ratings behind the scenes. It's a simple version of how companies track what users like and recommend movies based on ratings.

## 🗂️ Database Creation

```sql
DROP DATABASE IF EXISTS MovieRatingDB;
CREATE DATABASE MovieRatingDB;
USE MovieRatingDB;
```
<img width="331" height="80" alt="image" src="https://github.com/user-attachments/assets/af5d5756-1487-464b-8ed2-d2bcd9567b2a" />

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
<img width="235" height="172" alt="image" src="https://github.com/user-attachments/assets/73db9e3e-568b-4a5c-b04d-280035bf625f" />

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
<img width="230" height="167" alt="image" src="https://github.com/user-attachments/assets/f4b56196-8c0d-4f28-b4fa-da5ff56e7092" />

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
<img width="387" height="214" alt="image" src="https://github.com/user-attachments/assets/9ba2b8d0-9c9d-481f-b4dd-d6bc5c83fd40" />

## **Verifying Schema**
```sql
DESCRIBE Users;
DESCRIBE Movies;
DESCRIBE Ratings;
```
<img width="502" height="246" alt="image" src="https://github.com/user-attachments/assets/3f1bcc25-6498-4277-ac66-640a61fd96b8" />
<img width="468" height="271" alt="image" src="https://github.com/user-attachments/assets/13e80021-ea93-4074-a582-4292f1317211" />
<img width="469" height="243" alt="image" src="https://github.com/user-attachments/assets/a631562e-8686-4f5e-821c-dd56ede31cb3" />

## **PHASE 2(Step 1): Insert Sample Data**
```sql
-- 1. Insert Users Data
INSERT INTO Users (User_Id, Name, Age, Gender, Location) VALUES
-- 2. Insert Movies Data
INSERT INTO Movies (ID, Title, Release_Year, Genre, Director) VALUES
-- 3. Insert Ratings Data
INSERT INTO Ratings (User_ID, Movie_ID, Rating_Value, Rating_Date) VALUES
## **PHASE 2(Step 2): Basic Queries**
```
<img width="646" height="852" alt="image" src="https://github.com/user-attachments/assets/2cd16fbe-e8bf-42ac-8b56-0b0162a58425" />
<img width="474" height="251" alt="image" src="https://github.com/user-attachments/assets/3ae5e825-8329-4976-9fec-5269e4eb0cc2" />



<img width="577" height="506" alt="image" src="https://github.com/user-attachments/assets/0f1cb94b-08f2-466b-a62f-c827ff1ac24a" />

<img width="599" height="858" alt="image" src="https://github.com/user-attachments/assets/6bf9901e-5ffa-4eeb-af54-0791b2087c55" />

```sql
-- View all users
SELECT * FROM Users;
```
<img width="735" height="521" alt="image" src="https://github.com/user-attachments/assets/d2e70f48-b341-42b3-b6da-b3b47018a818" />

```sql
-- List all movies
SELECT * FROM Movies;
```
<img width="657" height="518" alt="image" src="https://github.com/user-attachments/assets/466860ab-2203-4a7d-9941-eb24be2eec42" />

```sql
-- View all ratings
SELECT * FROM Ratings;
```
<img width="503" height="523" alt="image" src="https://github.com/user-attachments/assets/13537f66-e020-4e47-91d7-c454265a184a" />

```sql
--Find movies rated by a specific user (bonus)
SELECT m.Title, m.Release_Year, m.Genre, r.Rating_Value, r.Rating_Date
FROM Movies m, Ratings r
WHERE m.ID = r.Movie_ID
  AND r.User_ID = 1;
```
<img width="506" height="318" alt="image" src="https://github.com/user-attachments/assets/eda81084-fd41-4874-90fa-c86afab9b146" />

## **PHASE 3: Logical Operators**
```sql
-- Users older than 25
SELECT * FROM Users WHERE age > 25;
```
<img width="642" height="738" alt="image" src="https://github.com/user-attachments/assets/a374eaa2-c546-4454-a199-cef935f66729" />

```sql
-- Movies released between 2000-2020
SELECT * FROM Movies WHERE release_year BETWEEN 2000 AND 2020;
```
<img width="539" height="409" alt="image" src="https://github.com/user-attachments/assets/ab5047bf-8f20-4e49-a601-02b5b4047f96" />

```sql
-- Female users from Abuja
SELECT * FROM Users WHERE gender = 'Female' AND location = 'Abuja';
```
<img width="634" height="430" alt="image" src="https://github.com/user-attachments/assets/3d1bf3c0-f048-4da9-8d05-fa780a5d29e3" />

```sql
-- Non Sci-Fi movies
SELECT * FROM Movies WHERE genre != 'Sci-Fi';
```
<img width="588" height="511" alt="image" src="https://github.com/user-attachments/assets/993f8422-9c13-4066-9819-e5decb5ef53e" />

```sql
-- Ratings >= 4
SELECT * FROM Ratings WHERE rating_value >= 4;
```
<img width="644" height="749" alt="image" src="https://github.com/user-attachments/assets/9862c65b-0bc8-4c9f-9fb0-65b9e53d8876" />

## **PHASE 4: Sorting & Pagination**
```sql
-- Newest movies first
SELECT * FROM Movies ORDER BY release_year DESC;
```
<img width="741" height="611" alt="image" src="https://github.com/user-attachments/assets/e9e170fe-40d6-497f-afba-b8de111b015d" />

```sql
-- List unique genres
SELECT DISTINCT genre FROM Movies;
```
<img width="427" height="382" alt="image" src="https://github.com/user-attachments/assets/1b63280a-67f3-45ed-b56a-f3188def33ae" />

```sql
-- Top 3 highest ratings
SELECT * FROM Ratings ORDER BY rating_value DESC LIMIT 3;
```
<img width="460" height="316" alt="image" src="https://github.com/user-attachments/assets/d2dfff58-b3ea-4245-b16c-e930996a47d3" />

```sql
-- Pagination (skip 2, show next 3)
SELECT * FROM Movies ORDER BY movie_id LIMIT 3 OFFSET 2;
```
<img width="532" height="329" alt="image" src="https://github.com/user-attachments/assets/c700087c-fc89-4637-9e82-ab6870b8f76f" />

```sql
-- Users alphabetically
SELECT * FROM Users ORDER BY name;
```
<img width="550" height="350" alt="image" src="https://github.com/user-attachments/assets/6375488c-b3e1-44dd-82fc-29dfc122e352" />

## **Complete Action Output**

<img width="1704" height="729" alt="image" src="https://github.com/user-attachments/assets/7cb74c3d-cfcf-4046-a218-0b0ef6b8d865" />
