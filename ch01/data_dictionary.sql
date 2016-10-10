--data dictionary

SELECT * FROM dictionary;

SELECT * FROM user_objects;

--table 조회

SELECT *
  FROM user_objects
 WHERE object_type = 'TABLE';

 --제약조건 조회

SELECT * FROM user_constraints;

SELECT *
  FROM user_constraints
 WHERE table_name = 'BOOK';

--제약조건 컬럼

SELECT * FROM user_cons_columns;

--모든 사용자 확인

SELECT * FROM dba_users;

--현재 접속한 계정정보

SELECT * FROM user_users;

SELECT * FROM all_users;

--계정생성
CREATE USER humility0310 IDENTIFIED BY "0310";

--권한부여
GRANT CREATE SESSION TO humility0310;
REVOKE CREATE SESSION FROM humility0310;

--role 생성
CREATE ROLE reviewer;
--drop role reviewer;

--모든테이블 select할수 있는 권한 role(reviewer)부여
GRANT SELECT ANY TABLE TO reviewer;
-- role(reviewer)에 role(connect)을 추가
GRANT CONNECT TO reviewer;

--사용자계정(humility0310)에 롤 부여
GRANT reviewer to humility0310;