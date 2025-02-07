create database dummy;
use dummy;

select 1+1;

#select from
#syntax
#select column_list  from table name;
#oder of execution
#from----select---


select * from customers;

#wasq to fetch coustomername , coustomernumber , city , stste , country
#from the coustomer's table?

select customername,customername,city,state,country from customers;

select ordernumber , productcode , (quantityordered*priceeach) as ordervalue from orderdetails;

select * from employees;

select employeenumber,
concat(firstname," ",lastname) as empfullname,jobtitle from employees;



#wasq to fetchb odernumber orderdate status from the oders table ???

#sorting od data 
#order by clause
#select columlist from tablename 
#oder by columnname [asc][desc]
#by defult assiding

#wasq to sort a coustomer byb there lasst name in the assanding oder display contact last name contact fist name

select contactlastname, contactfirstname from customers order by contactlastname asc;
select contactlastname, contactfirstname from customers order by contactlastname desc;

select contactlastname, contactfirstname from customers order by contactlastname desc,contactfirstname asc;