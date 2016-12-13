DROP TABLE IF EXISTS artists;
DROP TABLE IF EXISTS songs;

CREATE TABLE artists (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  nationality VARCHAR(255),
  image_url INTEGER
);

CREATE TABLE songs (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  album INTEGER,
  preview_url VARCHAR,
  artist_id INTEGER
);
