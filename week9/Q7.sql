SET SERVEROUTPUT ON
CREATE OR REPLACE PACKAGE ReqPackage AS
PROCEDURE display_instructor_in_dept(dept varchar);
FUNCTION department_highest(dept instructor.dept_name%type)
return NUMBER;
END ReqPackage;
/
-- to display instructor names in department
CREATE OR REPLACE PACKAGE BODY ReqPackage AS
PROCEDURE display_instructor_in_dept(dept varchar) IS
pl_dept varchar(20);
CURSOR c1 is select * from instructor ; 
BEGIN
pl_dept:=dept;
DBMS_OUTPUT.PUT_LINE('Instructor from department '|| pl_dept ||' are ' );
FOR I IN C1
LOOP 
IF I.dept_name=pl_dept THEN
DBMS_OUTPUT.PUT_LINE(I.name);
END IF;
END LOOP;
END;

-- to return highest salary from given department
FUNCTION department_highest(dept instructor.dept_name%type)
return NUMBER
AS
highest_salary NUMBER;

CURSOR C1(dept1 instructor.dept_name%type) is select * from instructor where dept_name = dept1;

BEGIN
highest_salary := 0;
For I in c1(dept)
LOOP
IF I.salary>highest_salary THEN
	highest_salary:=I.salary;
END IF;
END LOOP;
return highest_salary;
END;
END ReqPackage;
/