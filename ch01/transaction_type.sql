--transaction_type

COMMIT;

SET TRANSACTION READ ONLY;

SELECT * FROM book;

DELETE FROM BOOK;

SET TRANSACTION READ WRITE;

SELECT * FROM book;

INSERT INTO BOOK
     VALUES (3,
             '토지3',
             SYSDATE,
             '대여가능',
             1);