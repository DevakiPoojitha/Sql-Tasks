
--Question 1 
alter table employee_table add employee_city varchar(20) Null;
select * from employee_table

 update employee_table set employee_city = 'mumbai' where employee_id =3
 update employee_table set employee_city = 'hyd' where employee_id =4
 update employee_table set employee_city = 'pune' where employee_id =6

 select * from employee_table
 select distinct employee_city from employee_table


-- Question 2 
  create table cricket_players(
  player_id int,
  player_name varchar(30),
  country_name varchar(20),
  primary key(player_name,country_name)
  );

  select * from cricket_players

  insert into cricket_players values(1,'virat','mumbai')
  insert into cricket_players values(2,'MSD','Delhi')
  insert into cricket_players values(3,'yuzi chahal','pune')
  insert into cricket_players values(4,'rohit sharma','kolkata')
  insert into cricket_players values(5,'sachin','kashmir')

  --question 3 
  create table student(
student_id int NOT NULL primary key,
student_name varchar(50),
student_subject varchar(50),
student_date_of_join date
);

insert into student values(110,'Devaki','maths','2022-03-20') 
insert into student values(123,'Poojitha','english','2022-07-20')
insert into student values(111,'meher','hindi','2022-09-15')
insert into student values(134,'renu','physics','2022-08-12')
insert into student values(124,'raju','maths','2022-11-15')
insert into student values(140,'varshitha','physics','2022-07-15')

select * from student

SELECT * FROM student WHERE  student_subject='maths' and student_date_of_join >='2022-08-01'

--question 4

create table student1(
stu1_id int NOT NULL primary key,
stu1_name varchar(50),
stu1_subj varchar(50),
stu1_age int,
);


create table student2(
stu2_id int NOT NULL primary key,
stu2_name varchar(50),
stu2_subj varchar(50),
stu2_age int,
);

insert into student1 values(1,'Poojitha','maths',22)
insert into student1 values(5,'raju','english',20)
insert into student1 values(3,'sai','hindi',40)
insert into student1 values(4,'sunita','maths',80)
insert into student1 values(7,'lakshmi','english',66)

select * from student1
select * from student2

insert into student2 values(90,'Poojitha','maths',22)
insert into student2 values(91,'madhu','english',20)
insert into student2 values(92,'yuhi','hindi',40)
insert into student2 values(99,'gunnu','maths',80)
insert into student2 values(97,'nashitha','english',66)

select * from student1 where(stu1_age>40 and stu1_subj='english') union select * from student2 where(stu2_age>21 and stu2_subj='maths');








