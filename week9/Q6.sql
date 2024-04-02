SET SERVEROUTPUT ON
CREATE OR REPLACE
FUNCTION department_highest(dept instructor.dept_name%type)
return instructor.name%type
AS
reqInstrucName instructor.name%type;
CURSOR C1(dept1 instructor.dept_name%type) is select * from instructor where dept_name = dept1;
highest_salary NUMBER;

BEGIN
highest_salary := 0;
For I in c1(dept)
LOOP
IF I.salary>highest_salary THEN
	highest_salary:=I.salary;
	reqInstrucName:=I.name;
END IF;
END LOOP;
return reqInstrucName;
END;
/



