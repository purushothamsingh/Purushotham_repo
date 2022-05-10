show databases;
create database shirts_db;
use shirts_db;
select database();
create table shirts(shirt_id int not null auto_increment primary key,artical varchar(20),color varchar(20)
,shirt_size varchar(10),last_worn int);
desc shirts;
insert  into shirts (artical,color,shirt_size,last_worn) values('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);
select * from shirts;
insert into shirts (artical,color ,shirt_size,last_worn) values('polo shirt','purple','M',50);
select artical, color from shirts;
select artical,color ,shirt_size,last_worn from shirts where shirt_size ="M";
update shirts set shirt_size = 'L' where artical = 'polo shirt';
update shirts set last_worn = 0 where last_worn = 15;
update shirts set shirt_size = 'XS' , color = 'off white' where color = 'white';
delete from shirts where last_worn = 200;
delete from shirts where artical  = 'tank top';
delete from shirts;
drop table shirts;
select * from shirts;