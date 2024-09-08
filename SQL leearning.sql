use  tfi;
select * from actors;
insert into actors (name,birthdate)VALUES ('Ramcharan', '1999-12-17'), ('Prabhas', '1988-07-12');
select * from actors;
select * from actors where birthdate >=2000;
select title, release_year from movies where   not director_id =1 ;
select title, release_year from movies order by release_year desc; 
select count(*) as totalcount from movies;
select max(budget)  from boxoffice;
select avg(budget) from boxoffice;
select sum(budget) as total_budget from boxoffice;
select title, sum(budget) as totalbudget
from movies m join boxoffice b on m.movie_id = b.movie_id group by title;
update movies set title ='POKIRI' where movie_id = 1;
set sql_safe_updates = 0;
select* from movies;
select * from movies;
INSERT INTO movies (title, release_year) 
VALUES ('Saripodha Sanivaram', 2024), 
       ('KALIKI', 2024);
select * from movies;
delete from movies where title='pokiri';
create table dummy(
name varchar(10)

);
insert into dummy values('Harshita'),('Yagnya'),('krishna');
select * from dummy;
delete from dummy where name='krishna';
create database trail;
use trail;
CREATE TABLE movies (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    release_year INT,
    genre VARCHAR(100)
   
    
);
CREATE TABLE Box_Office (

box_office_id INT PRIMARY KEY AUTO_INCREMENT,
movie_id INT ,
budget BIGINT,
budget BIGINT,
FOREIGN KEY (movie_id) REFERENCES Movies (movie_id)
on delete cascade
);
drop table Box_Office;
show tables;
rename table movies to films;
show tables;
select * from movies;
truncate table films;
select * from films;

-- joins
-- Inner joins --> which common in both the tables--

drop table films;
create table movies(
movie_id int ,
title varchar(20),
director_id int
);
create table directors(
director_id int,
name varchar(20)
);
insert into movies values(1,'RRR',101),(2,'Pushpa',102),(3,'KGF',103);
INSERT into directors values(101,'SS'),(102,'Suku'),(103,'Neel');
select* from directors;
select * from movies;

select * from m

-- left join
-- right join
-- cross join--> very rarely used it face where entity of a table to all the entitities in the second table.
 -- sample formulae::: select * form movies m inner join director d m.director_id = d.diretos_id
 -- self join  --> refering to itself
-- union operations
-- selecting the movies from the hindhi and telugu movies tables
--  // query// for union select title, release_year from telugu_movies union select title, release_year from hindi_movies;