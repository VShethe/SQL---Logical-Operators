
# SQL: Logical Operators 





## Table of Content

**1. SQL: Logical Operators**
 - Not_Equal.sql
 - Not_Like.sql
 - Greater_than.sql
 - Less_than.sql
 - Logical_AND.sql
 - Logical_OR.sql
 - Between.sql
 - IN_NOT_IN.sql
 - CASE_Statements.sql
 - Logical_Operators_Exercise.sql
## Project Description

**Logical Operators:**

![1](https://user-images.githubusercontent.com/128286364/233298275-9dd62f41-56b7-4c9e-be26-ce046461a1c1.png)

**1. Not_Equal**

    SELECT
        title,
        CONCAT(author_fname, ' ', author_lname) AS 'author',
        released_year
    FROM books
    WHERE released_year != 2001
    ORDER BY released_year;
![2](https://user-images.githubusercontent.com/128286364/233298450-d337c78f-a485-489d-a6dc-a7b9d14e9a77.png)


**2. Not Like:**

    SELECT 
        title 
    FROM books 
    WHERE title NOT LIKE 'W%';
![3](https://user-images.githubusercontent.com/128286364/233298506-979a8400-dcc9-459b-9d13-450f1728d6a0.png)


**3. Greater Than:**

    SELECT 
        title, 
        released_year 
    FROM books 
    WHERE released_year > 2000 
    ORDER BY released_year;
![4](https://user-images.githubusercontent.com/128286364/233298631-099168a5-8319-42b8-be06-5be2dbda89d4.png)


**4. Less Than:**

    SELECT 
        title, 
        released_year 
    FROM books
    WHERE released_year <= 2000;
![5](https://user-images.githubusercontent.com/128286364/233298669-143e5898-3b43-456c-add2-c78a94b6ce76.png)


**5. Logical AND:**

    SELECT 
        title, 
        author_lname, 
        released_year 
    FROM books
    WHERE author_lname='Eggers' AND released_year > 2010;
	![6](https://user-images.githubusercontent.com/128286364/233299293-ed4f6cef-c2ce-45a4-9926-2ee52fec10cd.png)

    SELECT 
        title, 
        author_lname, 
        released_year 
    FROM books
    WHERE author_lname='Eggers' AND 
    released_year > 2010 AND
    title LIKE '%novel%';
![7](https://user-images.githubusercontent.com/128286364/233299377-73be14c6-531d-403b-8ffd-1b73759e76b9.png)

**6. Logical OR:**

    SELECT * FROM books
    WHERE author_lname='Eggers' || released_year > 2010 
    OR stock_quantity>100;
![8](https://user-images.githubusercontent.com/128286364/233299489-08a6dced-12eb-4cc6-b888-75692852cc67.png)

**7. Between:**

    SELECT 
        title, 
        released_year 
    FROM books 
    WHERE released_year BETWEEN 2004 AND 2015;
![9](https://user-images.githubusercontent.com/128286364/233299543-71867579-1003-4277-a5f2-456ee9b1a537.png)
    
**8. In And Not In:** 

    SELECT 
        title, 
        author_lname 
    FROM books
    WHERE author_lname IN ('Carver', 'Lahiri', 'Smith');
![10](https://user-images.githubusercontent.com/128286364/233299639-3f4a2eb7-0e69-444a-b7c5-0dabddd16df6.png)

    SELECT 
        title, 
        released_year 
    FROM books
    WHERE released_year >= 2000
    AND released_year 
    NOT IN (2000,2002,2004,2006,2008,2010,2012,2014,2016);
![11](https://user-images.githubusercontent.com/128286364/233299669-4c28656e-f7a3-4c42-b809-b4c59f18fb77.png)

    SELECT 
        title, 
        released_year 
    FROM books
    WHERE released_year >= 2000 
    AND released_year % 2 != 0 
    ORDER BY released_year;
![12](https://user-images.githubusercontent.com/128286364/233299699-5aa1e40b-c233-482a-90cd-5cc7cca532c0.png)

**9. Case Statements:**
    
    SELECT title, stock_quantity,
    CASE 
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
        WHEN stock_quantity BETWEEN 101 AND 150 THEN '***'
        ELSE '****'
    END AS STOCK
    FROM books;
![13](https://user-images.githubusercontent.com/128286364/233299726-77dc50d8-57d2-4036-946d-1096a80b3079.png)

## Installation

To run the program

mysq-ctl cli;
