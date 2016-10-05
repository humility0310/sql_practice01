--null 관련 함수

SELECT NVL (NULL, 0) FROM DUAL;

SELECT NVL (1, 0) FROM DUAL;

SELECT EMPLOYEE_id, NVL (commission_pct, 0), NVL (commission_pct, 0) * SALARY
  FROM EMPLOYEES;

SELECT NVL2 (1, 10, 0) FROM DUAL;

SELECT EMPLOYEE_id,
       NVL2 (commission_pct, salary + commission_pct * salary, salary)
          AS "이번달에 지급할 월급"
  FROM EMPLOYEES;

SELECT NULLIF (6, 3 + 2) FROM DUAL;

SELECT COALESCE (NULL,
                 NULL,
                 3,
                 4,
                 5)
  FROM DUAL;

SELECT COALESCE (1,
                 NULL,
                 3,
                 4,
                 5)
  FROM DUAL;

--SELECT employee_id, NVL (manager_id, '매니저 없음') FROM employees;


SELECT employee_id, NVL (TO_CHAR (manager_id), '매니저 없음')
  FROM employees;