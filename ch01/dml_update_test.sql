--DML

--2)update

SELECT *
  FROM EMPLOYEES
 WHERE EMPLOYEES.DEPARTMENT_ID = 50;

UPDATE EMPLOYEES
   SET SALARY = salary * 1.1, COMMISSION_PCT = 0
 WHERE DEPARTMENT_ID = 50;


-- 3)delete

-- error =>참조키가 있는 경우 삭제가 불가능
-- DELETE FROM EMPLOYEES
-- 	  WHERE EMPLOYEE_ID = 102;

DELETE FROM BOOK
      WHERE AUTHOR_NUM = 1;

DELETE FROM AUTHOR
      WHERE NAME = '박경리';

SELECT * FROM AUTHOR;

SELECT * FROM BOOK;

ROLLBACK;
COMMIT;