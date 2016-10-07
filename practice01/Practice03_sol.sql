-- 1번

SELECT a.employee_id,
       a.first_name,
       b.department_name,
       c.first_name
  FROM employees a, departments b, employees c
 WHERE a.department_id = b.department_id AND a.manager_id = c.employee_id;

-- 2번

  SELECT a.region_name, b.country_name
    FROM regions a, countries b
   WHERE a.region_id = b.region_id
ORDER BY a.region_name ASC, b.country_name ASC;


-- 3번

SELECT a.department_id,
       a.department_name,
       b.first_name,
       c.city,
       d.country_name,
       e.region_name
  FROM departments a,
       employees b,
       locations c,
       countries d,
       regions e
 WHERE     a.manager_id = b.employee_id
       AND a.location_id = c.location_id
       AND c.country_id = d.country_id
       AND d.region_id = e.region_id;

-- 4번

SELECT a.employee_id, a.first_name || ' ' || a.last_name
  FROM employees a, job_history b, jobs c
 WHERE     a.employee_id = b.employee_id
       AND b.job_id = c.job_id
       AND c.job_title = 'Public Accountant';

-- 5번

  SELECT a.employee_id,
         a.last_name,
         a.first_name,
         b.department_name
    FROM employees a, departments b
   WHERE a.department_id = b.department_id
ORDER BY a.last_name;

-- 6번

SELECT emp.employee_id, emp.last_name, TO_CHAR (emp.hire_date, 'yyyy-mm-dd')
  FROM employees emp, employees man
 WHERE emp.manager_id = man.employee_id AND emp.hire_date < man.hire_date;