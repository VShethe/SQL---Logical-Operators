SELECT title FROM books WHERE released_year = 2017;
 
SELECT title FROM books WHERE released_year != 2017;
 
SELECT title, author_lname FROM books;
 
SELECT title, author_lname FROM books WHERE author_lname = 'Harris';
 
SELECT title, author_lname FROM books WHERE author_lname != 'Harris';



SELECT
  title,
  CONCAT(author_fname, ' ', author_lname) AS 'author',
  released_year
FROM books
WHERE released_year != 2001
ORDER BY released_year;