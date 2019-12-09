/* (�ǽ�) ���̺�� : TEST2
    NO : ����Ÿ�� 5�ڸ�, PRIMARY KEY ����
    ID : ����Ÿ�� 10�ڸ�(����10�ڸ�), ���� �ݵ�� ����
    NAME : �ѱ� 10�ڸ� ���尡����� ����, ���� �ݵ�� ����
    EMAIL : ����, ����, Ư������ ���� 30�ڸ� 
    ADDRESS : �ѱ� 100�ڸ�
    IDNUM : ����Ÿ�� ������ 7�ڸ�, �Ҽ��� 3�ڸ�(1234567.789)
    REGDATE : ��¥Ÿ��
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

INSERT INTO TEST2 VALUES (1, 'hong', 'ȫ�浿', 'hong@naver.com', '����� ���ʱ�', 1234567.890, SYSDATE);
INSERT INTO TEST2 VALUES (2, '',  'ȫ�浿', 'hong@naver.com', '����� ���ʱ�', 1234567.890, SYSDATE);
INSERT INTO TEST2 VALUES (1, 'hong', 'ȫ�浿', 'hong@naver.com', '����� ���ʱ�', 1234567.890, SYSDATE);
INSERT INTO TEST2 VALUES (3, 'honggildong', 'ȫ�浿', 'hong@naver.com', '����� ���ʱ�', 1234567.890, SYSDATE);
INSERT INTO TEST2 VALUES (4, 'hong', 'ȫ�浿�����ٶ󸶹ٻ��', 'hong@naver.com', '����� ���ʱ�', 1234567.890, SYSDATE);
INSERT INTO TEST2 VALUES (5, 'hong', 'ȫ�浿', 'hong@naver.com', '����� ���ʱ�', 1234567.89123, SYSDATE);
--============================================
-- Ư�����̺��� �����Ϳ� ���̺� ������ �Բ� ����
-- TEST2 ===> �����ؼ� ===> TEST3 ���̺� �����
CREATE TABLE TEST3 
AS SELECT * FROM TEST2;

SELECT * FROM TEST2;
SELECT * FROM TEST3;
-------------------------
-- Ư�����̺��� ������ ����(Ư�� �÷���)
-- TEST2 => TEST4 : �����ʹ� ���� ����
CREATE TABLE TEST4
AS 
SELECT NO, ID, NAME, EMAIL, REGDATE FROM TEST2
WHERE 1 = 2;
--=====================================
-- ���̺� ��ü ������ ����
SELECT * FROM TEST2;
DELETE FROM TEST2; --TEST2 ���̺� ��ü ������ ����
ROLLBACK; --DELETE���� COMMIT �� �� ��� ROLLBACK���� �۾� ��� ����
-------------
TRUNCATE TABLE TEST2; -- TRUNCATE TABLE���� ���� ROLLBACK ó�� �� ��
ROLLBACK;
--=================
-- DROP TABLE ���� ���̺��� ������ �����͸� �Բ� ����ó��
DROP TABLE TEST2;
SELECT * FROM RECYCLEBIN;
--=================
/*** ���̺� ���� : �÷� �߰�, ����, ����
DDL : ALTER TABLE
- ADD : �÷� �߰�
- MODIFY : ����
        -- �÷� ������ ���� -> ũ�� : ������ ����
        -- �÷� ������ ū -> �۰� : ������ ���¿� ���� �ٸ�
- RENAME COLUMN �������÷��� TO ���ο��÷���
- DROP COLUMN : ����
* ���̺� �� ���� : ALTER TABLE ���������̺�� RENAME TO ���������̺��;
************************************/
-- �÷��߰� : TEST3 ���̺� ADDCOL �÷� �߰�
SELECT * FROM TEST3;
ALTER TABLE TEST3 ADD ADDCOL VARCHAR2 (10);

-- �÷� ���� : TEST3 ���̺��� ADDCOL -> VARCHAR2 (20); 
ALTER TABLE TEST3 MODIFY ADDCOL VARCHAR2 (20);
UPDATE TEST3 SET ADDCOL = '123456789012345';

ALTER TABLE TEST3 MODIFY ADDCOL VARCHAR2 (15); --������ �ս� ���� OK
-- �����߻� : ����� �����ͺ��� �۰� �÷� ũ�⸦ ������ 
-- ������ �ս� �߻����� ó�� ����
ALTER TABLE TEST3 MODIFY ADDCOL VARCHAR2 (10); -- ���� �߻�

--�÷��� ���� : ADDCOL -> ADDCOL2
ALTER TABLE TEST3 RENAME COLUMN ADDCOL TO ADDCOL2;

--�÷� ����
ALTER TABLE TEST3 DROP COLUMN ADDCOL2;






