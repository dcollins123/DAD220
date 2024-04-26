--3.1 PRIMARY KEYS


CREATE TABLE Movie (
  ID INT AUTO_INCREMENT,
  Title VARCHAR(100),
  Rating CHAR(5) CHECK (Rating IN ('G', 'PG', 'PG-13', 'R')),
  ReleaseDate DATE,
  PRIMARY KEY (ID)
);

INSERT INTO Movie (Title, Rating, ReleaseDate) VALUES
   ('Raiders of the Lost Ark', 'PG', '1981-06-15'),
   ('The Godfather', 'R', '1972-03-24'),
   ('The Pursuit of Happyness', 'PG-13', '2006-12-15');



SELECT *
FROM Movie;

/*-------------------------------------------------------------------------------*/

--3.2 FOREIGN KEYS

-- Add a primary key
CREATE TABLE Album (
  ID INT,
  Title VARCHAR(60),
  ReleaseYear INT,
  PRIMARY KEY (ID)
);

-- Add primary and foreign keys
CREATE TABLE Song (
  ID INT,
  Title VARCHAR(60),
  Artist VARCHAR(60),
  AlbumID INT,
  PRIMARY KEY (ID),
  FOREIGN KEY (AlbumID) REFERENCES Album (ID)
);

SHOW COLUMNS
FROM Album;

SHOW COLUMNS
FROM Song;

/*-------------------------------------------------------------------------------*/

