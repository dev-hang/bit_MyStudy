/* (실습) 테이블명 : TEST2
    NO : 숫자타입 5자리, PRIMARY KEY 선언
    ID : 문자타입 10자리(영문10자리), 값이 반드시 존재
    NAME : 한글 10자리 저장가능토록 설정, 값이 반드시 존재
    EMAIL : 영문, 숫자, 특수문자 포함 30자리 
    ADDRESS : 한글 100자리
    IDNUM : 숫자타입 정수부 7자리, 소수부 3자리(1234567.789)
    REGDATE : 날짜타입
*****************************/
CREATE TABLE TEST2 (
        NO NUMBER (5) PRIMARY KEY,
        ID VARCHAR2 (10) NOT NULL,
        NAME VARCHAR2 (30) NOT NULL,
        EMAIL VARCHAR2 (30),
        ADDRESS VARCHAR2 (300),  
        IDNUM NUMBER (10, 3),
        REGDATE DATE
);

INSERT INTO TEST2 VALUES (1, 'hong', '홍길동', 'hong@naver.com', '서울시 서초구', 1234567.890, SYSDATE);
INSERT INTO TEST2 VALUES (2, '',  '홍길동', 'hong@naver.com', '서울시 서초구', 1234567.890, SYSDATE);
INSERT INTO TEST2 VALUES (1, 'hong', '홍길동', 'hong@naver.com', '서울시 서초구', 1234567.890, SYSDATE);
INSERT INTO TEST2 VALUES (3, 'honggildong', '홍길동', 'hong@naver.com', '서울시 서초구', 1234567.890, SYSDATE);
INSERT INTO TEST2 VALUES (4, 'hong', '홍길동가나다라마바사아', 'hong@naver.com', '서울시 서초구', 1234567.890, SYSDATE);
INSERT INTO TEST2 VALUES (5, 'hong', '홍길동', 'hong@naver.com', '서울시 서초구', 1234567.89123, SYSDATE);
--============================================
-- 특정테이블의 데이터와 테이블 구조를 함께 복사
-- TEST2 ===> 복사해서 ===> TEST3 테이블 만들기
CREATE TABLE TEST3 
AS SELECT * FROM TEST2;

SELECT * FROM TEST2;
SELECT * FROM TEST3;
-------------------------
-- 특정테이블의 구조만 복사(특정 컬럼만)
-- TEST2 => TEST4 : 데이터는 복사 안함
CREATE TABLE TEST4
AS 
SELECT NO, ID, NAME, EMAIL, REGDATE FROM TEST2
WHERE 1 = 2;
--=====================================
-- 테이블 전체 데이터 삭제
SELECT * FROM TEST2;
DELETE FROM TEST2; --TEST2 테이블 전체 데이터 삭제
ROLLBACK; --DELETE문은 COMMIT 안 한 경우 ROLLBACK으로 작업 취소 가능
-------------
TRUNCATE TABLE TEST2; -- TRUNCATE TABLE문을 사용시 ROLLBACK 처리 안 됨
ROLLBACK;
--=================
-- DROP TABLE 문은 테이블의 구조와 데이터를 함께 삭제처리
DROP TABLE TEST2;
SELECT * FROM RECYCLEBIN;
--=================
/*** 테이블 수정 : 컬럼 추가, 수정, 삭제
DDL : ALTER TABLE
- ADD : 컬럼 추가
- MODIFY : 수정
        -- 컬럼 사이즈 작은 -> 크게 : 언제든 가능
        -- 컬럼 사이즈 큰 -> 작게 : 데이터 상태에 따라 다름
- RENAME COLUMN 변경전컬럼명 TO 새로운컬럼명
- DROP COLUMN : 삭제
* 테이블 명 변경 : ALTER TABLE 변경전테이블명 RENAME TO 변경할테이블명;
************************************/
-- 컬럼추가 : TEST3 테이블에 ADDCOL 컬럼 추가
SELECT * FROM TEST3;
ALTER TABLE TEST3 ADD ADDCOL VARCHAR2 (10);

-- 컬럼 수정 : TEST3 테이블의 ADDCOL -> VARCHAR2 (20); 
ALTER TABLE TEST3 MODIFY ADDCOL VARCHAR2 (20);
UPDATE TEST3 SET ADDCOL = '123456789012345';

ALTER TABLE TEST3 MODIFY ADDCOL VARCHAR2 (15); --데이터 손실 없어 OK
-- 오류발생 : 저장된 데이터보다 작게 컬럼 크기를 수정시 
-- 데이터 손실 발생으로 처리 안함
ALTER TABLE TEST3 MODIFY ADDCOL VARCHAR2 (10); -- 오류 발생

--컬럼명 수정 : ADDCOL -> ADDCOL2
ALTER TABLE TEST3 RENAME COLUMN ADDCOL TO ADDCOL2;

--컬럼 삭제
ALTER TABLE TEST3 DROP COLUMN ADDCOL2;






