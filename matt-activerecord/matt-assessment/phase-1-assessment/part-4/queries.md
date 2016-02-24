Paste your queries and results in this file
================================================================================


## Release 0
show all the books
```sql
SELECT * FROM books;
```

show all the publishers
```sql
SELECT * FROM publishers;
```

show all the authors
```sql
SELECT * FROM books;
```

## Release 1
show all the books containing "Ruby" in the title
```sql
SELECT * FROM books WHERE title LIKE '%Ruby%';
```
show all the authors with a name starting with "Dav"
```sql
SELECT * FROM authors WHERE name LIKE 'Dav%';
```

## Release 2
show all the books published by "Addison-Wesley"
```sql
SELECT * FROM books
JOIN publishers ON publishers.id = books.publisher_id
WHERE publishers.name = 'Addison-Wesley';
```

show all the books authored by "Jonathan Penn"
```sql
select * FROM books
JOIN authors ON authors.id = books.author_id
WHERE authors.name = 'Jonathan Penn';
```

show all the publishers where the book title contains "iOS"
```sql
SELECT * FROM publishers
JOIN books ON books.publisher_id = publishers.id
WHERE books.title LIKE '%iOS%';
```

show all the publishers for the author "Sandi Metz"
```sql
SELECT publishers.name FROM publishers
JOIN books ON books.publisher_id = publishers.id
JOIN authors on authors.id = books.author_id
WHERE authors.name = 'Sandi Metz';
```

## Release 3
add a new author to the authors table
```sql
INSERT INTO authors (name) VALUES ('Matthew Baquerizo');
```

add a new publisher to the publishers table
```sql
INSERT INTO publishers (name) VALUES ('McGrawHill');
```

add a new book to the books table with the new author and publisher you created in release 3
```sql
INSERT INTO books (title, author_id, publisher_id)
VALUES ('HELLO WORLD', '16', '8');
```

## Release 4
update the author named "David Black" to "David A. Black"
```sql
UPDATE authors
SET name = 'David A. Black'
WHERE name = 'David Black';
```

## Release 5
Delete the book created in Release 3
```sql
DELETE FROM books WHERE id = '21';
```

Delete the author created in Release 3
```sql
DELETE FROM authors WHERE name = 'Matthew Baquerizo';
```

Delete the publisher created in Release 3
```sql
DELETE FROM publishers WHERE name = 'McGrawHill';
```
