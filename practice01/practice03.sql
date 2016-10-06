--문제 1.

SELECT emp.employee_id AS "사번",
       emp.first_name AS "이름",
       dep.DEPARTMENT_NAME AS "부서명",
       man.FIRST_NAME AS "매니저 이름"
  FROM employees emp, EMPLOYEES man, DEPARTMENTS dep
 WHERE     man.EMPLOYEE_ID(+) = emp.MANAGER_ID
       AND emp.DEPARTMENT_ID = dep.DEPARTMENT_ID;

    --문제2.

  SELECT region_name AS "지역 이름", COUNTRY_NAME AS "나라 이름"
    FROM regions r, countries c
   WHERE c.REGION_ID = c.REGION_ID
ORDER BY region_name DESC, COUNTRY_NAME DESC;

    --문제3.


SELECT d.DEPARTMENT_ID AS "부서번호",
       D.DEPARTMENT_NAME AS "부서이름",
       m.FIRST_NAME AS "메니저 이름",
       l.CITY AS "도시",
       c.COUNTRY_NAME AS "나라 이름",
       r.REGION_NAME AS "지역 이름"
  FROM DEPARTMENTS d,
       EMPLOYEES m,
       LOCATIONS l,
       COUNTRIES c,
       REGIONS r
 WHERE     m.EMPLOYEE_ID = d.MANAGER_ID
       AND l.LOCATION_ID = d.LOCATION_ID
       AND l.COUNTRY_ID = c.COUNTRY_ID
       AND r.REGION_ID = c.REGION_ID;

    --문제4.. (emp를 jobhis랑 조인[emp를 job이랑 X])

SELECT e.FIRST_NAME || ' ' || e.LAST_NAME AS "이름"
  FROM JOB_HISTORY jh, JOBS j, employees e
 WHERE     j.JOB_ID = jh.JOB_ID
       AND jh.EMPLOYEE_ID = e.EMPLOYEE_ID
       AND j.JOB_TITLE = 'Public Accountant';

--문제5.

  SELECT employee_id AS "사번",
         FIRST_NAME AS "이름",
         LAST_NAME AS "성",
         department_name AS "부서이름"
    FROM employees, DEPARTMENTS
   WHERE DEPARTMENTS.DEPARTMENT_ID = employees.DEPARTMENT_ID
ORDER BY last_name;

--문제6

SELECT e.EMPLOYEE_ID AS "사번",
       e.LAST_NAME AS "성",
       e.HIRE_DATE AS "채용일",
       m.HIRE_DATE AS "매니저의 채용일"
  FROM EMPLOYEES e, EMPLOYEES m, DEPARTMENTS d
 WHERE     e.DEPARTMENT_ID = d.DEPARTMENT_ID
       AND d.MANAGER_ID = m.EMPLOYEE_ID
       AND m.HIRE_DATE > e.HIRE_DATE;
--HAVING m.HIRE_DATE > e.HIRE_DATE