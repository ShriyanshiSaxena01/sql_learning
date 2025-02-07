-- 1. Create a new database named University
CREATE DATABASE University;

-- 2. Switch to the University database
USE University;

-- 3. Create a Students table with the following columns
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    EnrollmentDate DATE
);

-- 4. Create a Courses table with the following columns
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    Credits INT,
    StudentID INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);

-- 5. Insert the following data into the Students table
INSERT INTO Students (StudentID, Name, Age, EnrollmentDate)
VALUES
(1, 'John Doe', 20, '2024-08-15'),
(2, 'Jane Smith', 22, '2023-09-01'),
(3, 'Emily Davis', 19, '2024-01-10'),
(4, 'Michael Johnson', 21, '2023-06-22');

-- 6. Insert the following data into the Courses table
INSERT INTO Courses (CourseID, CourseName, Credits, StudentID)
VALUES
(101, 'Computer Science', 3, 1),
(102, 'Mathematics', 4, 2),
(103, 'Physics', 3, 3),
(104, 'Chemistry', 3, 4);

-- 7. Select all data from the Students table
SELECT * FROM Students;

-- 8. Select all data from the Courses table
SELECT * FROM Courses;

-- 9. Update the Age of the student with StudentID = 2 to 23
UPDATE Students
SET Age = 23
WHERE StudentID = 2;

-- 10. Delete the student with StudentID = 1 from the Students table
DELETE FROM Students
WHERE StudentID = 1;

-- 11. Drop the foreign key constraint on the StudentID in the Courses table
ALTER TABLE Courses
DROP FOREIGN KEY Courses_ibfk_1;

-- 12. Add a foreign key constraint on StudentID in the Courses table, with the ON DELETE CASCADE action
ALTER TABLE Courses
ADD CONSTRAINT fk_student
FOREIGN KEY (StudentID)
REFERENCES Students(StudentID)
ON DELETE CASCADE;

-- 13. Describe the Courses table using DESC Courses
DESC Courses;

-- 14. Alter the Courses table to add a new column Instructor (varchar(100))
ALTER TABLE Courses
ADD COLUMN Instructor VARCHAR(100);

-- 15. Update the Courses table to set Instructor = 'Dr. Smith' for the course with CourseID = 101
UPDATE Courses
SET Instructor = 'Dr. Smith'
WHERE CourseID = 101;

-- 16. Delete all data from the Courses table where Credits = 3
DELETE FROM Courses
WHERE Credits = 3;


create database db1;
use db1;

create table officeses( officecode int primary key , city varchar(20) default "bhopal" , state varchar(20) , country varchar(20));

create table employeses ( enumber int , ename varchar(20) not null , officecode int , jobtitle varchar(50) , foreign key (officecode) references officeses(officecode));

select * from officeses;
select * from employeses;

insert into officeses(officecode , city , state , country) values (101,"bhopal","mp","india"),(102,"bhopal","mp","india");

insert into employeses(enumber , ename , officecode , jobtitle) values (1,"shriyanshi",101,"sales"),(2,"aiyansh",102,"marketing");

rename table officeses to office;

rename table employeses to emp;

select * from office;
select * from emp;

desc office;
desc emp;
alter table emp rename column ename to empname;

ALTER TABLE emp DROP FOREIGN KEY emp_ibfk_1;
alter table emp drop key officecode;

ALTER TABLE office DROP PRIMARY KEY;
ALTER TABLE emp MODIFY empname VARCHAR(20) NULL;
ALTER TABLE office MODIFY city VARCHAR(20) NULL;


start transaction;
delete from emp where enumber = 1;
rollback;

update emp set empname="cybrom"
where enumber=1;

alter table office add primary key (officecode);

alter table emp add foreign key (officecode) references office(officecode)
on update cascade on delete set null;
