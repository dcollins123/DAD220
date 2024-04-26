--3.4 JOIN QUERIES
/*
Join coding exercise.
The SQL below creates Genre and Song tables, inserts some genres and songs, and performs an inner join.

Run the SQL. Verify the result table does not include songs with NULL genre or genres that are not associated with songs.

Make the following changes:

In the CREATE TABLE statement for Song, rename GenreCode to Code. Modify the SELECT statement to work with the new name. Run the SQL and verify the result table is unchanged.

Modify the SELECT statement to perform a left join. Run the SQL and verify the result table includes songs with NULL genre.

Modify the SELECT statement to perform a right join. Run the SQL and verify the result table includes genres that are not associated with any songs.

Combine the left and right joins into one statement that performs a full join. Run the SQL and verify the result table includes all songs and genres.

Hints: In steps 2 and 3, use keywords LEFT and RIGHT. In step 4, use keyword UNION, since MySQL does not support FULL JOIN. */

CREATE TABLE Genre (
  Code CHAR(3),
  Name VARCHAR(20),
  Description VARCHAR(200),
  PRIMARY KEY(Code)
);

CREATE TABLE Song (
  ID INT,
  Title VARCHAR(60),
  Artist VARCHAR(60),
  Code CHAR(3),
  PRIMARY KEY (ID),
  FOREIGN KEY (Code) REFERENCES Genre(Code)
);

INSERT INTO Genre VALUES
  ('CLA', 'Classical', 'Orchestral music composed and performed by professionally trained artists'),
  ('COU', 'Country', 'Developed mostly in southern USA, with roots in traditional folk music, spirituals and blues'),
  ('DRO', 'Drone', 'Minimalist music that emphasizes sustained or repeated sounds, notes, or tone clusters'),
  ('GRU', 'Grunge', 'Alternative rock inspired by hardcore punk, heavy metal, and indie rock'),
  ('PRC', 'Pop Rock', 'Rock music with less attitude'),
  ('RAB', 'R&B', 'Modern version of soul and funk African-American pop music'),
  ('TEC', 'Techno', 'Electronic music');

INSERT INTO Song VALUES
  (100, 'Hey Jude', 'Beatles', 'PRC'),
  (200, 'You Belong With Me', 'Taylor Swift', NULL),
  (300, 'Need You Now', 'Lady Antebellum', 'COU'),
  (400, 'Old Town Road', 'Lil Nas X', NULL),
  (500, 'That\'s The Way Love Goes', 'Janet Jackson', 'RAB'),
  (600, 'Even Flow', 'Pearl Jam', 'GRU');


SELECT *
FROM Song
LEFT JOIN Genre
ON Song.Code = Genre.Code
UNION
SELECT *
FROM Song
RIGHT JOIN Genre
ON Song.Code = Genre.Code;
