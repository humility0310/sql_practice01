-- 1번

SELECT COUNT (*)
  FROM employees
 WHERE salary < (SELECT AVG (salary) FROM employees);

-- 2번

  SELECT employee_id, last_name, salary
    FROM employees
   WHERE (department_id, salary) IN (  SELECT department_id, MAX (salary)
                                         FROM employees
                                     GROUP BY department_id)
ORDER BY salary DESC;


-- 3번

  SELECT a.job_title, b.sum_salary
    FROM jobs a,
         (  SELECT job_id, SUM (salary) AS sum_salary
              FROM employees
          GROUP BY job_id) b
   WHERE a.job_id = b.job_id
ORDER BY b.sum_salary DESC;

-- 4번

SELECT a.employee_id, a.last_name, a.salary
  FROM employees a
 WHERE salary > (SELECT AVG (salary)
                   FROM employees
                  WHERE department_id = a.department_id);


-- 4번 별해

SELECT employee_id,
       a.department_id,
       last_name,
       salary
  FROM employees a,
       (  SELECT department_id, AVG (salary) AS avg_salary
            FROM employees
        GROUP BY department_id) b
 WHERE a.department_id = b.department_id AND a.salary >= b.avg_salary;