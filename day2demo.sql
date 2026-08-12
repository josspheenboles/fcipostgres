-- -- -- -- -- -- -- -- insert into department (id,name) 
-- -- -- -- -- -- -- -- values(1,'Opensource'),
-- -- -- -- -- -- -- -- (2,'Java'),
-- -- -- -- -- -- -- -- (3,'AI')

-- -- -- -- -- -- -- -- select * from department;

-- -- -- -- -- -- -- -- insert into  employee 
-- -- -- -- -- -- -- -- values
-- -- -- -- -- -- -- -- (2,'yassen','ahmed',5000,'M','2000-01-01',2),
-- -- -- -- -- -- -- -- (3,'bassent','hassan',6000,'F','2000-01-01',1)

-- -- -- -- -- -- -- -- select * from employee;

-- -- -- -- -- -- -- -- alter table employee
-- -- -- -- -- -- -- -- add column mid int 

-- -- -- -- -- -- -- -- alter table employee
-- -- -- -- -- -- -- -- ADD CONSTRAINT fk_employee
-- -- -- -- -- -- -- -- FOREIGN KEY (mid)
-- -- -- -- -- -- -- -- REFERENCES employee (id);

-- -- -- -- -- -- -- -- select 'Department ' || name from department;

-- -- -- -- -- -- -- -- select 'hello world0;0'


-- -- -- -- -- -- -- -- select count(id),count(name)
-- -- -- -- -- -- -- -- from department;

-- -- -- -- -- -- -- -- select *
-- -- -- -- -- -- -- -- from department
-- -- -- -- -- -- -- -- limit 1 offset 5



-- -- -- -- -- -- -- -- select fname || ' ' || lname from employee;


-- -- -- -- -- -- -- -- -- select fname,lname,salary--3
-- -- -- -- -- -- -- -- -- from employee --1
-- -- -- -- -- -- -- -- -- where id=1--2
-- -- -- -- -- -- -- -- -- -- order by name asc 

-- -- -- -- -- -- -- -- select length(fname)
-- -- -- -- -- -- -- -- from employee


-- -- -- -- -- -- -- select *
-- -- -- -- -- -- -- from employee 
-- -- -- -- -- -- -- where salary between 3000 and 5000

 











-- -- -- -- -- -- select * 
-- -- -- -- -- -- from employee
-- -- -- -- -- -- where salary in (1000,2000,3000)
-- -- -- -- -- -- -- where salary =1000 or salary=2000 or salary=3000

-- -- -- -- -- -- select *
-- -- -- -- -- -- from department,employee
-- -- -- -- -- -- where department.id=employee.deptno

-- -- -- -- -- -- left,right,full outer ,innner
-- -- -- -- -- select *
-- -- -- -- -- from employee inner join department
-- -- -- -- -- on employee.deptno=department.id

-- -- -- -- -- select *
-- -- -- -- -- from employee left join department
-- -- -- -- -- on employee.deptno=department.id


-- -- -- -- -- select *
-- -- -- -- -- from employee right join department
-- -- -- -- -- on employee.deptno=department.id


-- -- -- -- -- select *
-- -- -- -- -- from employee full outer join department
-- -- -- -- -- on employee.deptno=department.id


-- -- -- -- -- select *
-- -- -- -- -- from employee right outer join department
-- -- -- -- -- on employee.deptno=department.id
-- -- -- -- -- where employee.id is null

-- -- -- -- SELECT count(*) as emcount,department.name,department.id --4
-- -- -- -- FROM EMPLOYEE inner join  department --1
-- -- -- -- on employee.deptno=department.id --2
-- -- -- -- group by  department.name ,department.id --3
-- -- -- -- having emcount>5



-- -- -- -- --
-- -- -- -- display employee fnmae and its manage fname


-- -- -- select employee.fname,manager.fname 
-- -- -- from employee right join employee as manager
-- -- -- on employee.mid=manager.id;


-- -- create table myuser(
-- -- id int primary key,
-- -- username varchar(8) not null,
-- -- password varchar(8)
-- -- )
-- -- )


-- -- create table tass(
-- -- detid int
-- -- )INHERITS (myuser);


-- -- create type myname as
-- -- (fname varchar(50),
-- -- lname varchar (50))


-- -- create table emp(
-- -- id int,
-- -- name myname
-- -- )

-- -- select (name).fname from emp; 

-- insert into emp(id,name)
-- values(1,row('ahmed',null))

-- select fname || ' ' || lname
-- from employee

select * from employee;

update employee 
set deptno=1
where id=4


delete from employee
where name='mark';
