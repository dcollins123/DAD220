--2.2 TABLES 

--CHALLENGE
--Create product table with common data types:

create table Product (
   ID INT,
   Name  VARCHAR(40),
   ProductType varchar(3),
   OriginDate  date,
   Weight   decimal(6,1)
);

INSERT INTO Product (ID, Name, ProductType, OriginDate, Weight) VALUES 
  (100, 'Tricorder', 'TC', '2020-08-11', 2.4),
  (200, 'Food replicator', 'FOD', '2020-09-21', 54.2),
  (300, 'Cloaking device', 'CD', '2019-02-04', 177.9);

SELECT *
FROM Product;

--QUERIES: 
--SELECT *
--FROM Product;

/*-------------------------------------------------------------------------------*/

--2.3 CHALLENGE DATA TYPES 
-- Write your CREATE TABLE statement here:
create table Product (
   ID smallint,
   Name  VARCHAR(40),
   ProductType char(3),
   OriginDateTime  datetime,
   Weight   float
);


INSERT INTO Product (ID, Name, ProductType, OriginDateTime, Weight) VALUES 
  (100, 'Tricorder', 'COM', '2020-08-11 11:30:00', 2.4172),
  (200, 'Food replicator', 'FOD', '2020-09-21 14:00:00', 54.02),
  (300, 'Cloaking device', 'SPA', '2019-02-04 07:35:00', 19257.9);

SELECT *
FROM Product;


/*-------------------------------------------------------------------------------*/

--2.4 Selecting ROWS
--CHALLENGE

CREATE TABLE Movie (
  ID INT AUTO_INCREMENT,
  Title VARCHAR(100),
  Rating CHAR(5) CHECK (Rating IN ('G', 'PG', 'PG-13', 'R')),
  ReleaseDate DATE,
  PRIMARY KEY (ID)
);

INSERT INTO Movie (Title, Rating, ReleaseDate) VALUES
  ('Casablanca', 'PG', '1943-01-23'),
  ('Bridget Jones\'s Diary', 'PG-13', '2001-04-13'),
  ('The Dark Knight', 'PG-13', '2008-07-18'),
  ('Hidden Figures', 'PG', '2017-01-06'),
  ('Toy Story', 'G', '1995-11-22'),
  ('Rocky', 'PG', '1976-11-21'),
  ('Crazy Rich Asians', 'PG-13', '2018-08-15');

-- Modify the SELECT statement:
SELECT Title, ReleaseDate
FROM Movie 
WHERE Rating = 'PG-13' AND ReleaseDate > '2008-01-01';


/*-------------------------------------------------------------------------------*/


--2.5 NULL

CREATE TABLE Song (
  ID INT,
  Title VARCHAR(60),
  Artist VARCHAR(60),
  ReleaseYear INT
);

INSERT INTO Song VALUES
  (100, 'Hey Jude', 'Beatles', 1968),
  (200, NULL, 'Taylor Swift', 2008),
  (300, 'Need You Now', NULL, 2011),
  (400, 'That\'s The Way Love Goes', NULL, 1993),
  (500, NULL, 'Nirvana', 1991);

-- Modify the SELECT statement:
SELECT *
FROM Song
WHERE Title IS NULL;


/*-------------------------------------------------------------------------------*/

--2.5.11: Select songs with NULL title or artist
CREATE TABLE Song (
  ID INT,
  Title VARCHAR(60),
  Artist VARCHAR(60),
  ReleaseYear INT
);

INSERT INTO Song VALUES
  (100, 'Hey Jude', NULL, 1968),
  (200, 'When Doves Cry', 'Prince', 1997),
  (300, NULL, 'The Righteous Brothers', 1964),
  (400, 'Johnny B. Goode', 'Chuck Berry', 1958),
  (500, 'Smells Like Teen Spirit', NULL, 1991),
  (600, NULL, 'Aretha Franklin', 1967);

-- Modify the SELECT statement
SELECT *
FROM Song
WHERE Title IS NULL OR Artist IS NULL;
