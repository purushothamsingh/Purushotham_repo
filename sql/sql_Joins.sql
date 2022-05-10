show databases;
create database joins_related_db;
use joins_related_db;
select database();
create table customers (id int auto_increment primary key , first_name varchar(100) , last_name
varchar(100), email varchar(100));
create table  orders(
id int auto_increment primary key ,
order_date date,
amount decimal(8,2) ,
customer_id int ,
foreign key(customer_id) references customers(id));
INSERT INTO customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
select * from customers;
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016/02/10', 99.99, 1),
       ('2017/11/11', 35.50, 1),
       ('2014/12/12', 800.67, 2),
       ('2015/01/03', 12.50, 2),
       ('1999/04/11', 450.25, 5);
select * from orders;
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016/06/06', 33.67, 6);


SELECT * FROM orders WHERE customer_id =
    (
        SELECT id FROM customers
        WHERE last_name='George'
    );
    
select *  from customers as c , orders as r where c.id = r.customer_id ;
select * from customers 
join  orders 
	on customers.id = orders.customer_id; 
select *  from customers as c , orders as r where c.id = r.id ;
select * from customers 
 left join orders 
	on customers.id = orders.customer_id;
SELECT 
    first_name, 
    last_name,
    IFNULL(SUM(amount), 0) AS total_spent
FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id
GROUP BY customers.id
ORDER BY total_spent;
select * , count(*) as no_of_per, sum(amount) from customers as c , orders as r where c.id = r.customer_id
group by first_name order by order_date desc;


 create table students(id int auto_increment primary key ,  first_name varchar(30));
 create table papers(
 student_id int,
 foreign key(student_id) references students(id)
 ,title varchar(100),grade int);

INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');
INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);
select first_name , title, grade from students
join papers 
on students.id =  papers.student_id order by first_name desc;
select first_name , title, grade from students
left join papers 
on students.id =  papers.student_id order by first_name desc;
select first_name , ifnull(grade,0) as grade ,ifnull(title,'missing') as title from students
left join papers 
on students.id =  papers.student_id 
 order by first_name desc;

select first_name, ifnull(avg(grade),0) as ave from students
left join papers
on students.id  =  papers.student_id group by first_name order by ave desc ; 


select first_name, ifnull(avg(grade),0) as ave , case 
when ifnull(avg(grade),0) >50 then 'passed'
else 'Fail'
end as status
from students
left join papers
on students.id  =  papers.student_id group by first_name order by ave desc ; 

