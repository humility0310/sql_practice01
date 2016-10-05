--문자열 함수

SELECT LOWER ('Database Management System') FROM DUAL;

SELECT first_name, LOWER (first_name) FROM employees;


SELECT UPPER ('Database Management System') FROM DUAL;

SELECT first_name, UPPER (first_name) FROM employees;


SELECT INITCAP ('Database Management System') FROM DUAL;

SELECT CONCAT (CONCAT (first_name, ' '), last_name) FROM employees;

SELECT first_name || ' ' || last_name
  FROM employees;

SELECT SUBSTR ('Database Management System', 2, 4) FROM DUAL;

SELECT LENGTH ('Database Management System') FROM DUAL;

SELECT INSTR ('Database Management System', 'sys') FROM DUAL;

SELECT INSTR (LOWER ('Database Management System'), 'sys') FROM DUAL;

SELECT emplyee_id, LPAD (salary, 10, '*') FROM employees;

SELECT emplyee_id, RPAD (salary, 10, '*') FROM employees;

SELECT TRIM ('#' FROM '####Database###') FROM DUAL;

SELECT '---' || TRIM (' ' FROM 'Data base            ') || '---'
  FROM DUAL;

SELECT '---' || LTRIM ('Data base            ') || '---'
  FROM DUAL;

SELECT '---' || RTRIM ('Data base            ') || '---'
  FROM DUAL;

SELECT REPLACE ('Database Management System', 'System', 'Sys.') FROM DUAL;