--문제 1.

SELECT MAX (salary) AS "최고임금",
       MIN (salary) AS "최저임금",
       MAX (salary) - MIN (salary) AS "최고임금 - 최저임금"
  FROM EMPLOYEES;

--문제2.

SELECT MAX (TO_CHAR (HIRE_DATE, 'YYYY"년" MM"월" DD"일"')) FROM EMPLOYEES;

--문제3.

  SELECT DEPARTMENT_ID,
         AVG (SALARY),
         MAX (SALARY),
         MIN (salary)
    FROM EMPLOYEES
GROUP BY department_id
ORDER BY AVG (SALARY) DESC, MAX (SALARY) DESC, MIN (salary) DESC;

--문제4.

  SELECT job_id,
         AVG (SALARY),
         MAX (SALARY),
         MIN (salary)
    FROM EMPLOYEES
GROUP BY job_id
ORDER BY AVG (SALARY) DESC, MAX (SALARY) DESC, MIN (salary) DESC;

--문제5.

SELECT MIN (TO_CHAR (HIRE_DATE, 'YYYY"년" MM"월" DD"일"')) FROM EMPLOYEES;

--문제6.


  SELECT department_id,
         AVG (salary),
         MIN (salary),
         AVG (salary) - MIN (salary)
    FROM employees
GROUP BY department_id
  HAVING (AVG (salary) - MIN (salary)) < 2000
ORDER BY AVG (salary) - MIN (salary) DESC;

--문제7.

SELECT JOB_TITLE, MAX_SALARY - MIN_SALARY
  FROM jobs;