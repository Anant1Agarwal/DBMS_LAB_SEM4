SET SERVEROUTPUT ON  -- calling
DECLARE
pl_dep instructor.dept_name%TYPE;
BEGIN 
pl_dep:='&inputbuffer';
course_popular(pl_dep);
END;
/