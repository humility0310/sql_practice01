--문제1.

SELECT e.FIRST_NAME || e.LAST_NAME, e.SALARY, d.DEPARTMENT_NAME
  FROM EMPLOYEES e,
       DEPARTMENTS d,
       (SELECT MAX (hire_date) AS max_date FROM EMPLOYEES) e2
 WHERE e.DEPARTMENT_ID = d.DEPARTMENT_ID AND e2.max_date <= e.HIRE_DATE;


--문제2.

--   SELECT DEPARTMENT_ID, AVG (salary) AS avg_salary
-- 	FROM EMPLOYEES
-- GROUP BY department_id;

SELECT e.EMPLOYEE_ID, e.LAST_NAME, e.SALARY
  FROM EMPLOYEES e,
       (  SELECT DEPARTMENT_ID, AVG (salary) AS avg_salary
            FROM EMPLOYEES
        GROUP BY department_id) e2
 WHERE e2.avg_salary < e.SALARY AND e.DEPARTMENT_ID = e2.DEPARTMENT_ID;


--문제3.
-- 부서별 평균연봉

  SELECT AVG (SALARY) AS avg_salary, DEPARTMENT_ID
    FROM EMPLOYEES
GROUP BY DEPARTMENT_ID;

--가장 큰 평균연봉

SELECT *
  FROM (SELECT ROWNUM AS rn, avg_salary, DEPARTMENT_ID
          FROM (  SELECT AVG (SALARY) AS avg_salary, DEPARTMENT_ID
                    FROM EMPLOYEES
                GROUP BY DEPARTMENT_ID
                ORDER BY avg_salary DESC))
 WHERE rn = 1;

--3번결과

SELECT e1.employee_id,
       e1.first_name,
       e1.last_name,
       j.JOB_TITLE,
       e1.SALARY
  FROM EMPLOYEES e1,
       (SELECT *
          FROM (SELECT ROWNUM AS rn, avg_salary, DEPARTMENT_ID
                  FROM (  SELECT AVG (SALARY) AS avg_salary, DEPARTMENT_ID
                            FROM EMPLOYEES
                        GROUP BY DEPARTMENT_ID
                        ORDER BY avg_salary DESC))
         WHERE rn = 1) e2,
       jobs j
 WHERE e2.DEPARTMENT_ID = e1.DEPARTMENT_ID AND j.JOB_ID = e1.JOB_ID;

--문제4.

SELECT *
  FROM (SELECT ROWNUM AS rn, avg_salary, DEPARTMENT_ID
          FROM (  SELECT AVG (SALARY) AS avg_salary, DEPARTMENT_ID
                    FROM EMPLOYEES
                GROUP BY DEPARTMENT_ID
                ORDER BY avg_salary DESC))
 WHERE rn = 1;

--문제5.

SELECT rs.REGION_name 
FROM ( 
          SELECT r.REGION_name, AVG (salary) AS avg_salary
            FROM EMPLOYEES e,
                 DEPARTMENTS d,
                 LOCATIONS l,
                 COUNTRIES c,
                 REGIONS r
           WHERE     d.DEPARTMENT_ID = e.DEPARTMENT_ID
                 AND l.LOCATION_ID = d.LOCATION_ID
                 AND c.COUNTRY_ID = l.COUNTRY_ID
                 AND r.REGION_ID = c.REGION_ID
        GROUP BY r.region_name
        ORDER BY avg_salary DESC
								 ) rs  
WHERE  rs.avg_salary = MAX(rs.avg_salary) ;

--문제6.
select *
  from (
        select ROWNUM AS rn, avg_salary, DEPARTMENT_name
          from(
				  select avg(salary) as avg_salary, DEPARTMENT_name
					from employees e, DEPARTMENTS d
				   where e.DEPARTMENT_ID = d.DEPARTMENT_ID
				group by DEPARTMENT_name
				order by avg_salary desc))
 WHERE rn = 1;