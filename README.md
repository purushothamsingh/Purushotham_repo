# sql_basics
								Data base 
-------------------------------------------------------------------------------------------------------------------------
show databases;
create database <databaseName>
drop database<dataBaseName>
use <DataBaseName>

To see current dataBase()-----> select 

USE <database name>;
 
-- example:
USE dog_walking_app;
 
SELECT database();
---------------------------
CREATE TABLE tablename
  (
    column_name data_type,
    column_name data_type
  );
CREATE TABLE cats
  (
    name VARCHAR(100),
    age INT
  );
--------------------------------
SHOW TABLES;
 
SHOW COLUMNS FROM tablename;
 
DESC tablename;

--------------------------------------------
CREATE TABLE pastries
  (
    name VARCHAR(50),
    quantity INT
  );
 
SHOW TABLES;
 
DESC pastries;
 
DROP TABLE pastries;
==================================
CREATE TABLE cats4
  (
    name VARCHAR(20) NOT NULL DEFAULT 'unnamed',
    age INT NOT NULL DEFAULT 99
  );
====================================
CREATE TABLE unique_cats2 (
    cat_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
);

  
SELECT author_fname, author_lname FROM books;
 
CONCAT(x,y,z) // from slides
 
CONCAT(column, anotherColumn) // from slides
 
CONCAT(author_fname, author_lname)
 
CONCAT(column, 'text', anotherColumn, 'more text')
 
CONCAT(author_fname, ' ', author_lname)
 
CONCAT(author_fname, author_lname); // invalid syntax
 
SELECT CONCAT('Hello', 'World');
 
SELECT CONCAT('Hello', '...', 'World');
 
SELECT
  CONCAT(author_fname, ' ', author_lname)
FROM books;
 
SELECT
  CONCAT(author_fname, ' ', author_lname)
  AS 'full name'
FROM books;
 
SELECT author_fname AS first, author_lname AS last, 
  CONCAT(author_fname, ' ', author_lname) AS full
FROM books;
 
SELECT author_fname AS first, author_lname AS last, 
  CONCAT(author_fname, ', ', author_lname) AS full
FROM books;
 
SELECT CONCAT(title, '-', author_fname, '-', author_lname) FROM books;
 
SELECT 
    CONCAT_WS(' - ', title, author_fname, author_lname) 
SELECT SUBSTRING('Hello World', 1, 4);
 
SELECT SUBSTRING('Hello World', 7);
 
SELECT SUBSTRING('Hello World', 3, 8);
 
SELECT SUBSTRING('Hello World', 3);
 
SELECT SUBSTRING('Hello World', -3);
 
SELECT SUBSTRING('Hello World', -7);
 
SELECT title FROM books;
 
SELECT SUBSTRING("Where I'm Calling From: Selected Stories", 1, 10);
 
SELECT SUBSTRING(title, 1, 10) FROM books;
 
SELECT SUBSTRING(title, 1, 10) AS 'short title' FROM books;
 
SELECT SUBSTR(title, 1, 10) AS 'short title' FROM books;
 
SELECT CONCAT
    (
        SUBSTRING(title, 1, 10),
        '...'
    )
FROM books;
 
source book_code.sql
 
SELECT CONCAT
    (
        SUBSTRING(title, 1, 10),
        '...'
    ) AS 'short title'
FROM books;
 
SELECT REPLACE('Hello World', 'Hell', '%$#@');
 
SELECT REPLACE('Hello World', 'l', '7');
 
SELECT REPLACE('Hello World', 'o', '0');
 
SELECT REPLACE('HellO World', 'o', '*');
 
SELECT
  REPLACE('cheese bread coffee milk', ' ', ' and ');
 
SELECT REPLACE(title, 'e ', '3') FROM books;
 
-- SELECT
--    CONCAT
--    (
--        SUBSTRING(title, 1, 10),
--        '...'
--    ) AS 'short title'
-- FROM books;
 
SELECT
    SUBSTRING(REPLACE(title, 'e', '3'), 1, 10)
FROM books;
 
SELECT
    SUBSTRING(REPLACE(title, 'e', '3'), 1, 10) AS 'weird string'
FROM books;
SELECT CHAR_LENGTH('Hello World');
 
SELECT author_lname, CHAR_LENGTH(author_lname) AS 'length' FROM books;
 
SELECT CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname), ' characters long') FROM books;
SELECT UPPER('Hello World');
 
SELECT LOWER('Hello World');
 
SELECT UPPER(title) FROM books;
 
SELECT CONCAT('MY FAVORITE BOOK IS ', UPPER(title)) FROM books;
 
SELECT CONCAT('MY FAVORITE BOOK IS ', LOWER(title)) FROM books; 	


SELECT author_lname FROM books;
 
SELECT DISTINCT author_lname FROM books;
 
SELECT author_fname, author_lname FROM books;
 
SELECT DISTINCT CONCAT(author_fname,' ', author_lname) FROM books;
 
SELECT DISTINCT author_fname, author_lname FROM books;
CODE: Sorting Data with ORDER BY
SELECT author_lname FROM books;
 
SELECT author_lname FROM books ORDER BY author_lname;
 
SELECT title FROM books;
 
SELECT title FROM books ORDER BY title;
SELECT author_lname FROM books ORDER BY author_lname DESC;
 
SELECT released_year FROM books;
 
SELECT released_year FROM books ORDER BY released_year;
 
SELECT released_year FROM books ORDER BY released_year DESC;
 
SELECT released_year FROM books ORDER BY released_year ASC;
 
SELECT title, released_year, pages FROM books ORDER BY released_year;
 
SELECT title, pages FROM books ORDER BY released_year;
 
SELECT title, author_fname, author_lname 
FROM books ORDER BY 2;
 
SELECT title, author_fname, author_lname 
FROM books ORDER BY 3;
 
SELECT title, author_fname, author_lname 
FROM books ORDER BY 1;
 
SELECT title, author_fname, author_lname 
FROM books ORDER BY 1 DESC;
 
SELECT author_lname, title
FROM books ORDER BY 2;
 
SELECT author_fname, author_lname FROM books 
ORDER BY author_lname, author_fname;



SELECT title FROM books LIMIT 3;
 
SELECT title FROM books LIMIT 1;
 
SELECT title FROM books LIMIT 10;
 
SELECT * FROM books LIMIT 1;
 
SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 5;
 
SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 1;
 
SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 14;
 
SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 0,5;
 
SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 0,3;
 
SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 1,3;
 
SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 10,1;
 
SELECT * FROM tbl LIMIT 95,18446744073709551615;
 
SELECT title FROM books LIMIT 5;
 
SELECT title FROM books LIMIT 5, 123219476457;
 
SELECT title FROM books LIMIT 5, 50;

SELECT title, stock_quantity FROM books;
 
SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '____';
 
SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '__';
 
(235)234-0987 LIKE '(___)___-____'
 
SELECT title FROM books;
 
SELECT title FROM books WHERE title LIKE '%\%%'
 
SELECT title FROM books WHERE title LIKE '%\_%'

SELECT title, author_lname FROM books;
 
SELECT title, author_lname FROM books
GROUP BY author_lname;
 
SELECT author_lname, COUNT(*) 
FROM books GROUP BY author_lname;
 
 
SELECT title, author_fname, author_lname FROM books;
 
SELECT title, author_fname, author_lname FROM books GROUP BY author_lname;
 
SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname;
 
SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname, author_fname;
 
SELECT released_year FROM books;
 
SELECT released_year, COUNT(*) FROM books GROUP BY released_year;
 
SELECT CONCAT('In ', released_year, ' ', COUNT(*), ' book(s) released') AS year FROM books GROUP BY released_year;
SELECT AVG(released_year) 
FROM books;
 
SELECT AVG(pages) 
FROM books;
 
SELECT AVG(stock_quantity) 
FROM books 
GROUP BY released_year;
 
SELECT released_year, AVG(stock_quantity) 
FROM books 
GROUP BY released_year;
 
SELECT author_fname, author_lname, AVG(pages) FROM books
GROUP BY author_lname, author_fname;


SELECT name, birthdate FROM people;
 
SELECT name, DAY(birthdate) FROM people;
 
SELECT name, birthdate, DAY(birthdate) FROM people;
 
SELECT name, birthdate, DAYNAME(birthdate) FROM people;
 
SELECT name, birthdate, DAYOFWEEK(birthdate) FROM people;
 
SELECT name, birthdate, DAYOFYEAR(birthdate) FROM people;
 
SELECT name, birthtime, DAYOFYEAR(birthtime) FROM people;
 
SELECT name, birthdt, DAYOFYEAR(birthdt) FROM people;
 
SELECT name, birthdt, MONTH(birthdt) FROM people;
 
SELECT name, birthdt, MONTHNAME(birthdt) FROM people;
 
SELECT name, birthtime, HOUR(birthtime) FROM people;
 
SELECT name, birthtime, MINUTE(birthtime) FROM people;
 
SELECT CONCAT(MONTHNAME(birthdate), ' ', DAY(birthdate), ' ', YEAR(birthdate)) FROM people;
 
SELECT DATE_FORMAT(birthdt, 'Was born on a %W') FROM people;
 
SELECT DATE_FORMAT(birthdt, '%m/%d/%Y') FROM people;
 
SELECT DATE_FORMAT(birthdt, '%m/%d/%Y at %h:%i') FROM people;

SELECT title, released_year,
       CASE 
         WHEN released_year >= 2000 THEN 'Modern Lit'
         ELSE '20th Century Lit'
       END AS GENRE
FROM books;
 
SELECT title, stock_quantity,
    CASE 
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
        ELSE '***'
    END AS STOCK
FROM books;
 
SELECT title,
    CASE 
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
        ELSE '***'
    END AS STOCK
FROM books;
 
SELECT title, stock_quantity,
    CASE 
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
        WHEN stock_quantity BETWEEN 101 AND 150 THEN '***'
        ELSE '****'
    END AS STOCK
FROM books;
 
SELECT title, stock_quantity,
    CASE 
        WHEN stock_quantity <= 50 THEN '*'
        WHEN stock_quantity <= 100 THEN '**'
        ELSE '***'
    END AS STOCK
FROM books; 


select title, author_lname ,concat(
 count(*) , case 
 when count(*) =1 then " book" 
 else " books"
 end )as count from books group by author_lname ,author_fname 
order by author_lname;
CREATE TABLE customers(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100)
);
CREATE TABLE orders(
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customers(id)
);
-- Inserting some customers and orders

INSERT INTO customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016/02/10', 99.99, 1),
       ('2017/11/11', 35.50, 1),
       ('2014/12/12', 800.67, 2),
       ('2015/01/03', 12.50, 2),
       ('1999/04/11', 450.25, 5);




SELECT 
    IFNULL(first_name,'MISSING') AS first, 
    IFNULL(last_name,'USER') as last, 
    order_date, 
    amount, 
    SUM(amount)
FROM customers
RIGHT JOIN orders
    ON customers.id = orders.customer_id
GROUP BY first_name, last_name;
-- WORKING WITH ON DELETE CASCADE

CREATE TABLE customers(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100)
);
 
CREATE TABLE orders(
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY(customer_id) 
        REFERENCES customers(id)
        ON DELETE CASCADE
);
 
 
INSERT INTO customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016/02/10', 99.99, 1),
       ('2017/11/11', 35.50, 1),
       ('2014/12/12', 800.67, 2),
       ('2015/01/03', 12.50, 2),
       ('1999/04/11', 450.25, 5);




