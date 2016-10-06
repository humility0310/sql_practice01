--문제}각 부서별로 최고의 연봉을 받는 직원의 이름과 연봉을 출력

SELECT EMPLOYEE_id, salary
  FROM EMPLOYEES
 WHERE (DEPARTMENT_ID, salary) IN (  SELECT department_id, MAX (salary)
                                       FROM EMPLOYEES
                                   GROUP BY DEPARTMENT_ID);

SELECT a.FIRST_NAME, a.SALARY
  FROM EMPLOYEES a,
       (  SELECT department_id, MAX (salary) AS max_salary
            FROM EMPLOYEES
        GROUP BY department_id) b
 WHERE a.department_id = b.department_id AND a.salary = b.max_salary;

SELECT e.FIRST_NAME, e.SALARY
  FROM EMPLOYEES e
 WHERE e.SALARY = (SELECT MAX (ine.salary)
                     FROM employees ine
                    WHERE ine.DEPARTMENT_ID = e.department_id);