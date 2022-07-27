-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`
DROP table if exists cats;

CREATE table cats (
  id BIGINT GENERATED ALWAYS AS IDENTITY,
  name VARCHAR NOT NULL,
  type VARCHAR NOT NULL,
  year INT,
  lives INT,
  isSidekick BOOLEAN NOT NULL
);

INSERT INTO cats (name, type, year, lives, isSidekick) VALUES
('Felix', 'Tuxedo', 1892, 3, false),
('Garfield', 'Orange Tabby', 1978, 7, false),
('Douchess', 'Angora', 1970, 9, false),
('Stimpy', 'Manx', 1990, 1, true),
('Sylvester', 'Tuxedo', 1945, 1, true),
('Tigger', 'Tigger (only one)', 1928, 8, false),
('Hello Kitty', 'Angora', 1974, 9, false),
('Hobbes', 'Tiger', 1985, 6, true);