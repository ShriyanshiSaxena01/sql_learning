use dummy;


#waasq to fetch customername and their respective sales rep?

select customername , employeenumber , concat(firstname," ", lastname)as empname from employees e inner
join customers c on e.employeenumber=c.salesrepemployeenumber;


#wasql to fetch customername odernumber oderday odervalue productcode and productname from customers oders
#oderdetails and producttable

select customername , o.ordernumber , orderdate,( quantityordered*priceeach) as ordervalue,
p.productcode, productname
from customers c 
inner join orders o on c.customernumber= o.customernumber inner join orderdetails od on
o.ordernumber= od.ordernumber inner join products p on od.productcode=p.productcode;


#wasq to fetch customer name and there respective sales repname also fetch oderdate and oderstatus

select customername , concat(firstname," ",lastname) as salesrepname, orderdate,status from
employees e inner join customers c on e.employeenumber = c.salesrepemployeenumber
inner join  oders o on c.

#wright a sql query to fetch coustomers who have not fetch any ode
#wasq to fetch products how have not sold  