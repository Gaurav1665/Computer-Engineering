
/*-----------------------------------------------------------------------------------LAB-11-PART-A-------------------------------------------------------------------------------------*/

create table ORDERS (ord_no int, purch_amt decimal(8,2), ord_date date, customer_id int, salesman_id int)


insert into ORDERS values(70001, 150.5, '05-OCT-2012', 3005, 5002)
insert into ORDERS values(70009, 270.65, '10-SEP-2012', 3001, 5005)
insert into ORDERS values(70002, 65.26, '05-OCT-2012', 3002, 5001)
insert into ORDERS values(70004, 110.5, '17-AUG-2012', 3009, 5003)
insert into ORDERS values(70007, 948.5, '10-SEP-2012', 3005, 5002)
insert into ORDERS values(70005, 2400.6, '27-JUL-2012', 3007, 5001)
insert into ORDERS values(70008, 5760, '10-SEP-2012', 3002, 5001)
insert into ORDERS values(70010, 1983.43, '10-OCT-2012', 3004, 5006)
insert into ORDERS values(70003, 2480.4, '10-OCT-2012', 3009, 5003)
insert into ORDERS values(70012, 250.45, '27-JUN-2012', 3008, 5002)
insert into ORDERS values(70011, 75.29, '17-AUG-2012', 3003, 5007)
insert into ORDERS values(70013, 3045.6, '25-APR-2012', 3002, 5001)
insert into ORDERS values(70001, 150.5, '05-OCT-2012', 3005, 5002)
insert into ORDERS values(70009, 270.65, '10-SEP-2012', 3001, 5005)
insert into ORDERS values(70002, 65.26, '05-OCT-2012', 3002, 5001)

select * from ORDERS

drop table ORDERS

create table SALESMAN (salesman_id int, name varchar(50), city varchar(50), commission decimal(8,2))

insert into SALESMAN values (5001, 'James Hoog', 'New York', 0.15)
insert into SALESMAN values (5002, 'Nail Knite', 'Paris', 0.13)
insert into SALESMAN values (5005, 'Pit Alex', 'London', 0.11)
insert into SALESMAN values (5006, 'Mc Lyon', 'Paris', 0.14)
insert into SALESMAN values (5007, 'Paul Adam', 'Rome', 0.13)
insert into SALESMAN values (5003, 'Lauson Hen', 'San Jose', 0.12)

select * from SALESMAN

drop table SALESMAN


create table CUSTOMER (customer_id int, cust_name varchar(50), city varchar(50), Grade int, salesman_id int)

insert into CUSTOMER values(3002, 'Nick Rimando', 'New York', 100, 5001)
insert into CUSTOMER values(3007, 'Brad Davis', 'New York', 200, 5001)
insert into CUSTOMER values(3005, 'Graham Zusi', 'California', 200, 5002)
insert into CUSTOMER values(3008, 'Julian Green', 'London', 300, 5002)
insert into CUSTOMER values(3004, 'Fabian Johnson', 'Paris', 300, 5006)
insert into CUSTOMER values(3009, 'Geoff Cameron', 'Berlin', 100, 5003)
insert into CUSTOMER values(3003, 'Jozy Altidor', 'Moscow', 200, 5007)
insert into CUSTOMER values(3001, 'Brad Guzan', 'London', null, 5005)

select * from CUSTOMER

drop table CUSTOMER


/*------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

--1. Write a SQL query to find all the orders issued by the salesman 'Paul Adam'. Return ord_no, purch_amt,
--ord_date, customer_id and salesman_id.

select o.ord_no,o.purch_amt,o.ord_date,o.customer_id,o.salesman_id from ORDERS o inner join SALESMAN s on o.salesman_id = s.salesman_id where s.name = 'Paul Adam'

--2. Write a SQL query to find all orders generated by London-based salespeople. Return ord_no, purch_amt,
--ord_date, customer_id, salesman_id.

select o.ord_no,o.purch_amt,o.ord_date,o.customer_id,o.salesman_id from ORDERS o inner join SALESMAN s on o.salesman_id = s.salesman_id where s.city = 'London'

--3. Write a SQL query to find all orders generated by the salespeople who may work for customers whose id is
--3007. Return ord_no, purch_amt, ord_date, customer_id, salesman_id.

select o.ord_no,o.purch_amt,o.ord_date,o.customer_id,o.salesman_id from ORDERS o inner join SALESMAN s on o.salesman_id = s.salesman_id where o.customer_id = 3007

--4. Write a SQL query to find the order values greater than the average order value of 10th October 2012. Return
--ord_no, purch_amt, ord_date, customer_id, salesman_id.

select o.ord_no,o.purch_amt,o.ord_date,o.customer_id,o.salesman_id from ORDERS o inner join SALESMAN s on o.salesman_id = s.salesman_id 
where o.purch_amt > (select avg(purch_amt) from ORDERS where ord_date = '10-OCT-2012' )

--5. Write a SQL query to find all the orders generated in New York city. Return ord_no, purch_amt, ord_date,
--customer_id and salesman_id.

select o.ord_no,o.purch_amt,o.ord_date,o.customer_id,o.salesman_id from ORDERS o inner join SALESMAN s on o.salesman_id = s.salesman_id where s.city = 'New York'

--6. Write a SQL query to determine the commission of the salespeople in Paris. Return commission.

select commission from SALESMAN where city = 'Paris'

--7. Write a query to display all the customers whose ID is 3001 below the salesperson ID of Mc Lyon.
select * from SALESMAN s inner join CUSTOMER c on s.salesman_id = c.salesman_id where c.salesman_id = (select salesman_id from SALESMAN where name = 'Mc Lyon') and c.customer_id = 3001

select * from SALESMAN s inner join CUSTOMER c on s.salesman_id = c.salesman_id where c.salesman_id < (select salesman_id from SALESMAN where name = 'Mc Lyon') and c.customer_id = 3001


--8. write a SQL query to count the number of customers with grades above the average in New York City. Return
--grade and count.
select grade,count(*) from CUSTOMER where city = 'New York' and Grade >= (select avg(Grade) from CUSTOMER) group by grade

--9. Write a SQL query to find those salespeople who earned the maximum commission. Return ord_no,
--purch_amt, ord_date, and salesman_id.

select o.ord_no,o.purch_amt,o.ord_date,o.salesman_id from ORDERS o inner join SALESMAN s on o.salesman_id = s.salesman_id where s.commission = (select max(commission) from SALESMAN)

--10. Write SQL query to find the customers who placed orders on 17th August 2012. Return ord_no, purch_amt,
--ord_date, customer_id, salesman_id and cust_name.

select o.ord_no,o.purch_amt,o.ord_date,o.customer_id,o.salesman_id from ORDERS o inner join CUSTOMER c on o.customer_id = c.customer_id where o.ord_date = '17-AUG-2012'

--11. Write a SQL query to find salespeople who had more than one customer. Return salesman_id and name.

select s.salesman_id,s.name from SALESMAN s inner join CUSTOMER c on s.salesman_id = c.salesman_id group by s.salesman_id,s.name having count(c.salesman_id) > 1

--12. Write a SQL query to find those orders, which are higher than the average amount of the orders. Return
--ord_no, purch_amt, ord_date, customer_id and salesman_id.

select o.ord_no,o.purch_amt,o.ord_date,o.customer_id,o.salesman_id from ORDERS o inner join SALESMAN s on o.salesman_id = s.salesman_id where o.purch_amt > (select avg(purch_amt) from ORDERS)

--13. Write a SQL query to find those orders that are equal or higher than the average amount of the orders. Return
--ord_no, purch_amt, ord_date, customer_id and salesman_id.

select o.ord_no,o.purch_amt,o.ord_date,o.customer_id,o.salesman_id from ORDERS o inner join SALESMAN s on o.salesman_id = s.salesman_id where o.purch_amt >= (select avg(purch_amt) from ORDERS)

--14. Write a query to find the sums of the amounts from the orders table, grouped by date, and eliminate all dates
--where the sum was not at least 1000.00 above the maximum order amount for that date.

select ord_date,sum(purch_amt) as [sums of the amounts] from ORDERS group by ord_date having sum(purch_amt) > (1000+ max(purch_amt))

--15. Write a query to extract all data from the customer table if and only if one or more of the customers in the
--customer table are located in London. Sample table : Customer

select * from customer where exists(select * from CUSTOMER where city = 'London')


/*-----------------------------------------------------------------------------------LAB-11-PART-B-------------------------------------------------------------------------------------*/

--1. Write a SQL query to find salespeople who deal with multiple customers. Return salesman_id, name, city
--and commission.

select s.salesman_id,s.name,s.city,s.commission from SALESMAN s inner join CUSTOMER c on s.salesman_id = c.salesman_id group by s.salesman_id,s.name,s.city,s.commission having count(c.salesman_id) > 1

--2. Write a SQL query to find salespeople who deal with a single customer. Return salesman_id, name, city and
--commission.

select s.salesman_id,s.name,s.city,s.commission from SALESMAN s inner join CUSTOMER c on s.salesman_id = c.salesman_id group by s.salesman_id,s.name,s.city,s.commission having count(c.salesman_id) = 1

--3. Write a SQL query to find the salespeople who deal the customers with more than one order. Return
--salesman_id, name, city and commission.

select s.salesman_id,s.name,s.city,s.commission from SALESMAN s inner join CUSTOMER c on s.salesman_id = c.salesman_id inner join ORDERS o on s.salesman_id = o.salesman_id group by s.salesman_id,s.name,s.city,s.commission having count(o.salesman_id) > 1

--4. Write a SQL query to find the salespeople who deal with those customers who live in the same city. Return
--salesman_id, name, city and commission.

select s.salesman_id,s.name,s.city,s.commission from SALESMAN s inner join CUSTOMER c on s.city = c.city where s.salesman_id = c.salesman_id

--5. Write a SQL query to find salespeople whose place of residence matches any city where customers live.
--Return salesman_id, name, city and commission.

select s.salesman_id,s.name,s.city,s.commission from SALESMAN s inner join CUSTOMER c on s.city = c.city

--6. Write a SQL query to find all those salespeople whose names appear alphabetically lower than the
--customerís name. Return salesman_id, name, city, commission.

select s.salesman_id,s.name,s.city,s.commission from SALESMAN s inner join CUSTOMER c on s.salesman_id = c.salesman_id where s.name < c.cust_name 

--7. Write a SQL query to find all those customers with a higher grade than all the customers alphabetically below
--the city of New York. Return customer_id, cust_name, city, grade, salesman_id.

select * from CUSTOMER where grade > (select grade from CUSTOMER where cust_name > 'New York')

--8. Write a SQL query to find all those orders whose order amount exceeds at least one of the orders placed on
--September 10th 2012. Return ord_no, purch_amt, ord_date, customer_id and salesman_id.

select ord_no,purch_amt,ord_date,customer_id,salesman_id from ORDERS where purch_amt > (select min(purch_amt) from ORDERS where ord_date = '10-SEP-2012')

--9. Write a SQL query to find orders where the order amount is less than the order amount of a customer residing
--in London City. Return ord_no, purch_amt, ord_date, customer_id and salesman_id.

select ord_no,purch_amt,ord_date,customer_id,salesman_id from ORDERS where purch_amt < (select min(purch_amt) from ORDERS where customer_id in (select customer_id from CUSTOMER where city = 'London'))

--10. Write a SQL query to find those orders where every order amount is less than the maximum order amount of
--a customer who lives in London City. Return ord_no, purch_amt, ord_date, customer_id and salesman_id.

select ord_no,purch_amt,ord_date,customer_id,salesman_id from ORDERS where purch_amt < (select max(purch_amt) from ORDERS where customer_id in (select customer_id from CUSTOMER where city = 'London'))


/*-----------------------------------------------------------------------------------LAB-11-PART-C-------------------------------------------------------------------------------------*/


--1. Write a SQL query to find those customers whose grades are higher than those living in New York City.
--Return customer_id, cust_name, city, grade and salesman_id.

select * from CUSTOMER where grade > (select max(grade) from CUSTOMER where city = 'New York')

--2. Write a SQL query to calculate the total order amount generated by a salesperson. Salespersons should be
--from the cities where the customers reside. Return salesperson name, city and total order amount.

select s.name,s.city,sum(o.purch_amt) from SALESMAN s inner join CUSTOMER c on s.city = c.city inner join ORDERS o on s.salesman_id = o.salesman_id  where s.salesman_id = c.salesman_id group by s.name,s.city

--3. Write a SQL query to find those customers whose grades are not the same as those who live in London City.
--Return customer_id, cust_name, city, grade and salesman_id.

select * from CUSTOMER where grade not in (select grade from CUSTOMER where city = 'London' and grade is not null)

--4. Write a SQL query to find those customers whose grades are different from those living in Paris. Return
--customer_id, cust_name, city, grade and salesman_id.

select * from CUSTOMER where grade not in (select grade from CUSTOMER where city = 'Paris')

--5. Write a SQL query to find all those customers who have different grades than any customer who lives in
--Dallas City. Return customer_id, cust_name,city, grade and salesman_id.

select * from CUSTOMER where grade not in(select grade from CUSTOMER where city = (select city from CUSTOMER where cust_name = 'Dallas'))
