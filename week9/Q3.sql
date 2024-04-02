SET SERVEROUTPUT ON
CREATE OR REPLACE
PROCEDURE Course_popular(dept varchar) IS
CURSOR t1 is select * from takes;
CURSOR c1 is select * from course;
counter NUMBER;
MaxCount Number;
pl_dept course.dept_name%TYPE;
Course_Req course.course_id%TYPE;
Course_Reqtitle course.title%TYPE;

BEGIN
pl_dept:=dept;
Maxcount:=0;

FOR courses1 IN c1
LOOP
	IF courses1.dept_name<>pl_dept
	THEN CONTINUE;
	END IF;
counter:=0;
FOR takes1 in t1
	LOOP
	IF takes1.course_id=courses1.course_id THEN
	counter:=counter+1;
		END IF;
	END LOOP;
IF Maxcount<counter THEN
	MaxCount:=counter;
	Course_Req:= courses1.course_id;
	END IF;
END LOOP;
select title
into Course_Reqtitle
from course
where course.course_id=course_req;
DBMS_OUTPUT.PUT_LINE('MOST POPULAR course in ' || pl_dept|| ' is '|| Course_Reqtitle);
END;
/