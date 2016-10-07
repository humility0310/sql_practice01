--top-k

SELECT *
  FROM (SELECT ROWNUM AS rn, employee_id, SALARY
          FROM (  SELECT employee_id, SALARY
                    FROM EMPLOYEES
                ORDER BY SALARY DESC))
 WHERE rn = 10;