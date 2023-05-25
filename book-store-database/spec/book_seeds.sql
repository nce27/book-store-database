TRUNCATE TABLE books RESTART IDENTITY; -- empties the table

INSERT INTO books (title, author_name) VALUES('Lord of the Flies', 'William Golding');
INSERT INTO books (title, author_name) VALUES('Brighton Rock', 'Graham Greene');