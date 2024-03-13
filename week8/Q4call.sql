
SET SERVEROUTPUT ON
DECLARE
pl_dep instructor.dept_name%TYPE;
BEGIN 
pl_dep:='&inputbuffer';
course_popular(pl_dep);
END;
/

-- Enter value for inputbuffer: Comp. Sci.
-- old   4: pl_dep:='&inputbuffer';
-- new   4: pl_dep:='Comp. Sci.';
-- Student in Comp. Sci.
-- Zhang
-- Shankar
-- Williams
-- Brown
-- Courses offered in Comp. Sci.
-- Intro. to Computer Science
-- Game Design
-- Robotics
-- Image Processing
-- Database System Concepts

-- PL/SQL procedure successfully completed.
