create database lotus;
use lotus;

create table products(pid int primary key, pname varchar(20) not null
, price decimal (10,2));

desc products;

create table users(uid int primary key, uname varchar(20) not null,
mobile varchar(20) unique); 

desc users;

create table orders(oid int primary key , userid int , pid int ,
foreign key (userid) references  users(uid));

desc orders;

#alter table tablename add foregin key (columnname)
#reference parenttable(primarykeycolumn);

alter table orders add foreign key (pid) references products(pid);

#foregin key
#drop
# alter table tablename drop foregin key keyname;
#alter table tablename drop key keyname;

alter table orders drop foreign key orders_ibfk_1;
alter table orders drop key userid;
