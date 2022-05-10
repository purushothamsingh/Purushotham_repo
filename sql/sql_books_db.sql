show databases;
use employee;
CREATE TABLE books 
	(
		book_id INT NOT NULL AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

select * from books;
select author_fname , author_lname from books;
select concat(author_fname,' ',author_lname) as fullname from books;
select concat_ws(' ', author_fname, author_lname) as full from books;
select title as tie from books;
select replace(title ,' ','->') as mytitle from books;
select author_lname as forword , reverse(author_lname) as backword from books;
select title as book_title ,char_length(title) as length from books;
select  concat(substring(title,1,10),'...') as short_title , concat(author_fname,' ',author_lname) as
author, concat(stock_quantity,' in stock') as stock from books ;
INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
select * from books order by title limit 5;
select author_fname,title from books where author_fname like 'da%';
select stock_quantity ,title from books where stock_quantity like '__4';
select stock_quantity ,title from books where stock_quantity like '____';
select stock_quantity ,title from books where stock_quantity like '1__';
select title from books where title like '%\%%';
select title from books where title like '%stories%' ;
select * from books;
select title , pages from books order by pages desc limit 1;
select title ,released_year from books order by released_year desc limit 3;
SELECT title , author_lname from books where author_lname like '% %';
select title ,author_lname from books order by author_lname,title;
select concat("MY FAVOURITE AUTHOR IS ",author_fname,author_lname) as yell from books order by author_lname;
select count(*)  as count from books;
select count(distinct author_fname) as authorsurname from books;
select count( distinct author_fname ,author_lname) from books;
select title from books where title like '%the%'; 
select *, count(*) from books  group by author_fname, author_lname order by author_lname ;

select title , released_year, count(*) as released_books_year from books group by released_year order by released_year ;
select released_year, author_lname , min(released_year) from books group by author_lname;
select author_lname, author_fname , released_year,sum(pages) as total_pages from  books group by author_lname ,author_fname order by released_year desc ;
select count(title) from books;
select  released_year, count(title), title from books group by released_year;
select concat(author_fname," ",author_lname) as full_name, max(pages) from books group by author_lname, author_fname;

select released_year as years , count(*) as books, avg(pages) as avg_pages
from books group by years order by years ;
select * from books;
select title, author_lname , released_year,stock_quantity from books 
where released_year >=2000 and stock_quantity >30 order by released_year desc , stock_quantity desc;
select title, released_year ,
case when released_year>2000 then "Modern Lit"
else "20th Century"
end as Genre
from books;
select 10 != 10;
select 15>14 and 99-5 ;
select 3 in (5,3);
select title , released_year from books where released_year <1980;
select  title , author_lname  ,
case 
when title like '%stories%' then "shortstories"
when title like '%just kids%'then 'memoir'
else 'novels'
end as type
from books;
select title, author_lname ,concat(
 count(*) , case 
 when count(*) =1 then " book" 
 else " books"
 end )as count from books group by author_lname ,author_fname 
order by author_lname;




select max(salary*months) as earnings,
 concat("  ",(select count(*) from employee where salary*months = 
 (select max(salary*months) from employee ))) from employee;

 
 select sqrt(
 ((select min(lat_n) from station) - (select max(lat_n) from station))*
 ((select min(lat_n) from station) - (select max(lat_n) from station))+
  ((select min(long_w) from station) -  (select max(long_n) from station)) * 
  ((select min(long_w) from station) -  (select max(long_n) from station))
 ) from station;

select 
case 
when count(lat_n) %2  = 0  then (select substr(lat_n,count(lat_n) %2,count(lat_n) %2) 
from station)
else (select substr(lat_n,count(lat_n) %2 + 1,count(lat_n) %2 + 1) from station) 
end  from station





