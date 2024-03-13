SET SERVEROUTPUT ON
CREATE OR REPLACE
PROCEDURE Good_day IS 
BEGIN
DBMS_OUTPUT.PUT_LINE('Good Day to YOU');
end;
/

set serveroutput on
declare
begin
Good_day;
end;
/

-- Procedure created.

-- Good Day to YOU

-- PL/SQL procedure successfully completed.