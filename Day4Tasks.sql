
--Question 1
CREATE TABLE Employees (
emp_id INT PRIMARY KEY,
emp_name varchar(20),
emp_lang varchar(10),
base_loc varchar(25)
)
select * from Employees
insert into Employees values(201,'Poojitha','java','anantapur')
insert into Employees values(202,'Smitha','Nodejs','Banglore')
insert into Employees values(203,'ram','Angularjs','Hyderabad')
insert into Employees values(204,'meher','c#','kurnool')
insert into Employees values(205,'hema','c','Banglore')

create or alter procedure emp_proc @language varchar(20),@location varchar(10) 
AS
select *  from Employees where emp_lang = @language and base_loc = @location

exec emp_proc 'Nodejs' , 'Banglore'
exec emp_proc 'c' , 'Banglore'


--ques 2
create table student_data(student_id int primary key, student_name varchar(50) not null,
maths int,economics int,commerce int , english int, computer_science int);

select * from student_data
insert into student_data values(20,'Devaki',50,60,70,65,80);
insert into student_data values(21,'akshaya',45,60,80,67,69);
insert into student_data values(22,'shilpa',40,50,60,70,90);
insert into student_data values(23,'Devi',49,60,87,67,69);
insert into student_data values(24,'raju',56,67,78,89,90);
insert into student_data values(25,'renu',50,60,70,65,80);
insert into student_data values(26,'aishu',40,50,60,70,90);
insert into student_data values(27,'sanjana',49,60,87,67,69);
insert into student_data values(28,'nisha',50,60,70,65,80);
insert into student_data values(29,'chaitanya',90,89,87,85,77);

CREATE PROCEDURE student
AS
SELECT student_id,student_name,(maths+economics+commerce+english+computer_science) as Total,
ROW_NUMBER() OVER(
	ORDER BY (maths+economics+commerce+english+computer_science) DESC
)
AS 'RANK'
FROM student_data;

exec student

--Ques 3

CREATE TABLE student_details(
stu_id INT PRIMARY KEY,
stu_name varchar(20),
stu_age INT,
stu_sex varchar(10),
course varchar(20),
years_of_study INT
)


insert into student_details values(10,'dimple',21,'Female','ECE',4)
insert into student_details values(11,'harsh',24,'Male','CSE',2)
insert into student_details values(12,'rohith',23,'Male','Mech',3)
insert into student_details values(13,'misha',22,'Female','CSE',4)
insert into student_details values(15,'shilpa',21,'Female','Mech',2)
insert into student_details values(16,'neha',22,'Female','ECE',2)
insert into student_details values(17,'reddy',24,'Male','CT',4)
insert into student_details values(20,'poojitha',25,'Female','EEE',5)

select* from student_details

CREATE or ALTER PROCEDURE proc_2 @year INT AS

 
SELECT * from student_details where years_of_study=@year


EXEC proc_2 @year=2

--ques 4

CREATE function SP(@Principle BIGINT,@Time INT)
RETURNS BIGINT AS
BEGIN
   DECLARE @Rate AS INT
   SET  @Rate=3
  DECLARE @Result AS BIGINT
  SELECT  @Result = (@Principle*@Rate*@Time)/100
  RETURN @Result
END

SELECT dbo.SP(87900,5)

--ques 5
CREATE TABLE timezones(
country_code INT PRIMARY KEY,
country_name varchar(20),
)

insert into timezones values(20020,'USA')
insert into timezones values(21234,'India')
insert into timezones values(29292,'South Africa')
insert into timezones values(28976,'Australia')
insert into timezones values(28932,'Netherlands')

select * from timezones

CREATE FUNCTION time_zone (@cou_name varchar(20))
RETURNS varchar(20) AS
BEGIN
DECLARE @res AS varchar(20)
   IF @cou_name='India'
    set @res = '5 am'
   ELSE IF @cou_name='Australia'
     set @res = '9 am'
   ELSE 
   set @res = 'other time'

   select dbo.time_zone('India')

   RETURN @res
END