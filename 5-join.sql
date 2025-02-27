#joints

create database joins11;
use joins11;

create table table1(id int);
create table table2(id int);

insert into table1(id) values (1),(1),(1),(2),(3),(3),(3),(null);
insert into table2(id) values (1),(1),(2),(4),(null);

select * from table1;
select * from table2;

#cross join - cartesian join 
#no of records of table1 multiply no of records of table2 '
#syntx - select columnlist from tablename cross join tablename;
#note - cross join with ON keyword it behaves like inner join

select * from table1 cross join table2;

select count(*) from table1 t1 cross join table2 t2 on t1.id=t2.id;

#inner join - return matched records between two tables 
# on tablename.commoncoloumnname=tablename.commoncolumnname;

select *  from table1 t1 inner join table2 t2 on t1.id=t2.id;

select count(*) from table1 t1 join table2 t2;

#left - inner join + remaining value of left table 

select * from table1 t1 left join table2 t2 on t1.id=t2.id;
select count(*) from table1 t1 right join table2 t2 on t1.id=t2.id;

#natural join

select count(*) from table1 natural join table2;

alter table table2 rename column id to eid; 
alter table table2 rename column eid to id; 