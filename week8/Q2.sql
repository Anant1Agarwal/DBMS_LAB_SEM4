SET SERVEROUTPUT ON
CREATE OR REPLACE
PROCEDURE display_instructor_in_dept(dept varchar) IS
pl_dept varchar(20);
CURSOR c1 is select * from instructor ; 
BEGIN
pl_dept:=dept;
DBMS_OUTPUT.PUT_LINE('Instructor from department '|| pl_dept ||'are ' );
FOR I IN C1
LOOP 
IF I.dept_name=pl_dept THEN
DBMS_OUTPUT.PUT_LINE(I.name);
END IF;
END LOOP;
END;
/

SET SERVEROUTPUT ON
DECLARE
pl_dep instructor.dept_name%TYPE;
BEGIN 
pl_dep:='&inputbuffer';
display_instructor_in_dept(pl_dep);
END;
/

-- Procedure created.

-- Enter value for inputbuffer: Comp. Sci.
-- old   4: pl_dep:='&inputbuffer';
-- new   4: pl_dep:='Comp. Sci.';
-- Instructor from department Comp. Sci.are
-- Srinivasan
-- Katz
-- Brandt

-- PL/SQL procedure successfully completed.
