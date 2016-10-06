--subQuery

SELECT * FROM EMPLOYEES;

-- 문) 이름(first_name)이 Lex사원보다 월급이 많은 직원들 이름과 월급

--SELECT SALARY FROM EMPLOYEES WHERE first_name = 'Lex';
--SELECT first_name, salary FROM EMPLOYEES WHERE SALARY > 17000;

SELECT first_name, salary
  FROM EMPLOYEES
 WHERE SALARY > (SELECT SALARY
                   FROM EMPLOYEES
                  WHERE first_name = 'Lex');