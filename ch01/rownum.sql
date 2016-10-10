--rownum

--문제)직원중에 월급이 상위 10~20 까지 골라낸다
-- rownum이 세팅된 이후에 order by 가 실행되므로 순서가 엉키게 됨

  SELECT e.EMPLOYEE_ID, e.SALARY
    FROM EMPLOYEES e
ORDER BY e.SALARY DESC;

--해결 방법(where절에서 rownum 조건문제때문에 비의도적 출력)

SELECT k.EMPLOYEE_ID, k.SALARY, ROWNUM
  FROM (  SELECT e.EMPLOYEE_ID, e.SALARY
            FROM EMPLOYEES e
        ORDER BY e.SALARY DESC) k
 WHERE 10 <= ROWNUM AND ROWNUM < 20;

 --최종해결방법

SELECT *
  FROM (SELECT k.EMPLOYEE_ID, k.SALARY, ROWNUM AS rn
          FROM (  SELECT e.EMPLOYEE_ID, e.SALARY
                    FROM EMPLOYEES e
                ORDER BY e.SALARY DESC) k) t
 WHERE 10 <= t.rn AND t.rn <= 20;