SET SERVEROUTPUT ON
DECLARE 
CURSOR D1 IS select * from department;
BEGIN
FOR I IN D1
LOOP
ReqPackage.display_instructor_in_dept(i.dept_name);

DBMS_OUTPUT.PUT_LINE(CHR(10)||'MAX Salary in ' ||I.dept_name ||' is '||ReqPackage.department_highest(i.dept_name) ||CHR(10));
END LOOP;
END;
/
