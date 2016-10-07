--Constraints

DROP TABLE book CASCADE CONSTRAINT;
DROP TABLE author CASCADE CONSTRAINT;
--not null
DROP TABLE BOOK;

CREATE TABLE book
(
   no          NUMBER (10) NOT NULL,
   title       VARCHAR2 (120) NOT NULL,
   pub_date    DATE NOT NULL,
   state       VARCHAR2 (12) NOT NULL,
   author_no   NUMBER (10),
   --   CONSTRAINT c_book_u UNIQUE (no) --unique
   PRIMARY KEY (no),                                             --primary key
   CONSTRAINT c_book_check CHECK (state IN ('대여중', '대여가능')),
   CONSTRAINT c_book_fk FOREIGN KEY (author_no)
   REFERENCES author (no)                                  --ON DELETE CASCADE
                         ON DELETE SET NULL
);



INSERT INTO BOOK
     VALUES (1,
             '토지1',
             TO_DATE ('2005/03/12', 'yyyy-MM-dd'),
             '대여중',
             1);

INSERT INTO BOOK
     VALUES (2,
             '토지2',
             TO_DATE ('2005/03/12', 'yyyy-MM-dd'),
             '대여가능',
             2);

INSERT INTO BOOK
     VALUES (3,
             '공자',
             TO_DATE ('2005/03/12', 'yyyy-MM-dd'),
             '대여가능',
             2);

SELECT * FROM BOOK;



CREATE TABLE author
(
   no     NUMBER (10),
   name   VARCHAR (20) NOT NULL,
   PRIMARY KEY (no)
);

INSERT INTO author
     VALUES (1, '박경리');

INSERT INTO author
     VALUES (2, '공자');

DELETE FROM AUTHOR
      WHERE NO = 2;


ALTER TABLE book
   ADD CONSTRAINT c_book_pk PRIMARY KEY (no);

ALTER TABLE book
   ADD CONSTRAINT c_book_check CHECK (state IN ('대여중', '대여가능'));

ALTER TABLE book
   ADD CONSTRAINT c_book_fk FOREIGN KEY (author_no)
       REFERENCES author (no) ON DELETE SET NULL;



SELECT * FROM AUTHOR;