show databases;
create database test_db;
use test_db;
select database();
 drop database test_db;
 
 create database store_db;
 use store_db;
 create table customers( id int , name varchar(100);
 desc customers;
 
 
show databases;
use university;
desc courses;





create database school_db;
use school_db;
create table students (id int , name varchar(50) , class int);
desc students;
insert into students(id , name , class) values (101,"shriya",5);
insert into students values (102, "priya",6);
insert into students values(103,"riya",7),(104,"rohan",8);

select * from students;

select name from students;

select id,name from students;

select * from students where id = 103;

ALTER TABLE employes
ADD COLUMN contect varchar(20);

select * from students ;

SET SQL_SAFE_UPDATES = 0;

delete from students where id=104;
delete from students where class=7;

drop table students;
select * from students ;










