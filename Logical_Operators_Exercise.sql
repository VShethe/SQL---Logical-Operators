SELECT 10 != 10;
SELECT 15 > 14 && 99 - 5 <= 94;
SELECT 1 IN (5,3) || 9 BETWEEN 8 AND 10;


SELECT * FROM books
WHERE released_year < 1980
ORDER BY released_year;

Select * FROM books
WHERE author_lname = 'Eggers' || author_lname = 'Chabon';

Select * FROM books
WHERE author_lname = 'Lahiri' AND
released_year > 2000
ORDER BY released_year;

Select * FROM books
WHERE pages BETWEEN 100 AND 200;

SELECT author_lname FROM books
WHERE author_lname LIKE 'C%' OR
 author_lname LIKE 'S%';
 
 
 
SELECT title,author_lname,
	CASE
	WHEN title LIKE '%stories%' THEN 'short stories'
	WHEN title = 'Just Kids' OR title = 'A Heartbreaking Work of Staggering Genius' THEN 'Memoir'
	ELSE 'Novel'
	END AS 'Type'
FROM books;


SELECT title, author_fname, author_lname,
	CASE
	WHEN COUNT(author_lname ) = 2 THEN '2 books'
	WHEN COUNT(author_lname ) = 3 THEN '3 books'
	ELSE '1 book'
	END AS COUNT
FROM books
GROUP BY author_lname, author_fname;

OR

SELECT author_fname, author_lname,
    CASE 
        WHEN COUNT(*) = 1 THEN '1 book'
        ELSE CONCAT(COUNT(*), ' books')
    END AS COUNT
FROM books 
GROUP BY author_lname, author_fname;