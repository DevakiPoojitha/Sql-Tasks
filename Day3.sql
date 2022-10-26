
--question 1
create table data (person_id int not null, First_name varchar(20), last_name varchar(20))

insert into data values(1, 'Devaki', 'poojitha')
insert into data values(2,'devaki','nagaraju')
insert into data values(3,'devaki','varshitha')
insert into data values(4,'devaki','renuka')

select CONCAT(First_name, ' ', last_name)as FullName from data

select * from data

create table information(city_id int not null,city_name varchar(30))
insert into information values(100,'banglore')
insert into information values(101,'delhi')
insert into information values(102,'delhi')
insert into information values(103,'pune')
insert into information values(104,'banglore')

select * from information

create table details(country_id int NOT NULL, country_name varchar(20))
insert into details values(1,'india')
insert into details values(2,'USA')
insert into details values(3,'England')
insert into details values(4,'india')

select * from details

--question 3
select SUBSTRING('banglore',1,3) from information
--question 4 
use MyDb
alter table employee_table add employee_department varchar(20) null

select * from employee_table

update employee_table set employee_department='java' where employee_id =1
update employee_table set employee_department='c#' where employee_id =2
update employee_table set employee_department='.net' where employee_id =3
update employee_table set employee_department='nodejs' where employee_id =4
update employee_table set employee_department='angular' where employee_id =5
update employee_table set employee_department='reactjs' where employee_id =6

select * from employee_table order by employee_name
select * from employee_table order by employee_department desc

--question 5
select * from employee_table
select employee_name from employee_table where employee_salary >= 50000 and employee_salary <=80000

--question 6
SELECT employee_name FROM employee_table
WHERE employee_salary IN 
(
   SELECT employee_salary
   FROM employee_table
   GROUP BY employee_salary
   HAVING COUNT(*) > 2000
)

--question 7
select * from course_info
alter table course_info add student_name varchar(20)
alter table course_info add joining_date date
alter table course_info drop column joining_date
alter table course_info add joining_date date
update course_info set student_name = 'poojitha' where course_id =1
update course_info set student_name = 'devaki' where course_id =2
update course_info set student_name = 'meher' where course_id =3
update course_info set student_name = 'madhu' where course_id =4
update course_info set student_name = 'sudhan' where course_id =5
update course_info set student_name = 'saii' where course_id =6

update course_info set joining_date = '2021-06-12' where course_id = 1
update course_info set joining_date = '2020-01-21' where course_id = 2
update course_info set joining_date = '2022-09-09' where course_id = 3
update course_info set joining_date = '2021-03-12' where course_id = 4
update course_info set joining_date = '2020-03-09' where course_id = 5
update course_info set joining_date = '2023-09-23' where course_id = 6

select * from course_info
select student_name from course_info where course_name!='Physics' and course_name!='chemistry'

--question 8
select * from course_info
select student_name from course_info where joining_date > '2020-02-01'





