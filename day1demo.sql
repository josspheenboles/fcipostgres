-- -- -- sql query
-- -- -- drop table employee;
-- -- create database asd;
-- -- drop database if EXISTS asd ;
-- create table plapla(id int);
-- create database inhertiedfromtemp1 ;
-- create database inhertiedfromtemp0 template template0 ;
create  table department(
id serial primary key ,
name varchar(50) unique
); 

create table employee (
id serial primary key,
fname varchar(20) not null,
lname  varchar(20) not null,
salary real check  (salary>=5000),
gender char(1) default 'F',
bdate date,
deptno int null,
CONSTRAINT dept_fk FOREIGN key (deptno) REFERENCES department(id)

);

--composit pk 
PRIMARY KEY (student_id, course_id)