--문제1.

SELECT COUNT (*) AS "평균급여 이하 직원수"
  FROM employees
 WHERE SALARY < (SELECT AVG (SALARY) FROM employees);

--문제2.

  SELECT employee_id, last_name, salary
    FROM (  SELECT department_id, MAX (SALARY) AS max_salary
              FROM EMPLOYEES
          GROUP BY department_id) b,
         EMPLOYEES e
   WHERE b.department_id = e.department_id AND b.max_salary = e.SALARY
ORDER BY e.salary DESC;


--문제3. (어려움)

  SELECT department_id, SUM (SALARY) AS sum_salary
    FROM EMPLOYEES
GROUP BY department_id;

  SELECT d.DEPARTMENT_NAME, sum_salary
    FROM (  SELECT department_id, SUM (SALARY) AS sum_salary
              FROM EMPLOYEES
          GROUP BY department_id) e,
         departments d
   WHERE d.DEPARTMENT_ID = e.department_id
ORDER BY sum_salary DESC;


--문제4.

SELECT em.employee_id, em.last_name, em.salary
  FROM (  SELECT department_id, AVG (SALARY) AS avg_salary
            FROM EMPLOYEES
        GROUP BY department_id) e,
       employees em
 WHERE em.DEPARTMENT_ID = e.department_id AND em.SALARY - e.avg_salary > 0;


--문제4-2.

SELECT em.department_id, em.last_name, em.salary
  FROM (  SELECT department_id, AVG (SALARY) AS avg_salary
            FROM EMPLOYEES
        GROUP BY department_id) e,
       employees em
 WHERE     NVL (e.DEPARTMENT_ID, 0) = NVL (em.department_id, 0)
       AND em.SALARY - e.avg_salary >= 0;