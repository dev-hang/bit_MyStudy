/**** �񱳱���(�б�ó��) IF��
IF (���ǽ�) THEN ~ END IF;
IF (���ǽ�) THEN ~ ELSE ~ END IF;
IF (���ǽ�) THEN ~ ELSIF ~ ELSIF ~ ELSE ~ END IF;
****************************************/
--Ȧ¦ �Ǻ�
CREATE OR REPLACE PROCEDURE PRC_IF (
    IN_NUM IN NUMBER
) AS 
    V_STR VARCHAR2(100) := '>> ';
BEGIN
    DBMS_OUTPUT.PUT_LINE('>> �Է°� : ' || IN_NUM);
    --¦��, Ȧ�� �Ǻ�
    IF (MOD(IN_NUM, 2) = 0) THEN 
        DBMS_OUTPUT.PUT_LINE(IN_NUM || ' --> ' || '¦���Դϴ�');
    ELSE 
        DBMS_OUTPUT.PUT_LINE(IN_NUM || ' --> ' || 'Ȧ���Դϴ�');
    END IF;
END;
-----
create or replace PROCEDURE PRC_IF (
    IN_NUM IN NUMBER
) AS 
    V_STR VARCHAR2(100) := ' >>> ';
BEGIN
    DBMS_OUTPUT.PUT_LINE('>> �Է°� : ' || IN_NUM);
    
    --¦��, Ȧ�� �Ǻ�
    IF (MOD(IN_NUM, 2) = 0) THEN 
        --DBMS_OUTPUT.PUT_LINE(IN_NUM || ' --> ' || '¦���Դϴ�');
        V_STR := V_STR || '¦���Դϴ�';
    ELSE 
        --DBMS_OUTPUT.PUT_LINE(IN_NUM || ' --> ' || 'Ȧ���Դϴ�');
        V_STR := V_STR || 'Ȧ���Դϴ�';
    END IF;
        DBMS_OUTPUT.PUT_LINE(IN_NUM || V_STR);
END;

-------------------------------
--4�� ���� ������ �� Ȯ��
create or replace PROCEDURE PRC_IF2 (
    IN_NUM IN NUMBER
) AS

BEGIN
    DBMS_OUTPUT.PUT_LINE('>> �Է°� : ' || IN_NUM);
    
    --4�� ���� ������ �� Ȯ��
    IF (MOD(IN_NUM, 4) = 0) THEN
        DBMS_OUTPUT.PUT_LINE('>> 4�� ���� ������ 0');
    ELSIF (MOD(IN_NUM, 4) = 1) THEN
        DBMS_OUTPUT.PUT_LINE('>> 4�� ���� ������ 1');
    ELSIF (MOD(IN_NUM, 4) = 2) THEN
        DBMS_OUTPUT.PUT_LINE('>> 4�� ���� ������ 2');
    ELSE
        DBMS_OUTPUT.PUT_LINE('>> 4�� ���� ������ 3');    
    END IF;
END;
--==========================================
--�ݺ��� : FOR, WHILE 

--FOR �� ���
--���� �ϳ�(N)�� �Է� �޾Ƽ� �հ����(1~N ������ ��)
CREATE OR REPLACE PROCEDURE PRC_FOR_SUM (
    IN_NUM IN NUMBER
) AS
    V_SUM NUMBER := 0; --�հ� �� ���� ����
BEGIN
    --�Է¹��� ���ڱ����� �հ� ���ϱ�
    DBMS_OUTPUT.PUT('1���� ' || IN_NUM || '������ �հ� : ');
    
    --FOR������ �ݺ� ó��
    --FOR ���� IN �ʱⰪ .. ������ LOOP ~ END LOOP;
    FOR I IN 1 .. IN_NUM 
    LOOP
        V_SUM := V_SUM + I;
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE(V_SUM);
END;

--===========================================
--WHILE ��
--WHLIE (���ǽ�) LOOP ~ END LOOP;
--------
--���� �ϳ��� �Է� �޾� �հ� ���(1~N ������ ��)
CREATE OR REPLACE PROCEDURE PRC_WHILE_SUM (
    IN_NUM IN NUMBER
) AS
    V_SUM NUMBER := 0;
    I NUMBER := 1;
BEGIN
    --�Է¹��� ���ڱ����� �հ� ���ϱ�(1~N ������ ��)
    DBMS_OUTPUT.PUT('1���� ' || IN_NUM || '������ �հ� : ');
    
    --WHILE��
    WHILE (I <= IN_NUM) 
    LOOP
        V_SUM := V_SUM + I;
        I := I + 1;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(V_SUM);
END;

--===============================
/* (�ǽ�) ���ڸ� �ϳ� �Է¹޾Ƽ� 1 ~ ���ڱ����� �հ� ���ϱ�
���ν����� : PRC_SUM_EVENODD
--�Է��� ���� Ȧ���� Ȧ������ ���ϰ�
--�Է��� ���� ¦���� ¦������ ���ؼ�
���� ����� ȭ�鿡 ���
<�������>
--�Է¼��� : �Է¹��� ��, Ȧ��/¦��, �հ� : �հ�����
--��¿�) �Է¼���: 4, ¦��, �հ� : 6
--��¿�) �Է¼���: 5, Ȧ��, �հ� : 9
*********************************/

