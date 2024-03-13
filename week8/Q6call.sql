SET SERVEROUTPUT ON
DECLARE 
CURSOR D1 IS select * from department;
BEGIN
FOR I IN D1
LOOP
DBMS_OUTPUT.PUT_LINE('MAX Salary in ' ||I.dept_name ||' is taken by '||department_highest(i.dept_name));
END LOOP;
END;
/

-- MAX Salary in Biology is taken by Crick
-- MAX Salary in Comp. Sci. is taken by Brandt
-- MAX Salary in Elec. Eng. is taken by Kim
-- MAX Salary in Finance is taken by Wu
-- MAX Salary in History is taken by Califieri
-- MAX Salary in Music is taken by Mozart
-- MAX Salary in Physics is taken by Einstein

-- PL/SQL procedure successfully completed.