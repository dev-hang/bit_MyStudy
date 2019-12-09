SELECT * FROM DEPT;
/* ************************
--���̺� ������ �������� ����
--�÷��� �����ϸ鼭 �÷��������� �������� ����
--�ܷ�Ű(FOREIGN KEY) �������� ���� ����
--���� : �÷��� REFERENCES ������̺�(����÷�)
***************************/
--�÷��������� ��������(�ܷ�Ű) ����
CREATE TABLE EMP01 (
    EMPNO NUMBER PRIMARY KEY,
    ENAME VARCHAR2(30) NOT NULL,
    JOB VARCHAR2(10),
    DEPTNO VARCHAR2(10) REFERENCES DEPT(ID) --�ܷ�Ű ����
);
-----
SELECT * FROM EMP01;
INSERT INTO EMP01 (EMPNO, ENAME, JOB, DEPTNO)
VALUES (1111, 'ȫ�浿', '����1', '10');

--ORA-02291: integrity constraint (MADANG.SYS_C007146) violated
--     - parent key not found
INSERT INTO EMP01 (EMPNO, ENAME, JOB, DEPTNO)
VALUES (2222, 'ȫ�浿2', '����2', '40'); --DEPT ���̺� ���� �����ʹ� �Է¸���
--===================================
--�����ͻ��� ���̺� USER_CONS_COLUMNS, USER_CONSTRAINTS ���
--�������� ��ȸ SQL
SELECT * FROM USER_CONS_COLUMNS;
SELECT * FROM USER_CONSTRAINTS;
SELECT A.TABLE_NAME, A.COLUMN_NAME, A.CONSTRAINT_NAME,
       B.CONSTRAINT_TYPE, 
       DECODE(B.CONSTRAINT_TYPE,
              'P', 'PRIMARY KEY',
              'U', 'UNIQUE',
              'C', 'CHECK OR NOT NULL',
              'R', 'FOREIGN KEY') CONSTRAINT_TYPE_DESC
  FROM USER_CONS_COLUMNS A, USER_CONSTRAINTS B
 WHERE A.TABLE_NAME = B.TABLE_NAME
   AND A.CONSTRAINT_NAME = B.CONSTRAINT_NAME
   AND A.TABLE_NAME LIKE 'EMP%'
;
--======================================
--���̺� ���� ��Ŀ��� �������� ����
CREATE TABLE EMP02 (
    EMPNO NUMBER,
    ENAME VARCHAR2(30) NOT NULL,
    JOB VARCHAR2(10),
    DEPTNO VARCHAR2(10),
    
    PRIMARY KEY (EMPNO), --�⺻Ű(PRIMARY KEY) ����
    FOREIGN KEY (DEPTNO) REFERENCES DEPT(ID)
);
SELECT * FROM EMP02;
INSERT INTO EMP02 (EMPNO, ENAME, JOB, DEPTNO)
VALUES (1111, 'ȫ�浿', '����1', '10');

--ORA-02291: integrity constraint (MADANG.SYS_C007146) violated
--     - parent key not found
INSERT INTO EMP02 (EMPNO, ENAME, JOB, DEPTNO)
VALUES (2222, 'ȫ�浿2', '����2', '40');
---------------------------------------------
--�������Ǹ��� ��������� �����ؼ� ���
--���� : CONSTRAINT ���������̸� ������������
CREATE TABLE EMP03 (
    EMPNO NUMBER,
    ENAME VARCHAR2(30) CONSTRAINT EMP03_ENAME_NN NOT NULL,
    JOB VARCHAR2(10),
    DEPTNO VARCHAR2(10),
    
    CONSTRAINT EMP03_EMPNO_PK PRIMARY KEY (EMPNO),
    CONSTRAINT EMP03_DEPTNO_FK FOREIGN KEY (DEPTNO) REFERENCES DEPT(ID)
);
INSERT INTO EMP03 (EMPNO, ENAME, JOB, DEPTNO)
VALUES (1111, 'ȫ�浿', '����1', '10');

INSERT INTO EMP03 (EMPNO, ENAME, JOB, DEPTNO)
VALUES (2222, 'ȫ�浿2', '����2', '40');

--=============================================
--�⺻Ű(PRIMARY KEY) ������ ����Ű ���
CREATE TABLE HSCHOOL (
    HAK NUMBER(1), --�г�
    BAN NUMBER(2), --��
    BUN NUMBER(2), --��ȣ
    NAME VARCHAR2(30),
    CONSTRAINT HSCHOOL_HAK_BAN_BUN_PK PRIMARY KEY (HAK, BAN, BUN)
);
INSERT INTO HSCHOOL VALUES (1,1,1,'ȫ�浿');
INSERT INTO HSCHOOL VALUES (1,1,2,'ȫ�浿2');
INSERT INTO HSCHOOL VALUES (1,2,1,'ȫ�浿3');
INSERT INTO HSCHOOL VALUES (2,1,1,'ȫ�浿4');

--ORA-00001: unique constraint (MADANG.HSCHOOL_HAK_BAN_BUN_PK) violated
INSERT INTO HSCHOOL VALUES (1,1,1,'������');
--==========================================
/* **** �������� �߰�, ���� ************
--�������� �߰�
ALTER TABLE ���̺�� ADD CONSTRAINT �������Ǹ� �������� (�÷���);

--�������� ����
ALTER TABLE ���̺�� DROP CONSTRAINT �������Ǹ�;
*************************************/
--EMP01 ���̺��� PRIMARY KEY ���� : SYS_C007145 
ALTER TABLE EMP01 DROP CONSTRAINT SYS_C007145;

--EMP01 ���̺� PRIMARY KEY �߰�
--ALTER TABLE ���̺�� ADD CONSTRAINT �������Ǹ� �������� (�÷���);
ALTER TABLE EMP01 ADD CONSTRAINT EMP01_EMPNO_PK PRIMARY KEY (EMPNO);
-------------
INSERT INTO EMP01 VALUES (1111, 'ȫ�浿2', '����1', '10'); --unique constraint (MADANG.EMP01_EMPNO_PK) violated
ALTER TABLE EMP01 DROP CONSTRAINT EMP01_EMPNO_PK; --PK ����

INSERT INTO EMP01 VALUES (1111, 'ȫ�浿2', '����1', '10'); --�ߺ������� �Է�

--EMPNO�� �ߺ������� �Ǵ� NULL���� �����ϸ� PK ���������� ���� �� ����
--�ذ���) �����͸� ����ó�� - �ߺ������� ���� �� �����ؼ� �ߺ� ����
---- NULL���� �ִ� ��� NULL�� �ƴ� ������ ����ó�� �Ǵ� ������ ����
ALTER TABLE EMP01 ADD CONSTRAINT EMP01_EMPNO_PK PRIMARY KEY (EMPNO);
UPDATE EMP01 SET EMPNO = 2222 WHERE ENAME = 'ȫ�浿2';
ALTER TABLE EMP01 ADD CONSTRAINT EMP01_EMPNO_PK PRIMARY KEY (EMPNO);

--===============================
/* **** �������� Ȱ��ȭ �Ǵ� ��Ȱ��ȭ *********
-- ���������� �����Ǿ� �ִ� ���� �������� �Ǵ� ����
ALTER TABLE ���̺�� DISABLE CONSTRAINT �����̸�; --��Ȱ��ȭ(��������)
ALTER TABLE ���̺�� ENABLE CONSTRAINT �����̸�; --Ȱ��ȭ(����)
*************************/
--EMP01�� �ִ� �ܷ�Ű(FOREIGN KEY : SYS_C007146) ���� ��Ȱ��ȭ
ALTER TABLE EMP01 DISABLE CONSTRAINT SYS_C007146; --�ܷ�Ű ��Ȱ��ȭ ó��

INSERT INTO EMP01 VALUES (3333, 'ȫ�浿3', '����3', '40');
--EMP01�� �ִ� �ܷ�Ű(FOREIGN KEY : SYS_C007146) ���� Ȱ��ȭ
ALTER TABLE EMP01 ENABLE CONSTRAINT SYS_C007146;
UPDATE EMP01 SET DEPTNO = 30 WHERE DEPTNO = '40'; --�ܷ�Ű ���� ���� ������ ����
ALTER TABLE EMP01 ENABLE CONSTRAINT SYS_C007146;
--===================================
