--create database named UniversityProject
create database UniversityProject

--Create Table student
CREATE TABLE Student (
  ST_FirstName varchar(100) not null,
  ST_LastName varchar(100) not null,
  ST_Phone varchar(100) not null,
  ST_Email varchar(100) not null,
  ST_Address varchar(100) not null,
  ST_City varchar(100) not null,
  ST_Zip  varchar(30) default 'Not Specified',
  ST_Id int primary key,
  ST_Gender varchar(100) not null,
  ST_Level varchar(100) not null, 
  ST_Age int check (ST_Age>=17)
);


CREATE TABLE Payment
(paymentId int primary key ,
paymentAmount int not null,
paymentDate date,
PaymentMethod varchar(100) not null )

CREATE TABLE Department
(DepId int primary key ,
DepName varchar(100), 
DepDescription varchar(100) not null,)

CREATE TABLE Course
(CourseId int primary key ,
CourseName varchar(100) not null,
CourseDescription varchar(100),
CourseCost int not null, ) 

CREATE TABLE Room
(roomId int primary key ,
roomSectionId varchar(100) not null,
CourseHrs varchar(100) not null )

CREATE TABLE Doctor
(DocId int primary key ,
DocGender varchar(10) default 'No Gender Provided',
DocFirstName varchar(100) not null,
DocLastName varchar(100) not null,
DocCity varchar(100) not null,
DocAddress varchar(100) not null,
DocEmail varchar(150),
DocSalary int,
ST_Id int not null 
constraint fk foreign key (ST_Id) references Student(ST_Id)) 
-- make foreign key constraint named fk that  references to the ST_Id in Student table

create table employee
(EmpId varchar(100) primary key,
EmpFN varchar(100) not null,
EmpLN varchar(100) not null,
EmpCity varchar(100) not null,
EmAge int not null,
EmAddress varchar(100) not null,
EmSalary int not null)                 

--------------------insert values into student table-------------------------------------------------------------------------------------------------------- 
--Values are Student first ,Last name , phone,email,address,city,zip code,id,gender,level,age
INSERT INTO Student(ST_FirstName,ST_LastName,ST_Phone,ST_Email,ST_Address,ST_City,ST_Zip,ST_Id,ST_Gender,ST_Level,ST_Age)
VALUES('Isabella','Powell','(305) 555-0667','isabella.lopez_56@gmail.com','16060 Elmwood Ave, Elmwood Park, USA','Belgrade','10028', '54','Male','100','24');
INSERT INTO Student(ST_FirstName,ST_LastName,ST_Phone,ST_Email,ST_Address,ST_City,ST_Zip,ST_Id,ST_Gender,ST_Level,ST_Age)
VALUES('Avery','Kelly','(281) 555-0676','avery.carter_78@yahoo.com','16666 Pine Ln, Pinetree, USA','Sofia, Bulgaria' ,'90017', '101','Female','1','22');
INSERT INTO Student(ST_FirstName,ST_LastName,ST_Phone,ST_Email,ST_Address,ST_City,ST_Zip,ST_Id,ST_Gender,ST_Level,ST_Age)  
VALUES('Tommie','Melton','(916) 802-2952','tommie.melton@gmail.com','8 West OId York St. ','Sacramento',95820,102,'Male',2,20);
INSERT INTO Student(ST_FirstName,ST_LastName,ST_Phone,ST_Email,ST_Address,ST_City,ST_Zip,ST_Id,ST_Gender,ST_Level,ST_Age) 
VALUES('Brandon','Kirkland','(916) 802-1037','Brandon.kirkland@hotmail.com','7800 Second Lane ','Rowlett',75088,103,'Female',1,19);
INSERT INTO Student(ST_FirstName,ST_LastName,ST_Phone,ST_Email,ST_Address,ST_City,ST_Zip,ST_Id,ST_Gender,ST_Level,ST_Age) 
VALUES('Katelin','Kennedy','(202) 523-0154','katelin.kennedy@gmail.com','286 Myrtle Lane ','Rocklin',95677,104,'Male',104,21);
INSERT INTO Student(ST_FirstName,ST_LastName,ST_Phone,ST_Email,ST_Address,ST_City,ST_Zip,ST_Id,ST_Gender,ST_Level,ST_Age) 
VALUES('Tomasa','Carson','(202) 455-0574','tomasa.carson@aol.com','10 Clark Avenue ','East Elmhurst',11369,124,'Male',165,22);
INSERT INTO Student(ST_FirstName,ST_LastName,ST_Phone,ST_Email,ST_Address,ST_City,ST_Zip,ST_Id,ST_Gender,ST_Level,ST_Age)
VALUES('Carter','Casey','(916) 803-1455','Carter.casey@aol.com','7548 Court Lane ','Bronx',10451,175,'Male',151,21);
INSERT INTO Student(ST_FirstName,ST_LastName,ST_Phone,ST_Email,ST_Address,ST_City,ST_Zip,ST_Id,ST_Gender,ST_Level,ST_Age)
VALUES('David','Norris','(202) 552-0124','petronila.norris@aol.com','72 South Marshall Lane ','Rocklin',91733,263,'Male',2,19);
INSERT INTO Student(ST_FirstName,ST_LastName,ST_Phone,ST_Email,ST_Address,ST_City,ST_Zip,ST_Id,ST_Gender,ST_Level,ST_Age)
VALUES('Melanie','Hayes','(202) 545-0754','melanie.hayes@msn.com','5 N. Hall Dr. ','Liverpool',13090,107,'Male',402,21);
INSERT INTO Student (ST_FirstName,ST_LastName,ST_Phone,ST_Email,ST_Address,ST_City,ST_Zip,ST_Id,ST_Gender,ST_Level,ST_Age) 
VALUES ('Alyssa','Johnson', '(202) 555-0174','alyssa.johnson_89@gmail.com','456 Elm St, SpringfieId, USA','New York City','10001',108,'Female',4,21);


----------------Insert values into Department table-------------------------------------------------
insert into Department(DepId,DepName,DepDescription) values(1,'Bussiness','Accounting')
insert into Department(DepId,DepName,DepDescription) values(2,'Professional Technology','Accounting')
insert into Department(DepId,DepName,DepDescription) values(3,'Computer Science','AI')
insert into Department(DepId,DepName,DepDescription) values(4,'Pharmacy','Pharma-D')

----------------Insert values into Course table-----------------------------------------------------
insert into Course(CourseId,CourseName,CourseDescription,CourseCost) values(1,'Introduction to BA','Introduction to business Analytics',4500)
insert into Course(CourseId,CourseName,CourseDescription,CourseCost) values(2,'Advanced Programming','Programming using Python',3000)
insert into Course(CourseId,CourseName,CourseDescription,CourseCost) values(3,'Mangerial Accounting','Introduction to Mangerial Accounting',4600)
insert into Course(CourseId,CourseName,CourseDescription,CourseCost) values(4,'Scientific Thinking','Learn how to think creatively',3500)
insert into Course(CourseId,CourseName,CourseDescription,CourseCost) values(4,'Introduction to Mathematics','Is a prerequisite for Math ll',4000)

----------------insert Payment method into Payment table (Vodafone Cash or Visa or via Bank )-----------------------------------------
INSERT INTO Payment (paymentId, paymentAmount, paymentDate, PaymentMethod) VALUES ('53365891', '13719', '2019-09-11', 'Vodafone_Cash');
INSERT INTO Payment (paymentId, paymentAmount, paymentDate, PaymentMethod) VALUES ('79294931', '17137', '2019-10-23', 'Visa');
INSERT INTO Payment (paymentId, paymentAmount, paymentDate, PaymentMethod) VALUES ('65045398', '15260', '2022-09-20', 'Visa');
INSERT INTO Payment (paymentId, paymentAmount, paymentDate, PaymentMethod) VALUES ('75843960', '18385', '2021-02-18', 'Visa');
INSERT INTO Payment (paymentId, paymentAmount, paymentDate, PaymentMethod) VALUES ('38046499', '1320', '2018-08-28', 'Bank');
INSERT INTO Payment (paymentId, paymentAmount, paymentDate, PaymentMethod) VALUES ('06089141', '14148', '2017-01-14', 'Vodafone_Cash');
INSERT INTO Payment (paymentId, paymentAmount, paymentDate, PaymentMethod) VALUES ('69346677', '30055', '2018-05-30', 'Vodafone_Cash');
INSERT INTO Payment (paymentId, paymentAmount, paymentDate, PaymentMethod) VALUES ('62150988', '15000', '2018-01-20', 'Visa');
INSERT INTO Payment (paymentId, paymentAmount, paymentDate, PaymentMethod) VALUES ('35303430', '33058', '2012-08-27', 'Visa');
INSERT INTO Payment (paymentId, paymentAmount, paymentDate, PaymentMethod) VALUES ('94644633', '43696', '2019-07-05', 'Bank');
INSERT INTO Payment (paymentId, paymentAmount, paymentDate, PaymentMethod) VALUES ('49155089', '20000', '2022-07-24', 'Bank');
INSERT INTO Payment (paymentId, paymentAmount, paymentDate, PaymentMethod) VALUES ('09340580', '33800', '2022-10-25', 'Vodafone_Cash');
INSERT INTO Payment (paymentId, paymentAmount, paymentDate, PaymentMethod) VALUES ('13807791', '12770', '2022-11-05', 'Visa');
INSERT INTO Payment (paymentId, paymentAmount, paymentDate, PaymentMethod) VALUES ('43872155', '21569', '2021-07-02', 'Vodafone_Cash');
INSERT INTO Payment (paymentId, paymentAmount, paymentDate, PaymentMethod) VALUES ('09278692', '10325', '2023-01-13', 'Visa');
INSERT INTO Payment (paymentId, paymentAmount, paymentDate, PaymentMethod) VALUES ('93711033', '18300', '2023-01-19', 'VISA');
INSERT INTO Payment (paymentId, paymentAmount, paymentDate, PaymentMethod) VALUES ('10308333', '32323', '2022-06-10', 'Vodafone_Cash');
INSERT INTO Payment (paymentId, paymentAmount, paymentDate, PaymentMethod) VALUES ('09228692', '10500', '2022-05-14', 'Visa');
INSERT INTO Payment (paymentId, paymentAmount, paymentDate, PaymentMethod) VALUES ('92337212', '18000', '2023-02-20', 'VISA');
INSERT INTO Payment (paymentId, paymentAmount, paymentDate, PaymentMethod) VALUES ('43104155', '21569', '2021-03-02', 'Vodafone_Cash');
INSERT INTO Payment (paymentId, paymentAmount, paymentDate, PaymentMethod) VALUES ('09424692', '10325', '2023-02-13', 'Visa');
INSERT INTO Payment (paymentId, paymentAmount, paymentDate, PaymentMethod) VALUES ('24911033', '18000', '2023-04-19', 'VISA');
INSERT INTO Payment (paymentId, paymentAmount, paymentDate, PaymentMethod) VALUES ('13408333', '18523', '2022-05-10', 'Vodafone_Cash');
INSERT INTO Payment (paymentId, paymentAmount, paymentDate, PaymentMethod) VALUES ('09228292', '14400', '2022-05-14', 'Visa');
INSERT INTO Payment (paymentId, paymentAmount, paymentDate, PaymentMethod) VALUES ('92325212', '18300', '2023-03-20', 'VISA');

------------insert values into employee table-------------------------- 
INSERT INTO employee(EmpId,EmpFN,EmpLN,EmpCity,EmAge,EmAddress,EmSalary)
VALUES(2,'Mireya','Copeland','Monterey',32,'789 Oak Ave',65000);

INSERT INTO employee(EmpId,EmpFN,EmpLN,EmpCity,EmAge,EmAddress,EmSalary)
VALUES(3,'Genna','Serrano', 'Monterey',29,'101 Main St',55000);

INSERT INTO employee(EmpId,EmpFN,EmpLN,EmpCity,EmAge,EmAddress,EmSalary)
VALUES(4,'Virgie','Wiggins', 'Monterey',28,'112 Hill Rd',50000);

INSERT INTO employee(EmpId,EmpFN,EmpLN,EmpCity,EmAge,EmAddress,EmSalary)
VALUES(5,'Jannette','David','New York', 34,'232 Elm Ave',80000);

INSERT INTO employee(EmpId,EmpFN,EmpLN,EmpCity,EmAge,EmAddress,EmSalary)
VALUES(6,'Marcelene','Boyer', 'New York',31,'345 Oak St', 70000);

INSERT INTO employee(EmpId,EmpFN,EmpLN,EmpCity,EmAge,EmAddress,EmSalary)
VALUES(7,'Venita','Daniel','New York',29,'456 Main Ave', 65000);

INSERT INTO employee(EmpId,EmpFN,EmpLN,EmpCity,EmAge,EmAddress,EmSalary)
VALUES(8,'Kali','Vargas','Dallas',36,' 567 Hill Rd',95000);

INSERT INTO employee(EmpId,EmpFN,EmpLN,EmpCity,EmAge,EmAddress,EmSalary)
VALUES(9,'Layla','Terrell','Dallas', 32,'678 Maple St',80000);

INSERT INTO employee(EmpId,EmpFN,EmpLN,EmpCity,EmAge,EmAddress,EmSalary)
VALUES(10,'Bernardine','Houston','Dallas',28,'789 Vine Ave',70000);

------insert values into rooms table------------
insert room( roomld,roomSectionId,CourseHrs) 
values(123,'1021',2)

insert room( roomld,roomSectionId,CourseHrs) 
values(124,'1022',3)

insert room( roomld,roomSectionId,CourseHrs) 
values(125,'1013',2)

insert room( roomld,roomSectionId,CourseHrs) 
values(126,'1201',2)

insert room( roomld,roomSectionId,CourseHrs) 
values(127,'1424',3)


--insert values into Doctor table 
INSERT INTO Doctor VALUES (54 , 'Male','Charles','Simmons','Chicago','789 Some St','charles.simmons@example.com',145000,54);
INSERT INTO Doctor VALUES (101, 'Female','Mary','Martin','Dallas','1011 Some Ave','mary.martin@example.net',125000,101);
INSERT INTO Doctor VALUES (102,'Male','Samuel','Anderson','Boston','1213 Any St','samuel.anderson@example.org',135000,102);
INSERT INTO Doctor VALUES (103,'Female','Olivia','Clark','San Francisco','1415 Another Ln','olivia.clark@example.com',145000,103);
INSERT INTO Doctor VALUES (124,'Male','Gabriel','Lee','Seattle','1617 Some Other Way','gabriel.lee@example.net',155000,124);
INSERT INTO Doctor VALUES (165, 'Female','Isabel','Wilson','Denver','1819 Still Another Rd','isabel.wilson@example.org',165000,165);
INSERT INTO Doctor VALUES (175,'Female','Sophia','Miller','Portland','2021 That Ln','sophia.miller@example.com',175000,175);
INSERT INTO Doctor VALUES (263,'Male','Lucas','Brown','Las Vegas','2223 Some Ave','lucas.brown@example.net',125000,263);
INSERT INTO Doctor VALUES (107,'Female','Mia','Gonzalez','Miami','2323 Still That Way','mia.gonzalez@example.org',135000,107);
INSERT INTO Doctor VALUES (108,'Male','Amelia','Johnson','Atlanta','2121 One More','amelia.johnson@example.net', 145000,108);


----------------Select info from database-----------------------------
--shows full Student name and id --
Select ST_FirstName+' '+ST_LastName 'Student Name' , ST_Id 'Student ID'
FROM Student

--Shows Full Student info--
Select ST_FirstName+' '+ST_LastName 'Student Name' , ST_Id 'Student ID',
ST_Age,ST_City,ST_Email,ST_Phone
FROM Student 


--Shows Students who live in New York City--
Select *
FROM Student 
where ST_City='New York City'

--Shows all Male Students info
Select *
from Student
Where ST_Gender='Male'


--Shows all info of Student  with names Starting with letter A or B or c or D
select * from Student 
Where ST_FirstName like '[abcd]%'


--Shows all info of Student  with Payment method of Visa
select * from Payment 
Where PaymentMethod='Visa'

--Shows all Transactions based on Amount paid of more than 10k
select paymentAmount
from Payment 
where paymentAmount > 10000

--Shows all Transactions info based on Payment method 
select *
from Payment 
where PaymentMethod='Visa' 

--show all Student info with ascending first name order
select *
from Student 
ORDER BY ST_FirstName ASC 

--Selects top 5 percent rows of Student table
select top 5 percent *
from Student 


---------------------------------------------------------------------------------
-------Update

--Updates the attribute value

--update the Age value of student with id=100
update Student
Set ST_Age='25'
where ST_Id=100
--
----------------------------------------------------------------------------------
--edit column data type and constraint
ALTER TABLE DOCTOR
ALTER COLUMN DocFirstName varchar(200) ;

------delete table from databse
--drop table Department

------delete the whole database--
--drop database Project---

------delete column from table
--alter table Course
--drop column CourseCost

--adds new attribute to table Course
alter table Course
add CourseGPA varchar(20) ;

-------Remove all data from table Payment
--Delete From Payment




