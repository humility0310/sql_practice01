--multirow subquery

SELECT * FROM EMPLOYEES;

SELECT first_name, salary
  FROM employees
 --문제)job_id가 'IT_PROG'직원들이 받는 연봉보다 많이 받는 직원을 출력
 -- >ALL, <ALL
 WHERE salary > ALL (SELECT salary
                       FROM EMPLOYEES
                      WHERE JOB_ID = 'IT_PROG');


--문제)job_id가 'IT_PROG'직원들이 받는 연봉을 받는 직원을 출력
-- <any, =any, >any

SELECT first_name, salary
  FROM employees
 WHERE salary IN (SELECT salary
                    FROM EMPLOYEES
                   WHERE JOB_ID = 'IT_PROG');

SELECT first_name, salary
  FROM employees
 WHERE salary = ANY (SELECT salary
                       FROM EMPLOYEES
                      WHERE JOB_ID = 'IT_PROG');