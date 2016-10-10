--pseudo column

SELECT SYSDATE FROM author;

--sysdate

--sysdate 사용 예

INSERT INTO board
     VALUES (1,
             '안녕',
             '밥은먹고다니냐',
             SYSDATE);

--user;

SELECT USER FROM DUAL;

-- rowid, rownum

  SELECT no, TITLE, ROWNUM
    FROM BOOK
ORDER BY TITLE DESC;