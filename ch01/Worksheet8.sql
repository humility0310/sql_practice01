--집계

  SELECT AVG (salary)
    FROM employees
ORDER BY AVG (salary) DESC;

  SELECT DEPARTMENT_ID, AVG (salary) AS avg_salary
    FROM employees
--WHERE
GROUP BY DEPARTMENT_ID                                  --집계함수와 자주 사용(~별로 묶어서)
ORDER BY avg_salary DESC;

  SELECT DEPARTMENT_id,
         AVG (salary),
         MAX (salary),
         MIN (salary)
    FROM EMPLOYEES
GROUP BY department_id;

  SELECT department_id, AVG (salary)
    FROM employees
GROUP BY department_id
  HAVING AVG (salary) > 5000;