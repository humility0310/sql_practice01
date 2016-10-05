SELECT job_id FROM employees;

SELECT DISTINCT job_id
  FROM employees;

SELECT employee_id,
       salary,
       CASE job_id
          WHEN 'AC_ACCOUNT' THEN salary + salary * 0.1
          WHEN 'AC_MGR' THEN salary + salary * 0.2
          WHEN 'AD_VP' THEN salary + salary * 0.5
          ELSE salary
       END
          AS "이번달 급여"
  FROM employees;

SELECT employee_id,
       salary,
       DECODE (job_id,
               'AC_ACCOUNT', salary + salary * 0.1,
               'AC_MGR', salary + salary * 0.2,
               'AD_VP', salary + salary * 0.5,
               salary)
          AS "이번달 급여"
  FROM employees;