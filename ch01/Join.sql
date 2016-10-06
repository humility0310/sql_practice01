-- inner join(equi join)

SELECT a.EMPLOYEE_ID,
       a.DEPARTMENT_ID,
       a.FIRST_NAME,
       b.DEPARTMENT_NAME
  FROM EMPLOYEES a, DEPARTMENTS b
 WHERE a.DEPARTMENT_ID = b.DEPARTMENT_ID                             --Join 조건
                                        AND a.SALARY > 5000;         --row 선택조건

--outer join()

SELECT COUNT (*)
  FROM EMPLOYEES a, DEPARTMENTS b
 WHERE a.department_id = b.department_id;

SELECT NVL (a.FIRST_NAME, '소속 사원이 없음'), b.DEPARTMENT_name
  FROM EMPLOYEES a, DEPARTMENTS b
 WHERE a.department_id(+) = b.department_id;--데이터가 더 많은쪽이 오른쪽

 --self join

SELECT emp.FIRST_NAME, man.FIRST_NAME
  FROM EMPLOYEES emp, EMPLOYEES man
 WHERE emp.MANAGER_ID = man.EMPLOYEE_ID;

SELECT emp.FIRST_NAME, NVL (man.FIRST_NAME, 'None Manager')
  FROM EMPLOYEES emp, EMPLOYEES man
 WHERE man.EMPLOYEE_ID(+) = emp.MANAGER_ID;