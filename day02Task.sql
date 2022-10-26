create table CUSTOMERS (cust_id int primary key , cust_name varchar(30), cust_address varchar(30) , cust_tel varchar(12) , cust_email varchar(20))
select * from CUSTOMERS
insert into CUSTOMERS values(1, 'Devaki','11/1/138 aravind nagar','9876789612', 'meher133@gmail.com')
insert into CUSTOMERS values(2, 'meher','11/1/121 sai nagar','987671234', 'mmp@gmail.com')
insert into CUSTOMERS values(3, 'pooj','11/1/136 ram nagar','9978654312', 'pooj@gmail.com')
insert into CUSTOMERS values(4, 'varshi','11/1/150 maruthi nagar','8712456789', 'varsh@gmail.com')

create table ITEMS (item_id int primary key , item_name varchar(20), item_price int,customer_id int not null,
FOREIGN KEY (customer_id) REFERENCES customers(cust_id))

select * from ITEMS
insert into ITEMS values(1,'chocolates',300)
insert into ITEMS values(2,'milkshakes',500)
insert into ITEMS values(3,'biscuits',400)
insert into ITEMS values(4,'shakes',450)

create table orders(
orders_id int NOT NULL Primary key,
customer_id int NOT NULL,
orders_datetime datetime,
FOREIGN KEY (customer_id) REFERENCES customers(cust_id)
);

insert into orders values(1,2,'2022/10/15 12:07:21')
insert into orders values(2,3,'2022/09/21 11:08:35')
insert into orders values(3,4,'2022/08/25 14:08:25')
insert into orders values(4,1,'2022/09/11 18:10:25')
insert into orders values(5,2,'2022/10/26 23:08:15')

create table order_item(
ord_item_id int NOT NULL Primary key,
order_id int NOT NULL,
item_id int NOT NULL,
customer_id int NOT NULL,
product_quantity varchar(50),
FOREIGN KEY (customer_id) REFERENCES customers(cust_id)
);

insert into order_item values(1,3,6,1,'good')
insert into order_item values(2,2,4,4,'not good')
insert into order_item values(3,5,1,3,'bad')
insert into order_item values(4,1,5,3,'too good')
insert into order_item values(5,4,2,2,'bad')


--question 2 
create table students (stu_id int , stu_name varchar(30) , stu_marks int ,stu_course varchar(20))

insert into students values (1,'pooji',90,'chemistry')
insert into students values (2,'renu',50,'physics')
insert into students values (3,'varshi',60,'biology')
insert into students values (4,'raju',70,'zoology')
insert into students values (5,'madhu',80,'english')
insert into students values (6,'sudhan',30,'hindi')
insert into students values (7,'devaki',74,'kannada')

select * from students

SELECT * FROM students  WHERE stu_marks IN (SELECT MAX(stu_marks) FROM students GROUP BY stu_course)  ORDER BY stu_course

--question 3

create table Telephone_Directory (id int , name varchar(30), tel_num bigint, address varchar(30), profession varchar(20))
select * from Telephone_Directory
insert into Telephone_Directory values (1,'Devaki',9978263463,'Anantapur', 'engineer')
insert into Telephone_Directory values (2,'Poojitha',9978261233,'bgl', 'doctor')
insert into Telephone_Directory values (3,'lakshmi',9972345,'hyd', 'engineer')
insert into Telephone_Directory values (4,'padma',997823463,'patna', 'IPS')
insert into Telephone_Directory values (5,'devi',9978261233,'pune', 'engineer')
insert into Telephone_Directory values (6,'likitha',997889733,'Anantapur', 'engineer')
insert into Telephone_Directory values (7,'nashitha',9971234333,'kolkata', 'IPS')
insert into Telephone_Directory values (8,'gunnu',991223463,'kadiri', 'engineer')
insert into Telephone_Directory values (9,'nashita',9978263463,'bihar', 'doctor')
insert into Telephone_Directory values (10,'chandu',92343463,'delhi', 'engineer')
insert into Telephone_Directory values (11,'chitti',9978263463,'Ajmeer', 'IAS')
insert into Telephone_Directory values (12,'varshi',9978263463,'Anantapur', 'engineer')
insert into Telephone_Directory values (13,'aishu',9978263463,'pune', 'doctor')
insert into Telephone_Directory values (14,'pranathi',9978263463,'delhi', 'business')
insert into Telephone_Directory values (15,'sai',9978263463,'blr', 'engineer')
insert into Telephone_Directory values (16,'hari',9978223463,'hyd', 'engineer')
insert into Telephone_Directory values (17,'shoumya',9971233463,'kadiri', 'lawyer')
insert into Telephone_Directory values (18,'anil',9978211212443,'tirupati', 'engineer')
insert into Telephone_Directory values (19,'sathwik',99734563,'jaipur', 'doctor')
insert into Telephone_Directory values (20,'ashish',997823443,'dmm', 'engineer')

SELECT count(*) as professionals from Telephone_Directory WHERE profession!='engineer' 