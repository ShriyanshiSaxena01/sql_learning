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




#datatype

show tables;

create table coustomer (id int ,name varchar(100)); 
desc coustomer;

insert into coustomer( id , name)values(101,"rahul");
insert into coustomer( id )values(102);

select * from coustomer;

insert into coustomer values(null,null);


create table coustomer1( id int not null, name varchar(100) not null);
insert into coustomer1( id )values(102);
insert into coustomer1 values(101,null);




create table coustomer2(id int , name varchar(100));


ALTER TABLE coustomer2
ADD COLUMN acc_type varchar(20);
insert into coustomer2 (id,name,acc_type) values (101,"anaya","savings"),(102,"taya","savings");
insert into coustomer2 (id,name) values (103,"piaya");
select * from coustomer2 ;


create table coustomer3(id int not null , name varchar(100) not null , accu_type varchar(50) not null 
default 'savings');
desc coustomer3 ;
insert into coustomer3(id,name) values (101,"peter"),(102,"cheter"),(103,"nuton");
select * from coustomer3 ;



#primary key 