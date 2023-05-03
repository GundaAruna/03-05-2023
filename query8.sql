SELECT * FROM herovired.visit;
select entry_date,price from visit order by price desc limit 1,1;
insert into visit values("2023-04-5",700000,7);
select entry_date,price from visit order by price desc limit 2,1;
select entry_date,price from visit order by price desc limit 3,1;
select entry_date,price from visit order by price asc limit 0,1;
create table orders1(order_id int ,order_date date,customer_id int);
create table customer1(cus_id int,cus_name varchar(30),contact_name varchar(30),country varchar(30));
insert into orders1 values(101,"2023-05-01",201),(102,"2023-05-02",202),(103,"2023-05-03",203),(104,"2023-05-04",204);
select *from orders1;
insert into orders1 values(101,"2023-05-01",201),(102,"2023-05-02",202),(103,"2023-05-03",203),(104,"2023-05-04",204);
select *from customer1;
select orders1.order_id,customer1.cus_name,orders1.order_date from orders1 inner join customer1 on orders1.customer_id=customer1.cus_id;
create table staff(id int,name varchar(30),age int,package int);
create table payment (id int,_date date,staff_id int,amount int);
insert into staff values(101,"Naveen",40,100000),(102,"Naresh",45,200000),(103,"Pavani",39,80000),(104,"Aparna",35,700000);
insert into payment values(101,"2023-05-01",201),(102,"2023-05-02",202),(103,"2023-05-03",203),(104,"2023-05-04",204);


select *from staff;
select *from payment;
select s.id,name,age,package from staff s,payment p where s.id=p.id;
alter table orders1 add ship_id int;
update orders1 set ship_id=111 where order_id=101;
update orders1 set ship_id=112 where order_id=102;
update orders1 set ship_id=113 where order_id=103;
update orders1 set ship_id=114 where order_id=104;
create table shipping(shipping_id int,name varchar(30));
insert into shipping values(1234,"Expessp"),(1235,"TTD"),(2222,"XYZ"),(3456,"zzz");
select *from shipping;
SELECT ORDERS1.ORDER_ID,CUSTOMER1.CUS_NAME,SHIPPING.NAME FROM 
((ORDERS1 INNER JOIN CUSTOMER1 ON ORDERS1.ORDER_ID= CUSTOMER1.CUS_ID)
INNER JOIN SHIPPING ON ORDERS1.SHIP_ID = SHIPPING.shipping_id);
SELECT ORDERS1.ORDER_ID,CUSTOMER1.CUS_NAME,SHIPPING.NAME FROM 
((ORDERS1 INNER JOIN CUSTOMER1 ON ORDERS1.CUSTOMER_ID= CUSTOMER1.CUS_ID)
INNER JOIN SHIPPING ON ORDERS1.SHIP_ID = SHIPPING.SHIPPING_ID);
select customer1.cus_name,orders1.order_id from customer1 left join orders1 on customer1.cus_id=orders1.customer_id;
select *from orders1 full join customer1;
select cus_name,country,order_date from customer1 right join orders1 on customer1.cus_id=orders1.customer_id;
select customer1.cus_name,orders1.order_id from customer1 left join orders1 on customer1.cus_id=orders1.customer_id order by cus_name;
select customers1.cust_name,orders1.order_id from customers1;
left join orders1 on customers1.cust_id=orders1.customer_id where customers1.cust_name like 'p%' order by customers1.cust_name;
select customer1.cus_name,orders1.order_id from customer1 left join orders1 on customer1.cus_id=orders1.customer_id where customer1.cus_name like "p%" order by cus_name;
SELECT CUS_NAME,ORDERS1.ORDER_ID FROM CUSTOMER1 FULL JOIN ORDERS1 ON CUS_ID=ORDERS1.CUSTOMER_ID;
