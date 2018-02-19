SELECT 10!=10;
SELECT 15>14 && 99-5 <= 94;
SELECT 1 IN (5,3) || 9 BETWEEN 8 AND 10;

USE book_shop;
SELECT title, released_year FROM books WHERE released_year < 1980;

SELECT title, author_lname FROM books WHERE author_lname IN ('Eggers', 'Chabon');

SELECT title, author_lname,released_year FROM books 
WHERE author_lname = 'Lahiri' && released_year > 2000;

SELECT title, pages FROM books WHERE pages BETWEEN 100 AND 200;

SELECT title, author_lname FROM books 
WHERE author_lname LIKE 'C%' || author_lname LIKE 'S%';

SELECT title, author_lname, 
CASE 
    WHEN title LIKE '%stories%' THEN 'Short Stories'
    WHEN title LIKE '%Just Kids%' OR title LIKE '%A Heartbreaking Work%' THEN 'Memoir'
    ELSE 'Novel'
END AS TYPE 
FROM books; 

SELECT title, author_fname, author_lname, 
CASE
    WHEN COUNT(*)=1 THEN '1 book'
    ELSE CONCAT(COUNT(*),'','books')
END AS COUNT
FROM books GROUP BY author_lname, author_fname; 



