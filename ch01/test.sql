SELECT MAX (AVGS)
  FROM (  SELECT AVG (SALARY) AS avgs, department_id
            FROM EMPLOYEES
        GROUP BY department_id) e;
-----------------------------------------------------------------
  SELECT AVG (SALARY) AS avgs, department_id
    FROM EMPLOYEES
GROUP BY department_id;
----------------------------------------------------------
SELECT *
  FROM (  SELECT AVG (SALARY) AS avgs, department_id
            FROM EMPLOYEES
        GROUP BY department_id) ee
 WHERE ee.avgs = (SELECT MAX (AVGS)
                    FROM (  SELECT AVG (SALARY) AS avgs, department_id
                              FROM EMPLOYEES
                          GROUP BY department_id) e);