-- -- -- employee info it salary > avg(salary)
-- -- select *
-- -- from employee 
-- -- where salary > (
-- -- select avg(salary)
-- -- from employee)

-- -- -- department has high. salary
-- -- select * 
-- -- from department --4
-- -- where id =(
-- -- select deptno
-- -- from employee--4
-- -- where salary = (select max(salary) from employee)--1
-- -- )

-- -- select * 
-- -- from department,employee --16
-- -- where deptno=department.id--4
-- -- and salary =(
-- -- (select max(salary) from employee)
-- -- )
-- -- -- 
-- -- select *
-- -- from employee,department
-- -- where employee.deptno=department.id 
-- -- and id (
-- -- select max(id)
-- -- from department
-- -- )
-- -- -------
-- -- select *,CURRENT_DATE::date-bdate::date
-- -- from employee

-- -- built in function
-- --age ,netsalary
create or REPLACE  function getnetsalary(salary int,ratio int)
returns int as $$
BEGIN
	if salary>5000 then
		select salary*ratio/100;
	end if;
End
$$ LANGUAGE SQL;


select count(*),getnetsalary(10000,10)
from employee




