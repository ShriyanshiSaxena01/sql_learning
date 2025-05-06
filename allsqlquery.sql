 --  show all the databses
show databases; 

-- create own database
create database collage1;
 
 -- make it in use database
 use collage1;

 -- creating table
 create table student ( st_name varchar(20) , age int , rollnumb varchar(10));
 
-- check table
desc student;

-- adding data in table
insert into student(st_name, age, rollnumb) values ('rohit', 12 , 'xyz'),('shici', 14 ,'xzy');
insert into student(st_name) values ('suar'),('ayan');
-- Read data in table
select* from student;

-- read perticular column
select age from student;

-- read perticular data from column
select* from student where rollnumb='xyz';

-- update data of perticular coloumn
update student set rollnumb='MMM' where st_name='suar';
 
 -- delete data particularly columns 
 delete from student where age = 12;
 
  -- delete whole table from datbase
  drop table student;
  
  
  
  -- ------------------constraint-----------------------------------------------------------------------------------------
   create table student ( st_name varchar(20) , age int , rollnumb varchar(10));
  insert into student(age) values (14),(12);
  select* from student;
  insert into student values (null,null,null);
  
  
  
  -- not null -------------------------
   create table student1 ( st_name varchar(20) not null , age int , rollnumb varchar(10));
   select* from student1;
   desc student1;
    insert into student1(age) values (14),(12);
    
    
      -- defult-------------------------
      create table student2 (id int not null , class varchar(50)  not null default '11th');
      desc student2;
       
       insert into student1(st_name , age , rollnumb) values ('shriya',12,'xx1');
	   select* from student1;
       
 -- Primary key ------------------------
       
   create table techer ( st_name varchar(20) not null , age int , idnumb varchar(10) primary key);
      desc techer;
      
	  insert into techer(st_name , age , idnumb) values ('shriya',12,'xx1'), ('mriya',15,'xx2');
         select* from techer;
         
         -- blow will not work becouse primary key dont allow duplicate keys  also not allowed null valuue
	insert into techer(st_name , age , idnumb) values ('shriya',null,'xx1');  
    
  -- AUTO_INCREMENT ------------------------   
    
	create table techer1 ( st_name varchar(20) not null , age int , idnumb int primary key AUTO_INCREMENT);
 INSERT INTO techer1(st_name) 
VALUES 
  ('priya'),
  ('jiya'),
  ('rohit');
      desc techer1;
      select* from techer1;
      
      
      
-- ALIAS ------------------------   

SELECT st_name AS name, age AS years FROM techer1;

-- where ------[filtering recods]------------------   

select* from techer1 where st_name = 'jiya';


CREATE TABLE students (
    roll_number INT PRIMARY KEY,
    class_name VARCHAR(50),
    marks INT
);
INSERT INTO students (roll_number, class_name, marks) VALUES
(101, '10th A', 85),
(102, '10th B', 78),
(103, '10th A', 92),
(104, '10th C', 66),
(105, '10th B', 74);

select* from students where marks>70;



-- where ------[Update recods]------------------  

update students set class_name = '10th B' where marks=92;
 
-- where ------[Delete recods]------------------

delete from students where marks= 78;







--   task [exerciese] 


-- Create a database – bank_db

-- Create a table – employees with the following columns:

-- emp_id

-- name

-- desig

-- dept

-- 🔹 Constraints:
-- emp_id column should not allow duplicate and null values
-- ➤ The value of emp_id should auto increment

-- name column should not contain null values

-- desig column should have a default value of 'Probation'


create database bank_db;
create table employees( emp_id int not null auto_increment primary key , name varchar(50) not null ,
desig varchar(25) default 'Probation', dep varchar(25) default 'ingenering');
-- primary key itself define not null and uniqe
select* from employees;
desc employees;
INSERT INTO employees (emp_id, name, desig, dep) VALUES
(101, 'Raju', 'Manager', 'Loan');
INSERT INTO employees ( name, desig, dep) VALUES
( 'Sham', 'Cashier', 'Cash'),
( 'Paul', 'Associate', 'Loan'),
( 'Alex', 'Accountant', 'Account'),
( 'Victor', 'Associate', 'Deposit');

select emp_id, name from employees ;

select* from employees where emp_id<103;
select* from employees where emp_id=102;
select emp_id , name from employees where emp_id=102;

update employees set dep = 'loan' where emp_id=102;
select* from employees;

delete from employees where emp_id=105;



-- string functions ------------------------   

-- string functions ---------[CONCAT]---------------   

select concat('hello' , '  ' , 'shriyanshi' );
select* from employees;

select emp_id, concat(name ,' ' , dep) as newww from employees;

-- string functions ---------[CONCAT_WS]--------------- 

select concat_ws('?' , 'hi' , 'by' , 'okk'); 

-- string functions ---------[SUBSTRING]---------------

select substring('hey buddy' , 2,5 );   -- count space also

select substring('hey buddy' , -4 ); 

select* from employees;

select substring(emp_id ,2) as EMP_ID,name from employees;

select substring(emp_id ,2) ,name from employees;

-- string functions ---------[replace]---------------

select replace('hey buddy','hey','hello');
select replace('heybuddy','hey','hello'); -- can also chnge words only

select replace(emp_id ,10,1000 ), name from employees;
