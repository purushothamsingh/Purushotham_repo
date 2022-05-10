create table station(city varchar(20), id int auto_increment primary key );
insert into station(city) values ("def"),
('abc'),('pqrs'),('wxy');
select * from station;
select city from station where  length(city)= (select min(length(city)) from station) order by city;
select min(length(city)) from station as city_length;
select length( city )from station;
select city from station where city like '___';
select database();
show databases;
use employee;
show tables;

create table timestamps(per_name varchar(30), birthdate date, birth_time time, date_time  datetime);
INSERT INTO timestamps (per_name, birthdate, birth_time, date_time)
VALUES('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35');
 
INSERT INTO timestamps (per_name, birthdate, birth_time, date_time)
VALUES('Larry', '1943-12-25', '04:10:42', '1943-12-25 04:10:42');
select * from timestamps;
insert into timestamps(per_name, birthdate, birth_time,date_time) values('raju',curdate(),curtime(),now());