-- 숫자 ->문자열

SELECT EMPLOYEE_id, salary FROM EMPLOYEES;

SELECT employee_id, TO_CHAR (salary, '99999') FROM employees;

SELECT employee_id, TO_CHAR (salary, '9999') FROM employees;

SELECT employee_id, TO_CHAR (salary, '09999') FROM employees;

SELECT employee_id, TO_CHAR (salary, '09,999') FROM employees;

SELECT TO_CHAR (3.14158921, '9.99') FROM DUAL;

SELECT TO_CHAR (3.14158921, '9.9999') FROM DUAL;

SELECT employee_id, TO_CHAR (salary, 'fm99999') FROM employees;

SELECT employee_id, TO_CHAR (salary, '$99999') FROM employees;

SELECT employee_id, TO_CHAR (salary, 'L99999') FROM employees;

SELECT TO_CHAR (-12345, '99999mi') FROM DUAL;

SELECT TO_CHAR (-12345, 's99999') FROM DUAL;

SELECT TO_CHAR (12345, 's99999') FROM DUAL;

SELECT TO_CHAR (0, 's99999') FROM DUAL;

SELECT TO_CHAR (-12345, '99999PR') FROM DUAL;

SELECT TO_CHAR (1234, 'RN') FROM DUAL;

SELECT TO_CHAR (1234, 'rn') FROM DUAL;

SELECT TO_CHAR (1234, 'xxx') FROM DUAL;

SELECT TO_CHAR (3234, 'XXX') FROM DUAL;