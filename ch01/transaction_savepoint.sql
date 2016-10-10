--transaction point

COMMIT;

SELECT * FROM BOOK;

--DML1

INSERT INTO BOOK
     VALUES (3,
             '토지3',
             SYSDATE,
             '대여중',
             1);

--savepoint a
SAVEPOINT a;

--DML2

DELETE FROM BOOK
      WHERE NO = 3;

--savepoint b
SAVEPOINT b;

--DML3

INSERT INTO BOOK
     VALUES (3,
             '토지4',
             SYSDATE,
             '대여중',
             1);

--test
ROLLBACK TO a;

SELECT * FROM BOOk;

ROLLBACK;