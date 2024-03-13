SET SERVEROUTPUT ON
CREATE OR REPLACE
PROCEDURE Course_popular(dept varchar) IS
CURSOR s1 is select * from student;
CURSOR c1 is select * from course;
pl_dept course.dept_name%TYPE;

BEGIN
pl_dept:=dept;
DBMS_OUTPUT.PUT_LINE('Student in ' || pl_dept);

FOR I in s1
LOOP
IF I.dept_name=pl_dept THEN 
DBMS_OUTPUT.PUT_LINE(I.name);
END IF;
END LOOP;

DBMS_OUTPUT.PUT_LINE('Courses offered in ' || pl_dept);

FOR I in c1
LOOP
IF I.dept_name=pl_dept THEN
DBMS_OUTPUT.PUT_LINE(I.title);
END IF;
END LOOP;
END;
/