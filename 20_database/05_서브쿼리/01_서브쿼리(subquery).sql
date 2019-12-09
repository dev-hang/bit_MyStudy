--��������(�μ�����, subquery)
--SQL��(SELECT, INSERT, UPDATE, DELETE) ���� �ִ� ������(SELECT)
--------------------------
--'������'�� ������ ������ �˻�
SELECT * FROM ORDERS;
SELECT CUSTID FROM CUSTOMER WHERE NAME = '������'; --CUSTID : 1
SELECT * FROM ORDERS WHERE CUSTID = 1;

SELECT * FROM ORDERS 
WHERE CUSTID = (SELECT CUSTID FROM CUSTOMER WHERE NAME = '������')
;
SELECT C.NAME, O.*
  FROM ORDERS O, CUSTOMER C
WHERE O.CUSTID = C.CUSTID
    AND C.NAME = '������'
;
-------
--������, �迬�ư� ������ ���� ��ȸ 
SELECT CUSTID FROM CUSTOMER WHERE NAME IN ('������', '�迬��');
SELECT * FROM ORDERS
WHERE CUSTID IN (SELECT CUSTID FROM CUSTOMER WHERE NAME IN ('������', '�迬��'))
;
-----------------------------------------
--������ ���� ��� ������ �̸��� ���Ͻÿ�
SELECT MAX(PRICE) FROM BOOK; --35000
SELECT * FROM BOOK
WHERE PRICE = 35000;
--
--���������� WHERE ���� ���
SELECT * FROM BOOK
WHERE PRICE = (SELECT MAX(PRICE) FROM BOOK);
---------------------------------
--���������� FROM���� ���
SELECT * 
  FROM BOOK B, 
               (SELECT MAX(PRICE) MAX_PRICE FROM BOOK) M
WHERE B.PRICE = M.MAX_PRICE
;
--------------
SELECT *
  FROM ORDERS O,
               (SELECT * FROM CUSTOMER WHERE NAME IN ('������', '�迬��')) C
WHERE O.CUSTID = C.CUSTID
;
---------------------------------
--SELECT ���� �������� ���
SELECT O.ORDERID, O.CUSTID, O.BOOKID,
                (SELECT NAME FROM CUSTOMER WHERE CUSTID = O.CUSTID) CUSTNAME, --����
                (SELECT BOOKNAME FROM BOOK WHERE BOOKID = O.BOOKID) BOOKNAME,
                O.SALEPRICE, O.ORDERDATE
  FROM ORDERS O
;
---------------------------------
--�������� ������ å ���(����) ��ȸ
SELECT BOOKNAME FROM BOOK WHERE BOOKID = �������̱�����åID;
SELECT BOOKID FROM ORDERS WHERE CUSTID = ��������ID;
SELECT CUSTID FROM CUSTOMER WHERE NAME = '������';
--
--�� ����SQL -> �߰� SQL -> �� �ٱ��� SQL�� ����
SELECT BOOKNAME 
  FROM BOOK 
WHERE BOOKID IN (SELECT BOOKID
                                        FROM ORDERS
                                      WHERE CUSTID IN (SELECT CUSTID 
                                                                            FROM CUSTOMER
                                                                          WHERE NAME = '������')
                                      )
;
-----------------------------------------
--�ǽ�(�������� ���)
--1. �� ���̶� ������ ������ �ִ� ���(��������, ���ι�)
--2. 20000�� �̻�Ǵ� å�� ������ �� ��� ��ȸ(��������, ���ι�)
--3. '���ѹ̵��' ���ǻ��� ������ ������ ���̸� ��ȸ(��������, ���ι�)
--4. ��ü å���� ��պ��� ��� å�� ��� ��ȸ(��������, ���ι�)
-----------------------------------------
--1. �� ���̶� ������ ������ �ִ� ���(��������, ���ι�)
SELECT NAME 
  FROM CUSTOMER
WHERE CUSTID IN (SELECT CUSTID 
                                      FROM ORDERS)
;
SELECT DISTINCT C.NAME
  FROM CUSTOMER C, ORDERS O
WHERE C.CUSTID = O.CUSTID
;
--2. 20000�� �̻�Ǵ� å�� ������ �� ��� ��ȸ(��������, ���ι�)
SELECT NAME 
  FROM CUSTOMER
WHERE CUSTID IN (SELECT CUSTID 
                                      FROM ORDERS
                                    WHERE SALEPRICE >= 20000)
;
SELECT C.NAME
  FROM CUSTOMER C, ORDERS O
WHERE C.CUSTID = O.CUSTID
    AND O.SALEPRICE >= 20000
;
SELECT * FROM CUSTOMER C, 
                                (SELECT * FROM ORDERS WHERE SALEPRICE >= 20000) O
WHERE C.CUSTID = O.CUSTID
;
--3. '���ѹ̵��' ���ǻ��� ������ ������ ���̸� ��ȸ(��������, ���ι�)
SELECT NAME 
  FROM CUSTOMER
WHERE CUSTID IN (SELECT CUSTID 
                                    FROM ORDERS 
                                    WHERE BOOKID IN (SELECT BOOKID 
                                                                            FROM BOOK 
                                                                          WHERE PUBLISHER = '���ѹ̵��'))  
;
SELECT C.NAME
  FROM CUSTOMER C, ORDERS O, BOOK B
WHERE C.CUSTID = O.CUSTID 
    AND O.BOOKID = B.BOOKID
    AND B.PUBLISHER = '���ѹ̵��'
;
SELECT * FROM ORDERS WHERE CUSTID = 1; --������
SELECT * FROM BOOK WHERE BOOKID IN (1,3,2); --������ ����Ȯ��(������ OK)
SELECT * FROM BOOK WHERE PUBLISHER = '���ѹ̵��'; --���ѹ̵�� å���
SELECT * FROM ORDERS WHERE BOOKID IN (3,4); --���ѹ̵�� å ������ ���(�����ϰ� �������̸� OK)

--4. ��ü å���� ��պ��� ��� å�� ��� ��ȸ(��������, ���ι�)
SELECT BOOKNAME 
  FROM BOOK
WHERE BOOKID IN (SELECT BOOKID 
                                        FROM ORDERS
                                     WHERE SALEPRICE > (SELECT AVG(SALEPRICE) 
                                                                                FROM ORDERS))
;
SELECT DISTINCT B.BOOKNAME
  FROM BOOK B, ORDERS O
WHERE B.BOOKID = O.BOOKID
    AND O.SALEPRICE > (SELECT AVG(SALEPRICE) 
                                           FROM ORDERS)
;
SELECT BOOKNAME FROM BOOK
WHERE PRICE > (SELECT AVG(PRICE) FROM BOOK);

SELECT * FROM BOOK B,  (SELECT AVG(PRICE) AVG_PRICE FROM BOOK) AVG
WHERE PRICE > AVG.AVG_PRICE;
