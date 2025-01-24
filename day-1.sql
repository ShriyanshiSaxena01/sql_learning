show databases; 
# use databasename
use sakila;
show tables;
# desc tablename
desc actor;


#create
#syntax - create database databasename;

create database cybrom;

#nees to select first which database we wwant to use
# use databasename

use cybrom;

#create table
#create table tablename(colum1 datatype,colum2 datatype,column datatype);

create table student (s_id int, s_name varchar(20), age tinyint, fees decimal(10,2), d_o_b date, mobile varchar(20));

# first create table by exsicuting then do next step other wise table will not created

# desc tablename= show full table

desc student;

#rename
#syntax = rename table tableoldname to tablenewname

rename table student to stu;
 
# desc tablename= show full table

desc stu;

#drop
#drop table  tablename;

drop table stu;

#drop
#drop database databasename;

drop database cybrom;
#
create database office;
use office;
create table emp (s_id int, s_name varchar(20), age tinyint, sal decimal(10,2), d_o_j date, mobile varchar(20));
desc emp;
rename table emp to employe;
desc employe;

#alter= for chge in an existing structure(table).
#alter = add column to an existing structure.
#syntax = alter table tablename add columnname datatype;

alter table employe add column city varchar(20);
desc employe;