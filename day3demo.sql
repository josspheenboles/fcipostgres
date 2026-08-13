-- -- -a view is a virtual table defined by a SQL query.
-- -- view does not store data physically on disk
-- --Key Benefits of Using Views
-- -- 1- Simplify Complex Queries
-- -- 2- Security & Access Control
-- -- 3- Logical Independence


-- -- Basic View Operations
-- -- 	Creating a View
-- CREATE VIEW employees_view AS
-- SELECT id,fname,lname
-- FROM employee;

-- --	Querying a View

-- select * from employees_view
-- where id>2

-- -- Replacing or Modifying a View(update an existing view without dropping it)

-- CREATE or replace VIEW employees_view AS
-- SELECT id,fname,lname,salary
-- FROM employee;


-- -- Dropping a View
-- DROP VIEW employees_view;


-- --Materialized --->
-- -- 1-Physically stored on disk
-- -- 2-Fast reads because results are precomputed
-- -- 3-Static until manually or automatically refreshed
-- -- 4-Can create indexes to optimize lookups

-- --Standard
-- -- 1-virtual
-- -- 2-Acts as a query macro; re-runs query every time
-- -- 3-Always real-time / up-to-date
-- -- 4-Cannot be indexed directly

-- CREATE MATERIALIZED VIEW monthly_cost AS
-- SELECT     sum(salary) AS totalcost
-- FROM employee


-- select * from monthly_cost;

-- update employee 
-- set salary=10000
-- where id=1

-- select * from monthly_cost;
-- select sum(salary) from employee

-- -- ============================================
-- -- functions allow you to execute custom blocks of logic directly inside the database.
-- CREATE OR REPLACE FUNCTION calculate_net_salary(salary NUMERIC)
-- RETURNS NUMERIC AS $$
--     SELECT salary-salary*10/100
-- $$ LANGUAGE SQL;

-- --call
-- select calculate_net_salary(1000)


-- -- ============================================
-- -- trigger is a special function that the database automatically executes (or "fires") when a specific database event occurs on a table or view.
-- -- Step 1: Create the Trigger Function
-- CREATE OR REPLACE FUNCTION update_timestamp_column()
-- RETURNS TRIGGER AS $$
-- BEGIN
--     NEW.updated_at = NOW();
--     RETURN NEW; -- NEW represents the row about to be written
-- END;
-- $$ LANGUAGE plpgsql;

-- --------------triggers
-- Main table
CREATE TABLE employees2 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    position VARCHAR(100) NOT NULL,
    salary NUMERIC(10, 2) NOT NULL,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Audit log table to capture changes
CREATE TABLE employee_audit (
    audit_id SERIAL PRIMARY KEY,
    employee_id INT,
    action VARCHAR(10) NOT NULL, -- 'INSERT', 'UPDATE', or 'DELETE'
    old_name VARCHAR(100),
    new_name VARCHAR(100),
    old_position VARCHAR(100),
    new_position VARCHAR(100),
    old_salary NUMERIC(10, 2),
    new_salary NUMERIC(10, 2),
    changed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- 
CREATE OR REPLACE FUNCTION log_employee_changes()
RETURNS TRIGGER AS $$
BEGIN
    IF (TG_OP = 'INSERT') THEN
        INSERT INTO employee_audit (employee_id, action, new_name, new_position, new_salary)
        VALUES (NEW.id, 'INSERT', NEW.name, NEW.position, NEW.salary);
        RETURN NEW;
        
    ELSIF (TG_OP = 'UPDATE') THEN
        INSERT INTO employee_audit (
            employee_id, action, 
            old_name, new_name, 
            old_position, new_position, 
            old_salary, new_salary
        )
        VALUES (
            OLD.id, 'UPDATE', 
            OLD.name, NEW.name, 
            OLD.position, NEW.position, 
            OLD.salary, NEW.salary
        );
        RETURN NEW;
        
    ELSIF (TG_OP = 'DELETE') THEN
        INSERT INTO employee_audit (
            employee_id, action, 
            old_name, old_position, old_salary
        )
        VALUES (
            OLD.id, 'DELETE', 
            OLD.name, OLD.position, OLD.salary
        );
        RETURN OLD;
    END IF;
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;

--
CREATE TRIGGER employee_audit_trigger
AFTER INSERT OR UPDATE OR DELETE ON employees2
FOR EACH ROW
EXECUTE FUNCTION log_employee_changes();

--test
SELECT * FROM EMPLOYEES2;
SELECT * FROM employee_audit;
INSERT INTO employees2 (name, position, salary) 
VALUES ('Alice Smith', 'Software Engineer', 75000.00);

UPDATE employees2 
SET salary = 82000.00, position = 'Senior Software Engineer' 
WHERE name = 'Alice Smith';
DELETE FROM employees2
WHERE name = 'Alice Smith';
SELECT audit_id, employee_id, action, old_salary, new_salary, changed_at 
FROM employee_audit;