-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`
DROP table if exists cats;

CREATE table cats (
  id BIGINT GENERATED ALWAYS AS IDENTITY,
  name VARCHAR NOT NULL,
  type VARCHAR NOT NULL,
  url VARCHAR NOT NULL,
  year INT,
  lives INT,
  isSidekick BOOLEAN
);

INSERT INTO cats (name, type, url, year, lives, isSidekick) VALUES
('Felix', 'Tuxedo', 'https://tinyurl.com/mry65afd', 1892, 3, false),
('Garfield', 'Orange Tabby', 'https://tinyurl.com/mry65afd', 1978, 7, false),
('Douchess', 'Angora', 'https://tinyurl.com/mry65afd', 1970, 9, false),
('Stimpy', 'Manx', 'https://tinyurl.com/mry65afd', 1990, 1, true),
('Sylvester', 'Tuxedo', 'https://tinyurl.com/mry65afd', 1945, 1, true),
('Tigger', 'Tigger (only one)', 'https://tinyurl.com/mry65afd', 1928, 8, false),
('Hello Kitty', 'Angora', 'https://tinyurl.com/mry65afd', 1974, 9, false),
('Hobbes', 'Tiger', 'https://tinyurl.com/mry65afd', 1985, 6, true);