--dml test

SELECT * FROM author;

SELECT * FROM BOOK;

--1)insert

INSERT INTO AUTHOR
     VALUES (1, '박경리');

COMMIT;

INSERT INTO BOOK
     VALUES (1,
             '토지',
             TO_DATE ('1985-01-01', 'yyyy-mm-dd'),
             '대여가능',
             1);

SELECT * FROM BOOK;

INSERT INTO BOOK (NO,
                  TITLE,
                  PUB_DATE,
                  STATE,
                  AUTHOR_NUM)
     VALUES (2,
             '토지2',
             TO_DATE ('1985-01-01', 'yyyy-mm-dd'),
             '대여가능',
             1);
			 
			 