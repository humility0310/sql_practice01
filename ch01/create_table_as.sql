--create table as

CREATE TABLE employees_temp
AS
   (SELECT *
      FROM EMPLOYEES);

DROP TABLE EMPLOYEES_BACKUP;

SELECT * FROM EMPLOYEES_temp;