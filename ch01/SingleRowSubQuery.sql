--single row sub query

SELECT first_name, salary
  FROM EMPLOYEES
 WHERE SALARY > (SELECT SALARY
                   FROM EMPLOYEES
                  WHERE first_name = 'Lex');

SELECT first_name, salary
  FROM EMPLOYEES
 WHERE SALARY = (SELECT SALARY
                   FROM EMPLOYEES
                  WHERE first_name = 'Lex');

SELECT first_name, salary
  FROM EMPLOYEES
 WHERE SALARY < (SELECT SALARY
                   FROM EMPLOYEES
                  WHERE first_name = 'Lex');

SELECT first_name, salary
  FROM EMPLOYEES
 WHERE SALARY <> (SELECT SALARY
                    FROM EMPLOYEES
                   WHERE first_name = 'Lex');

--문제) 전체 직원의 평균 연봉보다 더 많이 받는 직원의 이름과 연봉

SELECT first_name, salary
  FROM employees
 WHERE salary > (SELECT AVG (salary) FROM EMPLOYEES);