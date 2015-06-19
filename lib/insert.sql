INSERT INTO series (title, author_id, subgenre_id)
VALUES ('Lord of the Rings', 1, 1), ('The Godfather', 2, 2);

INSERT INTO books (title, year, series_id)
VALUES ('The Fellowship of the Ring', 1975, 1),
('Don Corleone Returns', 1935, 2),
('The Two Towers', 1977, 1),
('The Mists of Avalon', 1990, 1),
('Lord of the Ring', 1985, 1),
('The Fellowship of the Ring', 1975, 1);

INSERT INTO characters (name, species, motto, series_id, author_id)
VALUES
('Rainbow', 'Unicorn', 'I''m a unicorn', 1, 1),
('Don Corleon', 'Human', 'I''ll give you an offer you can''t refuse', 2, 2),
('Frodo', 'Hobbit', 'Help Sam', 1, 1),
('Rainbow', 'Unicorn', 'I''m a unicorn', 1, 1),
('The Godfather', 'Human', 'I am a gangster', 2, 2),
('King Arthur', 'Human', 'Knight of the Round Table', 1, 1),
('Big Giant', 'Giant', 'Jack and the Beanstalk', 1, 1),
('Sam', 'Hobbit', 'I help Frodo', 1, 1);


INSERT INTO authors (name)
VALUES ('J.R.R. Tolkien'), ('Mario Puzo');

INSERT INTO subgenres (name)
VALUES ('Fantasty'), ('Crime Fiction');

INSERT INTO character_books (book_id, character_id)
VALUES (1, 3),
(1, 7),
(1, 1),
(2, 2),
(2, 5),
(4, 1),
(4, 1),
(4, 1),
(4, 1),
(4, 1),
(4, 1),
(4, 1),
(4, 1),
(4, 1),
(4, 1),
(4, 1);
