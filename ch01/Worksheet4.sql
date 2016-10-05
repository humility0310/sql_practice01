--date -> 문자열

SELECT EMPLOYEE_id, hire_date FROM EMPLOYEES;

SELECT EMPLOYEE_ID,
       TO_CHAR (HIRE_DATE,
                'YYYY"년" MM"월" DD"일" AM HH12"시" MI"분" SS"초"')
  FROM EMPLOYEES;

SELECT EMPLOYEE_ID,
       TO_CHAR (HIRE_DATE,
                'YYYY"년" MM"월" DD"일" HH24"시" MI"분" SS"초" DAY')
  FROM EMPLOYEES;

SELECT EMPLOYEE_ID,
       TO_CHAR (HIRE_DATE,
                'YYYY"년" MM"월" DD"일" D"요일" DDD"일째 되는날"')
  FROM EMPLOYEES;

SELECT EMPLOYEE_ID, TO_CHAR (HIRE_DATE, 'year : syear') FROM EMPLOYEES;

SELECT EMPLOYEE_ID, TO_CHAR (HIRE_DATE, 'RR') FROM EMPLOYEES;