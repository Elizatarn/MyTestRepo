create database my_first_db;

drop database my_first_db;

use my_first_db;

create table water(
name varchar(50),
flower varchar(80),
age int);

drop table water; 

create table models(
first_name varchar(30),
celebration date,
tall int,
portfolio bool);

insert into models (first_name, celebration,tall,portfolio)
values ('Eliza', '2001-06-27'),('Sofia','2002-09-08');
select * from models; 
update models set tall =30 where first_name='Eliza';
update models set tall =23 where first_name='Sofia';
 
 alter table models
add column price decimal(4,2);

update models set celebration = '2000-06-17' where first_name = 'Eliza';
update models set celebration = '2000-09-07' where first_name = 'Sofia';
update models set portfolio = 1 where first_name = 'Sofia';

insert into models (first_name, celebration)
values ('Lena','1999-05-09');
update models set celebration = '1999-05-09' where first_name = 'Lena';

alter table models
add column id int NOT NULL auto_increment,
add primary key (id);

alter table models
modify column tall int NOT NULL;
update models set tall = 1 where first_name = 'Lena';

alter table models
modify column id int NOT NULL first;
alter table models
modify column tall int after id;

select * from models; 

create database my_first_db;
drop database my_first_db;
use my_first_db;

create table hotels(
first_name varchar(128),
opening date,
guest  int,
restaurant bool);
insert into hotels (first_name, opening,restaurant)
values ('Novotel', '2007-06-17'),('Marriot','2009-09-08');
select * from hotels; 

update hotels set guest =98 where first_name='Novotel';
update hotels set guest =45 where first_name='Marriot';

 alter table hotels
add column id int NOT NULL auto_increment,
add primary key (id);

alter table hotels
add column resraurant decimal(4,2);
update hotels set restaurant =12 where first_name='Novotel';
update hotels set restaurant =10 where first_name='Marriot';

 create table driver(
 id int not null auto_increment primary key,
 name varchar(40) not null);
 
 create table license(
 id int not null auto_increment primary key,
 penalty_points int not null default 0,
 registration_number varchar(8) unique not null
 );
 
 alter table driver
 add column license_id int unique,
add foreign key (license_id)
references license (id);

select *from driver;
select * from license;
 
 insert into license(penalty_points, registration_number)
 values (421, 'BB12002');
 
 insert into driver (name, license_id)
 values ('Boris',1), ('Ravshan',4), ('Zhamust',5);
 
  
 
 
 
 
 create table pupil(
 id int not null auto_increment primary key,
 first_name varchar (20) not null,
 last_name varchar (40) not null,
 phone_number varchar (15) unique not null
 );

 
 drop table students;
 drop * from pupil;
 
 
 create table pupil_course(
 pupil_id int not null,
 course_id int not null,
 primary key(pupil_id, course_id),
 foreign key (pupil_id)
 references pupil(id),
 foreign key (course_id)
 references pupil(id));
 
  select * from pupil_course;
  drop table pupil;
  CREATE TABLE course (
  id INT NOT NULL AUTO_INCREMENT,
  subject VARCHAR(45) NOT NULL,
  hour int not null,
  PRIMARY KEY (`id`));
  
insert into course (subject, hour)
values ('Biology', '2'),('Math','1');
update course set hour =98 where subject='Biology';
update course set hour =45 where subject='Math';

select*from course;

create table students(
id int not null Auto_increment primary key,
name varchar(30) not null,
last_name varchar(30) not null,
age int not null);

drop table bag;





create table subject(
id int not null Auto_increment primary key,
subject varchar(30) not null,
hours int not null);

insert into students( name,last_name,age)
values ('Eliza','Taranenko',21),
('Olya','Kholoden',28),
('Sasha','Savchuk',28),
('Vlad','Promin',30);

insert into subject( subject,hours)
values ('English',4), ('Ukraine',3),('Math',4),('Fizra',1);

create table students_subject(
students_id int not null,
subject_id int not null,
primary key(students_id,subject_id),
foreign key (students_id)
references students(id),
foreign key (subject_id)
references subject(id)
);

create table bag(
id int not null auto_increment primary key,
color varchar(40) not null,
brand varchar(40) not null,
students_id int,
foreign key (students_id)
references students(id));

insert into bag(color,brand,students_id)
values ('red','Puma',3),
('black','Nike',1),
('white','adidas',3),
('pink','samsonite',4),
('purple','next',2);

select * from bag
left  join students on students.id= bag.students_id;

select * from students; 
select * from subject;
select * from bag;
select *from students_subject;
 



insert into students_subject (students_id, subject_id)
values (1,1), (1,3), (2,3), (3,1),(3,2), (3,3);



select * from students
left JOIN students_subject on students_id=students_subject.students_id
left JOIN subject on subject.id = students_subject.subject_id;

select count(*) from students_subject








 

  
 
  
  
  
  
 
 
 
 
 
 
 
 
 


 
 
 
 



