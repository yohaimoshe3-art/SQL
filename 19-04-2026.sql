--------------------------------------------------------(QUESTION 1)--------------------------------------------------------
  
CREATE TABLE movies(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	title TEXT NOT NULL,
	genre TEXT NOT NULL,
	year INT NOT NULL,
	rating REAL NOT NULL,
	minutes INT NOT NULL
);

INSERT INTO movies(title, genre, year, rating, minutes)
VALUES
('Metro Rush',	'Action',	2005,	7.9,	118),
('Quiet Lake',	'Drama',	2012,	8.1	,124),
('Night Pulse',	'Horror',	2018,	6.8	,95),
('Skyline Code', 'Action',	2021,	7.4	,109);

--1)
SELECT 
  title AS movie_name,
  genre AS type,
  year AS release_year
FROM movies;

--2)
SELECT *, rating * 10 AS rating_bucket
FROM movies;

--3)
SELECT *, title AS "movie name",
rating * 10 AS "rating bucket"
FROM movies 
ORDER BY "rating bucket" DESC, "movie name";

--4)
SELECT  
	title,
	rating
FROM movies;
--The version with aliases is more readable because the column names are clearer.

--------------------------------------------------------(QUESTION 2)--------------------------------------------------------

CREATE TABLE movies(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	title TEXT NOT NULL,
	genre TEXT NOT NULL,
	year INT NOT NULL,
	language TEXT NOT NULL
);

INSERT INTO movies(title, genre, year, language)
VALUES
('Metro Rush',	'Action',	2005,	'English'),
('Quiet Lake',	'Drama', 2012,	'English'),
('Night Pulse',	'Horror',	2018,	'Spanish'),
('Skyline Code',	'Action',	2021,	'English'),
('Tiny Planet', 'Family',	2010, 'French'),
('Silver Track',	'Thriller',	2016,	'Spanish'),
('Golden Path',	'Drama',	2016,	'French');

--1)
SELECT DISTINCT language
FROM movies;

--2)
SELECT DISTINCT year
FROM movies
WHERE genre IN ('Drama', 'Action');

--3)
SELECT genre, language
FROM movies
ORDER BY language;

--4)
SELECT COUNT(DISTINCT genre)
FROM movies;

