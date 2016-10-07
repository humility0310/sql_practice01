--alter table

ALTER TABLE book
   ADD (pubs VARCHAR2 (120));

ALTER TABLE book
   MODIFY (pubs VARCHAR2 (200));

ALTER TABLE BOOK
   RENAME COLUMN pubs TO publishing;

ALTER TABLE BOOK
   DROP COLUMN publishing;

ALTER TABLE BOOK SET UNUSED (author);

ALTER TABLE BOOK DROP UNUSED COLUMNS;
--drop table
--drop table book;

--truncate
TRUNCATE TABLE BOOK; -- 데이터값만 삭제

--comment
COMMENT ON TABLE BOOK IS '책 정보를 저장하는 테이블';

SELECT * FROM book;