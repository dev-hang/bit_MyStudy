--------------------------------------------------------
--  ������ ������ - ������-1��-15-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence BK_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BOOKSTORE"."BK_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 86 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CART_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BOOKSTORE"."CART_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 2 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence COMMENT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BOOKSTORE"."COMMENT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 140 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence QNA_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BOOKSTORE"."QNA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 3 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REQ_BOARD
--------------------------------------------------------

   CREATE SEQUENCE  "BOOKSTORE"."REQ_BOARD"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REVIEW_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BOOKSTORE"."REVIEW_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 55 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQNOTICE
--------------------------------------------------------

   CREATE SEQUENCE  "BOOKSTORE"."SEQNOTICE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table AUDIO_BOOK
--------------------------------------------------------

  CREATE TABLE "BOOKSTORE"."AUDIO_BOOK" 
   (	"ORDERID" VARCHAR2(100 BYTE), 
	"A_NUM" NUMBER, 
	"AUDIO" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table BOOK
--------------------------------------------------------

  CREATE TABLE "BOOKSTORE"."BOOK" 
   (	"H_CODE" VARCHAR2(100 BYTE), 
	"L_CODE" VARCHAR2(100 BYTE), 
	"B_NAME" VARCHAR2(100 BYTE), 
	"B_COMPANY" VARCHAR2(100 BYTE), 
	"B_PRICE" NUMBER, 
	"SALE_PRICE" NUMBER, 
	"BUY_NUM" NUMBER, 
	"STATUS" VARCHAR2(50 BYTE), 
	"ST1" VARCHAR2(50 BYTE), 
	"ST2" VARCHAR2(50 BYTE), 
	"CONTENT" VARCHAR2(4000 BYTE), 
	"CREATED" VARCHAR2(50 BYTE), 
	"B_CODE" VARCHAR2(100 BYTE), 
	"B_IMAGE" VARCHAR2(100 BYTE), 
	"B_TYPE" NUMBER, 
	"WRITER_NAME" VARCHAR2(200 BYTE), 
	"CONTENTS" VARCHAR2(400 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CART
--------------------------------------------------------

  CREATE TABLE "BOOKSTORE"."CART" 
   (	"P_NUM" NUMBER, 
	"B_TYPE" NUMBER, 
	"B_CODE" VARCHAR2(100 BYTE), 
	"PRODUCTS_COUNT" NUMBER, 
	"WDATE" VARCHAR2(100 BYTE), 
	"PRICE" NUMBER, 
	"MEMBER_ID" VARCHAR2(50 BYTE), 
	"SALE_PRICE" NUMBER, 
	"B_NAME" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table COMMENTS
--------------------------------------------------------

  CREATE TABLE "BOOKSTORE"."COMMENTS" 
   (	"REVIEW_NUM" NUMBER, 
	"Q_NUM" NUMBER, 
	"REQUEST_NUM" NUMBER, 
	"MEMBER_ID" VARCHAR2(50 BYTE), 
	"CONTENT" VARCHAR2(4000 BYTE), 
	"PASSWORD" VARCHAR2(20 BYTE), 
	"WRITER_NAME" VARCHAR2(50 BYTE), 
	"C_IDX" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table E_BOOK
--------------------------------------------------------

  CREATE TABLE "BOOKSTORE"."E_BOOK" 
   (	"ORDERID" VARCHAR2(100 BYTE), 
	"E_NUM" VARCHAR2(50 BYTE), 
	"E_IMAGE" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table HIGH_CATEGORY
--------------------------------------------------------

  CREATE TABLE "BOOKSTORE"."HIGH_CATEGORY" 
   (	"H_NAME" VARCHAR2(100 BYTE), 
	"H_CODE" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LOW_CATEGORY
--------------------------------------------------------

  CREATE TABLE "BOOKSTORE"."LOW_CATEGORY" 
   (	"L_NAME" VARCHAR2(100 BYTE), 
	"L_CODE" VARCHAR2(100 BYTE), 
	"H_CODE" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "BOOKSTORE"."MEMBER" 
   (	"MEMBER_ID" VARCHAR2(50 BYTE), 
	"USERNAME" VARCHAR2(20 BYTE), 
	"PASSWORD" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE), 
	"ZIPCODE" VARCHAR2(100 BYTE), 
	"ADDRESS1" VARCHAR2(100 BYTE), 
	"ADDRESS2" VARCHAR2(100 BYTE), 
	"MOBILEPHONE" VARCHAR2(20 BYTE), 
	"REGDATE" VARCHAR2(50 BYTE), 
	"U_STATUS" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table NOTICE
--------------------------------------------------------

  CREATE TABLE "BOOKSTORE"."NOTICE" 
   (	"N_NUM" NUMBER, 
	"SUBJECT" VARCHAR2(50 BYTE), 
	"CONTENT" VARCHAR2(4000 BYTE), 
	"WDATE" VARCHAR2(50 BYTE), 
	"UPLOAD" VARCHAR2(1000 BYTE), 
	"B_TYPE" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ORDERS
--------------------------------------------------------

  CREATE TABLE "BOOKSTORE"."ORDERS" 
   (	"O_NUM" NUMBER, 
	"ORDERID" VARCHAR2(100 BYTE), 
	"MEMBER_ID" VARCHAR2(20 BYTE), 
	"B_TYPE" NUMBER, 
	"B_CODE" VARCHAR2(100 BYTE), 
	"PRODUCTS_COUNT" NUMBER, 
	"BUYER_NAME" VARCHAR2(50 BYTE), 
	"BUYER_ZIPCODE" VARCHAR2(100 BYTE), 
	"BUYER_ADDRESS" VARCHAR2(100 BYTE), 
	"BUYER_PHONE" VARCHAR2(50 BYTE), 
	"BUYER_EMAIL" VARCHAR2(50 BYTE), 
	"RECIPIENT_NAME" VARCHAR2(50 BYTE), 
	"RECIPIENT_ZIPCODE" VARCHAR2(100 BYTE), 
	"RECIPIENT_ADDRESS" VARCHAR2(100 BYTE), 
	"RECIPIENT_PHONE" VARCHAR2(50 BYTE), 
	"MESSAGE" VARCHAR2(50 BYTE), 
	"AMOUNT" NUMBER, 
	"PAY_TYPE" VARCHAR2(50 BYTE), 
	"BANK_NAME" VARCHAR2(50 BYTE), 
	"DEPOSIT_NAME" VARCHAR2(50 BYTE), 
	"DEPOSIT_DATE" VARCHAR2(50 BYTE), 
	"STATE" VARCHAR2(50 BYTE), 
	"CANCEL" NUMBER, 
	"WDATE" VARCHAR2(50 BYTE), 
	"B_NAME" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table QNA
--------------------------------------------------------

  CREATE TABLE "BOOKSTORE"."QNA" 
   (	"Q_NUM" NUMBER, 
	"MEMBER_ID" VARCHAR2(50 BYTE), 
	"USERNAME" VARCHAR2(20 BYTE), 
	"PASSWORD" VARCHAR2(20 BYTE), 
	"SUBJECT" VARCHAR2(50 BYTE), 
	"CATEGORY" VARCHAR2(20 BYTE), 
	"R_CONTENT" CLOB, 
	"UPLOAD" VARCHAR2(100 BYTE), 
	"B_CODE" VARCHAR2(100 BYTE), 
	"B_TYPE" NUMBER, 
	"REGDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("R_CONTENT") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table REQUEST
--------------------------------------------------------

  CREATE TABLE "BOOKSTORE"."REQUEST" 
   (	"REQUEST_NUM" NUMBER, 
	"MEMBER_ID" VARCHAR2(20 BYTE), 
	"SUBJECT" VARCHAR2(50 BYTE), 
	"R_CONTENT" CLOB, 
	"PASSWORD" VARCHAR2(20 BYTE), 
	"UPLOAD" VARCHAR2(100 BYTE), 
	"REGDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("R_CONTENT") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table REVIEW
--------------------------------------------------------

  CREATE TABLE "BOOKSTORE"."REVIEW" 
   (	"REVIEW_NUM" NUMBER, 
	"MEMBER_ID" VARCHAR2(50 BYTE), 
	"SUBJECT" VARCHAR2(50 BYTE), 
	"R_CONTENT" CLOB, 
	"UPLOAD" VARCHAR2(100 BYTE), 
	"B_CODE" VARCHAR2(100 BYTE), 
	"ORDERID" VARCHAR2(100 BYTE), 
	"B_TYPE" NUMBER, 
	"PARENTNO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("R_CONTENT") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
REM INSERTING into BOOKSTORE.AUDIO_BOOK
SET DEFINE OFF;
REM INSERTING into BOOKSTORE.BOOK
SET DEFINE OFF;
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K2','���� �ε�ġ�� ���� ������ �� �ž�','�̵��â��',12000,10800,0,'�Ǹ���','�Ż�','����Ʈ��ǰ','���� ������ ��(��) ť���̼� �� �ÿ����� ������ �ü���. �����, ���������� ������, �չ̱��� �������� ������ �����ε� ������� ���ε��� �ÿ��� �������� ��ġ�� �� ������ ���� ��� �ִ�.

���⿡�� �װ� ���� �ð� �뷡�� ����� �̺�("���� ���� ���� ó�� �ٶ� ����� ���� ���� �� ���� ����"_���� ����̶�� ����)�� ������ ��ݰ� ����("��� �߾��� �� ���� �Ҿ���/�� �� �������� �������"_������ ���� ��), ������ ����("���� �� �׷��� ������ ����/���ٿ� ���ǵ� �ٶ��� �ڸ��� ã�� ��� ������ �ٵ��� ����"_�ڼҶ� ��ħ�� �ϸ� ������ �ͽ���)�� ��Ҹ��� ���������� ��� �ִ�.

�ϻ󿡼� ���� ���� ������ �����̱⵵ ������, �پ��� ���� �̸��� ���� �� �ִ� �߿��� �Ű��̱⵵ �ϴ�. �׷��� ���� ���� �ø� ���� �� å�� ��� ���ĵ� �λ��� �� �������� ������ �ϴ� ���ÿ� �� �� �� �� ���� ����� �ڸ� ��� ���� ������ �Ȱ��ش�.','2019.11.20','6','6.jpg',1,'�ÿ���','
�ݼ� 21_�迵��
�ܿﺸ�� Ǫ���� ��-�ﵿ�ϱ� 2_������
���� �տ���_����ȯ
����â��_�̼���
ȥ�� �ֱ� �Ⱦ ���_������
Ȳȥ����4_�̹���
�׷� ���� ����� ��(��)_�ڱԸ�
��ȭ_������
����_���
ź ��_�̱�ȭ
������ ������_��ҿ�
����(���)-1998�� ��_�弮��



');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K3','������ ���','������',18000,16200,0,'�Ǹ���','�Ż�','����Ʈ��ǰ','7�� ���� ��ŸƮ�� ������� ���� 50�� ������� ������ ����� �������� ���ͺ��ϰ�, 40�� ���� �����͸� �м��� ���� �׳�� ��ħ�� ���������� ��С��� �� ���� å���� ����� �� �����ߴ�. �׷��� ź���� �� å�� 53�� ���� �Ƹ��� ����Ʈ������ �ö���, ����Ÿ�ӽ� �� ����Ʈ��Ʈ���� �� ��Ŭ���� 1���� ��������, ����Ʈ��Ʈ������ ��ǥ�� ��2019 CEO�� �� �о���� å���� �����Ǿ���.

�극�� ������ 20�� ������ �������̶�� �� �� �ִ� �������� ��⡻���� �������� ������ ���� �ҼӰ��� ���� �̲���� ������� �������� ��ȭ�� ������ ���, ���п��� �������� �ʴ� ������ ȸ�� ź�¼��� �⸣�� ��, �������� ���� � �ŷڸ� ���� ������� ������ ����� ��վ� ���� ���� ����� �پ��� ���� �ڷ� �� ��ʸ� ���� ������ ���� �ذ���� �ڼ��ϰ� ��� �ִ�.','2019.12.09','11','11.jpg',1,'�극�� ���� (������),������ (�ű���)','
? ���ڿ��� ������ ����
? ����- ���⸦ �����ϰ� ������ ���ư��� ������ ������ �ٸ���

�� 1��- ��༺ �����ϱ�
Vulnerability ��༺:
�������� �������� �ʰ�� ��⸦ ��� �� ����

');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K3','���� ��� ������ ����','û������',20000,18000,0,'�Ǹ���','�Ż�','����Ʈ��ǰ','���ó� �ϻ󿡼���, ����Ͻ������� ������ �̿����� �ʴ� ����� ����. ���� �츮 ������ ü�谡 �Ǿ��ٰ� ���� �� ���� ���̴�. �̷��� ���� ���������� �޸��� �ִµ� �������� �������̶��. ����ü ���� �Ҹ��ϱ�? ��ó�� ������� ������ �� ����� �ٷ� ���ڷ����� ������ ��(Life After Television)������ ��Ʈ��ũ ��ǻ���� ������ �����ϰ� ��Ƽ�� �⽺���� ū ������ �� ���� ����̴�. �� å���� �״� ������ ������ ���� ü���� ġ������ ������ �ذ��ϰ� ����� ���ο� ����� �����ϰ� �ִ�.

���� ���� ������ ���ͳ� ������ �������� �뺯���� �ٰ����� �ִ�. �װ� ���ϴ� ������ ġ������ ������ �����ϱ�? ���ο� ���迡�� ������ ������ �غ��ϰ� ���￡�� �¸��� �� ������? ���� ���Ŀ� ������ ���ο� ������ ���� �� ���ΰ�? ������ ���ͳ� ����� ��� ���ذ���? �߰� ���, ���۰� �Ǹ��ܹ븮�� ����� ����� ������ ������ �ñ��ϴٸ� �� å�� ���ĺ���.','2019.12.16','12','12.jpg',1,'���� ���','CHAPTER 01 - �� å�� ��ŷ�Ϸ����� ����
CHAPTER 02 - ������ ���� ü��
CHAPTER 03 - ������ �Ѹ��� ����
CHAPTER 04 - ���� ������ ����
CHAPTER 05 - ũ���������� 10���� ��Ģ
CHAPTER 06 - ���� �����ͼ���
CHAPTER 07 - �� � ������ ���� �з�����
CHAPTER 08 - ���������� �̴ٽ�
CHAPTER 09 - ������ 3.0



');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K3','���ѹα� �ε��� ��뼳��','�������̵��',19500,17550,0,'�Ǹ���','�Ż�','����Ʈ��ǰ','���������̶�� �ʸ� �ϳ��� �� �̻� ������ �ʿ� ���� ���з� ������ġ�׷� �ε������翬�������� ���� 20�Ⱓ �ε��� ���忡�� ������� ���Ͽ츦 ������ å. ȰȲ��� ������� � ����� ���ǿ����� ��鸮�� �ʰ� �ո����� �ǻ������ �� �� �ֵ��� ������ �ε��� �ȸ��� ���̴� �� �� å�� ��ǥ��.

������ �ε��� ���� å���� ��κ� ��� ������, ��� ��� ���� ���� �ٷ� �����С��̶�� �����ѹα� �ε��� ��뼳������ ���� �ٺ����̰� ������������ �ε��� �ȸ�� ���� �Ƿ��� Ű�� �� �ѷ����� �⺻����. ���ڴ� ����, ����, ����, ��ǰ, ����, ��å�� 6�� Ű����� �����ѹα� �ε��ꡯ�� ���ξ˸����� ������ �� �ֵ��� ���� �����Ѵ�.

���� �츮���� �ε��� �����塯���� Ư¡�� ������ �� �ε��꿡 ���� ū ������ �ִ� �����䡯�� ���� ���Ǹ� �ٽ� ������. �׷��� �ε��� �����ݡ��� ����ǰ���� ���� �ٸ� ������ ����� �ٽ��� ¤�� �� �� �ֱ� �����̴�. �̾� �ε����� �⺻ �� �⺻�� ���������� �м��ϴ� ���Ͽ츦 �����ϰ�, ������ �ε��� ���� ������ ����å���� ��� �Ǵ��ؾ� �ϴ��� �˷��ش�.

���з� ������ �������ѹα� �ε��� ��뼳�������� �ǰ������� �Һ���, ���� �������� ���ü, �׸��� ��å �Ծ��ڱ��� �����ؾ� �ϴ� ���ѹα� �ε��꿡 ���� �λ���Ʈ�� ����� ����ߴ١��� ��å ������ ��� ��ȭ�Ѵٸ� ���� ���ǿ� �°� �ؼ��ϰ� ������ �� ���� �͡��̶�� �����ߴ�.','2020.01.01','13','13.jpg',1,'���з�','��1��. ���� _ ����� �ο��� ����
���� ���� ������ �������?
�о簡 ������, �������ξ� �Ϻ��ϴ�
���� ���⿡�� �������� �������������� �ִ�!
���� ���� ���ٰ�? �������� Ȱ���϶�
�� ���� �ʿ��Ѱ�? �������� �ٲ��
������ ���� ����
�ε��� ���忡 ���뼼���� ����

');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K4','�ƽ��� ���� ������ ��Ģ','����Ͻ��Ͻ�',17000,15300,0,'�Ǹ���','�Ż�','����Ʈ��ǰ','1960�� �Ⱓ�� ���� 3,000�� �� �̻� �ȸ� �ְ��� �ڱ��߼� ���ƽ��� ���� ������ ��Ģ���� �Ⱓ 55�ֳ��� �¾� ���Ӱ� �����δ�. �ݼ��Ⱑ �Ѱ� ���ڵ��� ������ ����� �޾ƿ� �� å�� ���� ī�ױ��ǡ��ΰ�����С��� �Բ� ����ǿ��� ���� ���� �ȸ� �������� �������� �˷��� �ִ�. ���� �� å ���Ŀ� ����� ���� ���� ��� �ڱ��߼��� �������� �򰡹޴´�.

�̹� �������� �� å�� ��ġ�� �ǹ̸� ���ڵ鿡�� ���Ӱ� �˸��� ���ؼ� ������ ������, ���� ���� ����� �����Ͽ� ������ �����ٿ� ��� ��������, ������ ���� �����ϰ� ���� �� �ֵ��� ����� ������ �����ߴ�.

���ƽ��� ���� ������ ��Ģ���� ����, �ɸ��� �� �γ� ������, ���̹���ƽ�� ���� �й��� ������ �ʺ� �ݿ��� źź�� �̷��� ��������, ������ ������ ���ڵ鿡 ���� ������ ��õ���� ��� �ִ�. ������ݿ��� ��ȸ�� ���� �����ϴ� �ΰ����� ������ ǳ��, �װ��� �̷�� ���� �ǽ� ��ȭ�� �ھ� ������ �� �Һ��� ������ ��εǾ���, �׿� ���� �ڱ��߼��� ������ ������ ����� �޾ƿԴ�.

�׷��� �հ������� ���� �� �ִ� �� ���� ����� �ݺ��Ǵ� ����, �и��� �̷��̳� �й��� ���� ���� ����, ����� ������ ������ ���ƴٴ� �Ѱ谡 �־���. �̷� ������ ���ƽ��� ���� ������ ��Ģ���� ���Ŀ� �Ⱓ�� ������ �ڱ��߼��� �Ѱ踦 ��õ������ �غ���, ����� �� �ڱ��߼��� �������� �ջ��� ����.
','2019.12.03','16','16.jpg',1,'�ƽ��� ���� (������)','��1�� �ھ� �̹������� �ٲ��: �ڽ��� �Ѱ踦 �پ�Ѵ� ���� ������ ����
��2�� �̰��� ������ �ھ� �����̴�: �� �ȿ� �ִ� ���� ��Ŀ������ �۵���Ű��
��3�� ������ �̿��϶�: ������ ������ �ϱ���� ������
��4�� �߸��� ������ ������: ���п� �ɷ� �����̶�� �ָ鿡�� �����

');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K4','5�� �� ������','����̵�',16800,15120,0,'�Ǹ���','�Ż�','����Ʈ��ǰ','2010�� �̱����� �Ⱓ�Ǿ� ����, ����, �� ���� ���̾�� ������ ������ ��5�� �� ������ : Q5000 a day���� 2020���� �¾� �� ����� �����ϴ� Ư�� �������� �����δ�. ���� ������ ���� �߰��ϰ� �츮 ���� ������ ��ȭ�� ������ ȿ�������� ����� �� �ֵ��� ������ ��5�� �� ������ : Q6000 a day���� �����ϰ� ��޽����� �����ο� ��Ȥ���� �����带 ���� ���Ӱ� �¾��. 2020 ������ ����Ƽ�� ������� ��#�� �׻� �� �����ء���� �޽����� ��� �ٻ� �ϻ� ��ģ ���� ����, ������ ģ��, ����, ����, ���ο��� �����ϱ� ���� å�̴�.

�� å���� �Ϸ翡 �ϳ���, 1�� ���� �� ���� ����� �� �ִ� �����Ӱ� ������ �� 365���� ������ ��� �ִ�. �� 365���� ������ �� �� ���� ���鸸 ���ڵ��� �� å�� ������ ������. �������� ���� ���� ������ ǥ���Ѵٸ�?���� ���� ö���� �������� ���Ӹ��� ���� �ʰ� ��ƾ ���� �����?���� ���� ������ ������ �ҷ����� ��������, �츮 � ��ġ�� ����, ������ ������ �Ҿ�ִ� ������ �������� ���� ����س����� ����, ������ ������� ���ߴ� �츮 ���� ���� ������ ������ ������ ���� �ִ� ���� ��ȸ�� ������ �ȴ�.

���� ��ġ�� ���� �� ��� ���� ���� ����ϴٰ� �ݰ� ���� ����� ���̾�� �ƴϴ�. ���ݺ��� 5�� ���� �츮 � ����ó�� ���� �ִ� ��Ʈ�� �ܼ�, ���°� â�Ƿ��� �����ϴ� 365���� ������ ���� �Ϸ翡 �ϳ���, ���� ���� �� �ִ� �������� �ȳ��Ѵ�. �� ���� ������ ���� 5�Ⱓ 5���� ���� ����� �� �ִ�. �̸� ���� �ذ� �ٲ�鼭 ���� ���� ��� �޶������� �Ѵ��� Ȯ���� �� �ִ�.

5�� ���� � ���� ��ƿԴ���, � ����� ��ȭ�� ���ĿԴ���, � ������ ���� ������ �ູ�ߴ����� �����ϰ� ������ �� �ְ� ���ش�. 1�� �� ��� ���� �����ص� ������. ���� �Ϸ翡 �ϳ��� �־��� �����ο� ������ �������ν�, �� å�� 5�� �� �츮 � ���� �Ƹ���� ������ ������ �Ǿ��ش�.','2019.11.01','17','17.jpg',1,'���� ��Ÿ�� (������)','����');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K3','�з��Ͼ� ���ڳ��','���÷翣��',17000,15300,0,'�Ǹ���','�Ż�','����Ʈ��ǰ','�� ���������� 1981~1996�⿡ ź���� �з��Ͼ� ���밡 �Һ�, ����, ����, ����� ������ �Ǵ� ���з��Ͼ� ���ڳ�̡��� �ô밡 �����ߴ�. Ư�� 2020���� �������� �з��Ͼ� ����� ������ �ֵ����� ��� ���� ����ʹ� �ٸ� �Һ�, ����, ���ڸ�, ����� ��ȭ�� �̲��� �� ���̴�. �츮 ������ �׷��� �帧�� �Ž��� �� ����. �׷��� ���� �ѱ����� �� ������ ���� ������ ����, �Һ�, ����, ��� �ι������� Ȱ���� ���ġ �ʾ� ���δ�. �� ������ �����ϱ�.

���� ��ǥ���� �� ���ڳ�̽�Ʈ�� ȫ��� �ڻ�� ������ ������ �Ű� ���з��Ͼ� ���ڳ�̡��� ���� �����뱳ü �������� ������ ������ ã�� ���ÿ� IT, ����, ����, ����, ���� �� �� ��� �о��� ���ο� �帧�� �����ϸ�, �з��Ͼ� ���밡 � �Һ�� ���� ������ Ű������ �ִ��� ����� ���ƴ�.

������ �پ��� �����͵��� �ٰŷ� �� �������� �ε��� ����, ���������� ��ŸƮ�� ��ǳ, �޷����� ��Ʈ���α����� ��� ����ó, ���⿬�� ���ǿ� ���ο��� �� �̽��� �̸��� ��ä�ο� �����鿡 ���� ������ ��Ҵ�. �� å�� ���� �� �о߿��� Ȱ���ϰ� �� �з��Ͼ� ����� �̵��� �θ𼼴��� 50~60�� ���ڵ鿡�Ե� ����� ���� ��ħ���� �Ǿ� �� ���̴�.','2019.10.28','14','14.jpg',1,'ȫ���,������ (������)','Chapter 1. �ѱ��� �з��Ͼ��� �� ����� �����������
����� ���ʷ� �θ𺸴� ������ ������ ź��?
����� �뵿���꼺�� �е��ϴ� �ô���� ��ȯ
[issue talk 1] �� ���ڳ�̽�Ʈ�� ������ �з��Ͼ� �Ĺ��
������ ö ���� ����������



');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K3','�� ����� ����� Ǯ��','����Ͻ� ��',18000,16200,0,'�Ǹ���','�Ż�','����Ʈ��ǰ','�Ű渶���� �о��� �ְ� ���������� �������� ������� ������ �� �귣�� �ڹ��� �ð� �ִ� �ѽ�-�Կ���ũ ȣ���� �ڻ��� �����̴�. ���ڰ� �����ϴ� �ٽ� ������ �Һ����� ������ ���⸦ �����ϴ� ���� �ְ��� �Ű渶���� ���� ������� �ʡ�(Limbic�� Map)�̴�. 15�Ⱓ�� �� ������ �������縦 ���� ���ڰ� ������ ������� ������ ����� ���� �����ǽ��� �ΰ��� ����Ȱ���� ��� �����ұ�?����� �ǹ��� ���� ������ �ش��� �����Ѵ�.

�� å�� �ΰ��� �� ���� �鿩�ٺ��� ���ο� ����� �̿��� ������ ȹ�������� ������ �� �ִ� ȿ������ ����� �����Ѵ�. ���������� ����� �� ���� ���� �ý���, �� ���� 3��(Big 3)�� �� �����. �� 3���� ���� �ý���(������ ���� �屸), �ڱ� �ý���(���ο� ��, ü�迡 ���� �屸), ���� �ý���(�Ƿ¿� ���� �屸)�� ������, �� �� ���� �屸�� �پ��� ȯ��� ��Ȳ�� ���� ���� �浹, Ÿ��, �����ϸ� ����Ȱ���� �����ϰų� �ڱ��Ѵ�.

�� 3��� ������������ ������ ���󰡴� ����, �����ϰ� ���� �ΰ� �ɸ��� ��� �̼��� ���̰� �����ϸ� ���ű��� �̸��� �ϴ��� �� ������ �ص��� �� �ִ�. �׸��� ���� �Һ��ڵ��� ���� ������ � ��ǰ�� �����ϴ����� ���� ������ �ܼ��� ���� �� �ִ�.','��¥','15','15.jpg',1,'�ѽ�-�Կ���ũ ȣ���� (������)','Part 1 ���� ��ǰ�� �����ϴ� ����
Chapter 01 �� ����, �����ϰ� ���� �ִ� ��Ȥ�� ã��
Chapter 02 ���� �� �ӿ� ������ �ִ� ��¥ ���ŵ���
Chapter 03 ��ǰ�� ������ ���ǽ����� ��
Chapter 04 �Ӹ��ӿ��� ���Ű����� ����Ǵ� ����
Part 2 ���Ű����� �ϴ� ���� ���� ����

');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K4','��ġ��','���̽�����Ŀ',18000,16200,0,'�Ǹ���','�Ż�','����Ʈ��ǰ','�� �̻� �������� ������ �������� �ʴ� �ô�. ������� � �����ϴ� ������� ���ĳ��� �ô�. ������ �츮�� ������ ��������� ���� �¾�� �ʴ´�. ���� �츮���� �ʿ��� ���� �����ΰ�. �������� ����Ʈ���� �۰� ���� ����� ��� �ΰ����� ������ �������� ������ ���� ������ ��ġ�� �۷� ���ڵ��� �̲���.

�Ŵ��� ��� �� ��Ϲ���ó�� ���� ��ü�Ǵ� ����� ��ư� ������, ������ ���� �������� ����� �ŵ쳯 �������� ������ ������. �뵿�� �ӱ��� �¹ٲٴ� �� �ӹ��� �ʰ�, �ڽ��� ��ġ�� ������ ����� ���� ����ϸ�, ���� ������ �� �ִ�, ���� ��� ũ�������͵��� Ž����, ���ο� �ô��� ���ο� �Ƿ��� ���� ��ġ������ �ŵ쳪�� ���� ������� ���� å�̴�.','2019.12.28','18','18.jpg',1,'���� ��� (������)','
���� ��
������ �ô� ����, ���ο� ������ ź���ϴ�
���� � ������ �ߴ°�
�츮�� �������ϰ� ���Ҵ�
���ο� ����, ��ġ�� ����
�������� ��Ϲ����� ��ư� ���ΰ�
�� ������ Ƣ�� ���� �η����ϴ°�
������ ��
���� ���� ������ �����ϱ�
���翡 ������ ���ΰ�, ���̸� ���� ���ΰ�


');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K4','��Ŀ�� ���̾��','���������Ͽ콺',14500,13050,0,'�Ǹ���','�Ż�','����Ʈ��ǰ','2018�� 11�� �� ���� ���� �Ⱓ�Ǿ� �̱��� �ƴ϶� �� ���������� 1000�� �ΰ� �ǸŵǴ� ���� ����� �޼��� �̼� ���ٸ��� ����Ŀ�֡��� ������� ���� �������� �ڼ������̶�� �򰡸� �ް� �ִ�. å �Ⱓ ���� �̼� ��ǳ�̶� �� ��ŭ ���������� �߰ſ� ȣ���� ������, �̼��� ��ǻ�� ���ô��� �����ܡ����� �λ��ߴ�.

�̼��� �̱� ������ ���� �۽�Ʈ���̵�� �Ҹ�����, å�� ���� ��ġ������ �ʴ�. �ڱ� �ڽ��� ����� �˰�, �޾Ƶ��̰�, �ڽ��� ��Ҹ��� ��������� �δ��� ������ �����ϰ� �ܴ��ϰ� �׷�����. �׳��� �̾߱�� Ư�� ���� ���ڵ鿡�� �︲�� �����, #becoming�� ��ȭ�� ������ Ű����� �ڸ� ��Ҵ�.

����Ŀ�� ���̾�ϡ��� �ڱ⸸�� �̾߱⸦ �޾Ƶ��̰� ����� ������ ���� ��ü�� ����Ŀ�֡�, �� ������ �ٽ����� ���Ҵ� �̼��� �޽������� ����ϴ� ���̾���̴�. �ڱ⵵ ������ �ڽ��� �߰��ϰ� ����� �� �ֵ��� �ε巴�� ���� �����ϰ� ���ڸ� �۾���� �̲��� 155���� ������� �̼��� �޽����� ��� �ִ�.
','2019.12.24','19','19.jpg',1,'�̼� ���ٸ� (������)','����');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K4','�︸���� ��ũ��','����̵�',17000,15300,0,'�Ǹ���','�Ż�','����Ʈ��ǰ','�� ���� ������Ÿ��鼭 ��µ��� �λ����� ���ϴ� ������ �������� ���ϴ���, �� ���ݺ��� �� ���� �����ϰ� ������ �� �Ȱ��� ���¿� �ӹ����� ������ �ڹ��غ� �� �ִ°�? �׷��ٸ� �� å�� ���� ���� ���̴�.

���︸���� ��ũ������ ���ڰ� �̱�, ������ ����� �ѱ�, �±�, �߱� �� �� ���踦 ����� 5�Ⱓ ���� ������ ���� �˾Ƴ� �ְ� �ڻ갡���� 20���� ���������� ���� å�̴�. īī�� ����� ������ ����� �е��� ������ �ŵ� 21���� �ڼ����� �︸���ڸ� ���� �̵��� ������ ������ ������ ������ �����Ѵ�.

���� � ����̳� å������ ������ �� ���� �� �ô� �ְ� ���۸�ġ���� ����� ������ �ٶ󺸴� �ð��� ��ī�Ӱ� �����Ѵ�. �̸� ���� ���� ������ �Ұ� ��ü�ƴٰ� ������ ����鿡�� �λ��� �ʹ�����Ʈ�� ����� ������ ������� �ɾ��ְ� ������ ������� �ϱ����ش�.','2019.12.02','20','20.jpg',1,'���Ŀ� �����Ʊ� (������)','CHAPTER 1. ���󿡼� ���� ������ ������� ����

ù ��° ���: �︸������ ������ �׷��� �ʾҴ�
�� ��° ���: ���� ������ ���� ������ ������
�� ��° ���: �� �� �ִ� ���� ū ���� ���
�� ��° ���: ���� ������ �ϴ� �Ͼ��
�ټ� ��° ���: �︸���ڴ� �ٸ� ���� ���Ҵ�
');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K1','�����','Ȳ�ݰ���',15000,13500,0,'�Ǹ���','����','����Ʈ����','2019 ��Ŀ�� ����������, ���� �Ƿ��� ����� �� �����Ǿ� �Ҽ��� ��ǥ�� ���ó� �̾߱⡻�κ��� 15�� �ĸ� �׸� ��������, ���� �ٸ� ȯ��� ������ ���� �� ������ ������ �������� ���ۿ��� Ǯ��� ���� �̾߱�� �Բ� �渮��� ������ ���� ������ �ٷ�� �ִ�.

���ó� �̾߱⡻�� �ó� ���������带 �߽����� �� �ֺ� �̾߱⸦ Ǯ���� �� ���� ������须�� �� ���� ���� �ٸ� ������ ����ϰ� ���⸦ ���� �渮��� ���ݿ� ���� �̾߱⸦ Ǯ���. Ư�� ���ۿ��� �Ǹ���� ���������� ö�� ���� ����� ���ָӴϰ� ������ �� �ϳ��μ� ���⸦ ���� �渮����� ������ �Ƿ��ڵ��� �γ��� �巯���°� �ϸ�, ���ָӴ� ����� ��������� �� �������� �׵鰣�� �븳�� �� �� ġ�θ� ���� ����Ѵ�.

�� �ٸ� �����ڴ� �渮����� ������ ���� ��°�� ��鸰 ĳ���� �ҳ� �������μ�, �� ������� ���ؼ��� �渮��� ������ ��Ȳ�� ���� ����ȴ�. �渮��� ���ǿ� ���� �ݴ� ��Ҹ��� ���̴� �л����� ������, �׷��� ���ε��� �ݴ� �������� �渮����� ������ ����� ������ �� ��Ҹ��� �� ���� ĳ���� ����, ��и��� ĳ���ٿ� �ִ� ��(��)�渮��� ��ü�� ������ ���ų� �ϻ� �� �׷��� �õ��ϰ�, �ٸ� �������δ� ���� �ҳ� ��� �������� �İ��Ͽ� ���� �ΰ��ε��� �����ϴ� �渮����� ��� ���� ����ȴ�.','2020.01.03','1','1.jpg',1,'���Ÿ� ��Ʈ���','
I ���� 12
II ���� �� 12
III ���� 12
IV Ŭ���� �Ͽ�� 12
V �� 12
VI ������ ���� 12
VII ��Ÿ��� 12
VIII ī���� 12
IX ��ũ ��ũ 12
X ���� �ʷ� 12
XI ���� 12
XII ī���� 12
XIII �������� 12
XIV �Ƹ��ξ� Ȧ 12
XV ����� ����� 12
XVI ���� �ҳ� 12
XVII �Ϻ��� ġ�� 12
XVIII ���� �� 12
XIX ���� 12







');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K1','�ִܰ��','���е���',12000,10800,0,'�Ǹ���','����','����Ʈ����','������� <���� ����>, õ����� <��>, ������ <ĳ���>���� �ѱ����п� �Ƿ��� ����ǥ�� ���� ������ ��ǰ���� �����س� ���е��׼Ҽ����� ��25ȸ ������ <�ִܰ��>�� �Ⱓ�Ǿ���. Ȳ������ <�������� ���ɵ�> ���� �� �� ���� �������̴�. ���� �ְ� �ż��� ���°� ��ī�ο� �ô������� ���� �����۵��� �����̸� ���ڸ� �Ǹ���Ų �� ���� ���е��׼Ҽ����� ����� �̹� �����ۿ����� ���Ծ��� ��ӵȴ�.','2019.12.19','2','2.jpg',1,'����','Ʈ�� ���� 13
�� ���� 28
���� ���� 47
��ǥ ���� 63
ÿ�� ���� 83
���� ���� 97
���� ���� 131

�ɻ��� ���� 167
�����۰� ���ͺ� | ��ȭ��(�Ҽ���) ���� 176
���� �Ұ� ���� 186');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K1','��,Ƽ���� ���Ϸ��� ���� ����','���೪��',13000,11700,0,'�Ǹ���','�Ż�','����Ʈ��ǰ','2018 ��� �뺧���л� ���� ��ī���� ���л� ���� �۰�, ������ �ᵥ�� ��ǥ��. ���Ϸ��� ���� ���ǿ��� ��Ƴ��� ���� ���� �뿹�� ��� ���� ���縦 ��Ҵ�. �۰��� ����, Ƽ���١���� �����Ͽ� Ƽ������ ź�� �������� ���� ���ı��� ����(����)�� �ڼ��������� �ٷ�鼭 ��3���� ������ ���� �߽��� ����� �ؽ�Ʈ�� �������.

�ᵥ�� Ƽ���ٶ�� �ٺ��̵��� ��� ���� ������ �̱� �Ż��߼������� �뿹�� �����Դٰ� 1692�� ���Ϸ� ������ �ٸ� ������ ����顯�� �Բ� ������ ���� ����� �쿬�� ���ϰ� �Ǵµ�, ���� �� ������ ������ ���ؼ��� �ƹ��� ������ ã�� ���Ѵ�.

����ϰ� ����� ���ȴ� �ٸ� ������� ���ǵ� �ݸ�, Ƽ���ٰ� �Ƹ��� ���� ���� �뿹���⿡ ������ �ֺ��η� �з���������� ���� �ΰ��� ���ΰ� ��ü���� ���� �۰��� ��Ƽ���ٿ� ���� Ư���� �̾߱⸦ �ؾ߰ڴٴ� ������ �����. �� ������ ���翡 ���� �δ��� ��츦 �޾ұ� �����̴�. �Ǻο� ���� ������ �źδ��� �ΰ��� ������ �׿��� �� ȸ�����־�߰ڴٴ� �ʿ伺�� ���� �͡��̶�� ���� ���⸦ ������.','2019.12.10','3','3.jpg',1,'������ �ᵥ','
1�� - 11
2�� - 143
���ʷα� - 274
������ ��ǿ� ���� ��� - 281');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K1','����','���е���',15000,13500,0,'�Ǹ���','�Ż�','����Ʈ��ǰ','2017�� ���е��׽��λ����� ����� �������� EBS [����ä��e]�� �۰�, �� �˷����� ���� ���� å�� �Ұ��ϴ� ��ĳ��Ʈ �׽��̽ʺ� ������ 8��° ����� �ִ� ������, �۾���� ���� ������ ���ڷ� �ϴ� â�� ��ũ�� ��ȹ�� �� ���. �۰� �������� �Ұ��� �� �ʿ��� �����̴�. "Ư�� �帣�� ���ϱ⺸�� ���ο� ������ ��ô�ϴ� ���� ������ �Ѵ�"��� �۰� ������ �������� �´�� �ִ� �ຸ.

�׿� ���ο� �� ������ ���� �̹� å�� �̸� ���� ����ȭ������� �ƹ����� ������ ã�ư��� ���� �̾߱��. �������� ��ϵ�����, �������� �ʴ� ������ �׷� ������ �̾߱�. �۰��� ������ �̾߱⸦ �������� 1970~90��� �л���� �뵿��� ���� �����پ��� �ڷ�, ���� ��Ϲ�, �ϱ�, �Ǻ�, ���� ���� ���� ���� ������� ����, �籸��, �����Ǿ� �ִ� å.

��� ������Ÿ�� Ȥ�� �����̷� �θ� ���� �� å�� �׷��� �Ҽ� �� �̸� ���� ������ �Ҽ��� �Ѱ� �۰��� �ǰ��� ũ�� �ۿ��ߴ�. ���� ���� ������ ���ڷ� ���� �ο�����, ������ �۰��� �� ���� �Ѱ� �۰����� ���� ������ ��. "�� å�� �����̺��� �Ҽ��� �̸� ���̴� �� �� ���� �� ���ƿ�. �����̸� �ʰ��ϴ� �͵��� ��� �־��. �׷��� ��ȭ�߾��"(�۰��� ������)��� ������ ������ �۰��� ������� �Ͽ���.

�ڽ��� �ȴ� ���� �ռ� ���� �����̾���. ��õ�� ���� �� ������ ���� ���� "���� ���� ��Ÿ�ֿ� ���ý�(syntax), �����ؽ�Ʈ, ������ Ż����ȭ�� �����Ѵ�. (��) ���帣, �ٸ�ü, ȥ�� ��� �ؽ�Ʈ��"��� �������� �� �Ҽ��� Ư���� ���Ŀ� ������ ǥ�ߴ�. �̷��� �̻��ϰ� �Ƹ��ٿ� �������� �츮���� ������ ������ ù �Ҽ�, ������ ���� ��.','��¥','4','4.jpg',1,'������','1�� ���� �������� ������ �� �������ϴ� 2�� �츮�� �ƴ� �� 3�� ȥ�� �����ϴ� ��� 4�� ����� ����� ��ȥ�� ���� ������ �����Դϴ� 5�� ��� �ڿ� ���� �޾ƾ��⸦ �߽��ϴ� 6�� ������ ���� ȥ���� ��ó�Դϴ� 7�� �μ����� ����, �ֽ��ϴ� 8�� ��ٸ��̶�� �ž� 9�� �ĵ��� �����ϴ�
');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K1','ī�޶� ������','���е���',15800,14220,0,'�Ǹ���','�Ż�','����Ʈ��ǰ','�츮 �ô븦 ��ǥ�ϴ� �޸ӴϽ�Ʈ���� ���Ӹ���Ʈ, �Ϸ�Ű�� �����ϰ� �������� ����� �۰� ĿƮ ���ϰ��� �̹�ǥ �ʱ� ����Ҽ�������, ���ϰ��� �̹�ǥ �ʱ� ����Ҽ� �߿����� ���ϰ��� �ñ״�ó�� SF ��ǰ�� ���ַ� ������ ������. �������� ���� ���� �ӿ��� ���ϰͽ� ���Ǻ����� ���� ���� ���ϰ�, Ư���� �����ϸ鼭�� �������� ��ü�� ���߶��ϸ鼭�� �� ��� �����Ű�� ���� �ḻ�� �����δ�.

����е��̡��� �ܷο� ������� ��ȭ�� ������ �����ϴ� ���� ���� ��迡 ���� �̾߱��. ���۰� ���� ����项�� �����۳����� ��� ���ּ��� Ÿ�� ������ �湮�� ���α� �ܰ��� �� ������ ���� �ϵ��� �ٷ��. ������ ��� Ű Ŭ�������� ����� ���ӿ� �����ϸ� �ݵ�� ���Ǹ��� ���ϰ� �Ǵ� ������ ��û���� �����Ѵ�. ���ſ��� �桹������ �� ��� ���� Ʈ������ ���Ű����� �� �о߿��� ���ָ� ġ�ᡯ�� �������� ������� Ǯ��´�.

���ϰ��� �̷� ���� �ߴ�. �������� ������ �۵��ϴ� �����̴�.�� �������� �����Ⱑ ������. �����ι����� ������ ���� ÷�� ���б���� ���� ���ο� ���踦 ���� �׵��� ���� ���ϴ� ���� ����, ���� ���ϴ� ���� ���, ������ ���ϴ� ���� ������, ������ ���ϴ� ���� ���ϰ� �ȴ�. �� �������� �и� ������ �۵������� �����ι� ������ �帧�� �ḻ�� �������̰� �����̸� �޸Ӵ���� ���Ӱ� ǳ���.','2019.12.26','5','5.jpg',1,'ĿƮ ���ְ�','��е��� 021
Ǫ�� 043
���ؿ��� �Ҹ��Ŀ� 065
���� ��� Ű Ŭ�� 087
������ ���� �뷡 163
�ſ��� �� 189
�۰� ���� ����� 215
�ȳ�, ���� 233
���� ����� 257
���� ȭ�� 285
�Ź� ��� �ҳ��� �� 313
ī�޶� ������ 329
������ �հ� ���� 341
������ ���ϴ� ��� 369');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K2','���� �ִ� ���','���빮��',12000,10800,0,'�Ǹ���','�Ż�','����Ʈ��ǰ','2020�� ��65ȸ ���빮�л� �������. ����� ������ ��65ȸ ���빮�л� �����ڷ� �����Ǿ���. ������ ������ "��� ���� �������� �ʰ� ���� ��å ���̷� �帣�� ����� �̿� Ȥ�� ���� ����� ��ٸ��� ����� ������ �ؾ��� ����游�� Ư�����̶�� �ϰڴ�."�� �ɻ����� ������.

�����ĺ������δ� ������, ����� ���� ����� ���Ҹ��� �� 6�� / �����, ��ù �� �Ӹ�ī���� �� 6�� / �ڼҶ�, ������� ���� �� 6�� / ������, ���ݺ��� ������ �� 6�� / ������, ���������ٻٻ��ѡ� �� 6�� / ����, ������������ �� 6�� / ��ȴ�, ������ ���� ��� ������ �� 6�� / �����, ���ȳ� �����ڡ� �� 6�� / �ֹ��, ��õ���� �Ҵ١� �� 6���� �����Ǿ���.','2019.12.10','7','7.jpg',1,'�����,������,�����,�ڼҶ�,������,������,����,��ȴ�,�����,�ֹ��','������

�����

���� �ִ� ��� 15
��å 16
������ ��� 17
���� 18
���� 20
�������, ���� �� 23
�������, �̾ȸ��÷��� 26

������� �ڼ���

�����

���迡 ����, ���� �� ���� �������� 29
��� 33
���� 34');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K2','������� �ο��ϼ���','���а�������',9000,8100,0,'�Ǹ���','�Ż�','����Ʈ��ǰ','���а����� ���μ� 534��. 2009�� �����빮�С����� ����� ���� ������� �ι�° �������� ����.����.������ ���� ���� �༺���� �پ��� ȭ�ڵ��� �������� ������ �𸦡� �ð������� �������� �̾߱⡱(������)�� ������. ������ �Էµ� ��Ģ��� �ൿ������ �� ��Ģ�� ������ �������� ��Ģ�� �Է��� ������� �Ϻ��ϰ� ������ �� ���� ��踦 ���� ȭ�ڷ� ������� ������ ��Ģ�� � �˷����� �������� ���Ѻ���.','2019.11.22','8','8.jpg',1,'�����','��
����
�׷� �ȳ�
��ü�� ���
���ø�����Ƽ��
�� �����
���ĵ��̼�
������ ��
���� ���� ��ǥ
�ǵ����� �ʾҴ�
����
���� ��� �̷��� �� �� �ִ�
��ý���Ʈ
Ȧ�� ��� ���� ���ڷ� ���δٰ� �ߴ�
�ŷ�
�ູ�� ����
�����غ�');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K2','�� �ٵ� �ʸ� ���� ���ߴ�','��ħ��',10000,9000,0,'�Ǹ���','�Ż�','����Ʈ��ǰ','��ħ�� ���� 13��. â�۵��� ���� ����. â�۵��� ���� �����Ρ���ȴ١��ֹ�� 3���� ���� ������ �� ���� â�۵����̴�. â�۵��� ���� �����ϴ� ��ġ�� "�̷�"��. ������ ������ �и��� ���� ���ε��� �̾߱��ϴ� �̷��� ����� ���, ��, �뵿, �׸��� ���� ���� ������ �η� ��ġ�� �پ��� ����� ��������.

�� 41���� �ð� ���ϵ� �̹� ������ ���̸� �����ϸ� ������ �ø� �� ������ �̸��� ������ ǥ������ �ʾҴ�. �̴� �� ���� ������ �ƴ� �ϳ��� �׷��� �� �÷� �о��ֱ⸦ �ٶ�� ���ε��� �����̱⵵ �ϴ�. �����̶�� ��Ÿ�� �ȿ��� ���� ������� �ְ�޴� ��� �¾ �� �õ��� ���� �̷��� ���ڵ��� ���� Ÿ���Ƿ� �ϰ� �ִ�.','2019.11.28','9','9.jpg',1,'â�۵��� ��','
1��- �� ������ ���� ����ϱ�
we all die alone
������ ���� �Ƹ޹�
���� ���� �����Ÿ��� �ʾҴ�
��
��å��
�׷�
���� ����
���Ű� �츮�� ���� �ʾҴٸ�
�����
�ɱ״ÿ� ������� ����
���
1995�� ����
���� ���

2��- ���� ����� �����ִ� ��ó��
����
�����
���ۿ�');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K2','�� ������ �ε巯�� ����','����������',15000,13500,0,'�Ǹ���','�Ż�','����Ʈ��ǰ','������ ������ ������ 80���� �ø� �����ߴ�. ���� ���̵��� �Բ� ���� ���� �ø� ���������� ��� ���ô� �ƴϴ�. �����ϰ� ���� ������ �� �ִ� �ø� ���ַ� ��Ҵ�. 1�� �ູ-�ø� ���� ������ ������, 2�� ����-���󿡼� ���� ���� �� �� ��, 3�� ����-���, ����, �׸��� ģ��, 4�� ����-���� �ü����� ������ ���� �� �� ������ �°� �ø� �����ߴ�.

�ø��� �޸� ������ ������ ���� ���� ���� �︲�� �ش�. ������ �ð� ���� �츮���� � �ǹ̸� �����ִ���, � �ü����� �ø� �о�� �ϴ���, �� ���̵�� �Բ� �ø� �о�� �ϴ���, ���̵鿡�Դ� � �̾߱⸦ ������ �ϴ��� � ���� ���δ� �����ϰ�, ���δ� Ÿ�̸����� �Ϸ��ش�.','2019.12.23','10','10.jpg',1,'������ (������),���ؼ� (�׸�)','1�� �ູ _ �ø� ���� ������ ������
�ɵ�� �ȳ� - ������
������ �� - ������
��Ƽ������ ���� - �̱�ö
�ݵ��� ? ������
���� ���� �� ���� �𸣳� - ������
������ - ���ذ�
�ƹ��� ����� - ������
ǲ��� ? ����
���� ��� - �̺���
�ູ ? �㿵��
��? ? ������
�̲���Ʋ ? ������





');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O1','James and the Giant Peach (Paperback)','Puffin',9500,4660,0,'�Ǹ���',null,null,'�ٴ尡 ���� ��, �ܵ� ���� Ȧ�� ��� �ִ� ���� ���ӽ�. �������� Ż���� �ڻԼ��� �߿� ��� �θ���� ���ǰ� �����̰� �� ���ӽ��� �ɼ����� ������ ������ ���� ���ܿ� ������ ������ �ȴ�. �׷��� �����, ���ڱ� ��Ÿ�� �� �Ҿƹ����� �������� ���ӽ��� ���� ������ �ٲ�� �ȴ�.

When a mysterious old man gives James some magical, tiny green things, he certainly never imagines that they will grow into an enormous peach.
','2007.08.16','26','26.jpg',1,'�ξ˵� �� (������)','����');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O1','Harry Potter and the Philosophers Stone - Gryffindor Edition','Bloomsbury Publishing PLC',12000,24000,0,'�Ǹ���',null,null,'Exclusive Gryffindor House Edition, created to celebrate the 20th anniversary of the first publication of Harry Potter and the Philosophers Stone - a highly collectable must-have for all Harry Potter fans!

Gryffindor, Slytherin, Hufflepuff, Ravenclaw . Twenty years ago these magical words and many more flowed from a young writers pen, an orphan called Harry Potter was freed from the cupboard under the stairs - and a global phenomenon started. Harry Potter and the Philosophers Stone has been read and loved by every new generation since. To mark the 20th anniversary of first publication, Bloomsbury has published four House Editions of J.K. Rowlings modern classic. These stunning editions each feature the individual house crest on the jacket and line illustrations exclusive to that house, by Kate Greenaway Medal winner Levi Pinfold. Exciting new extra content includes fact files and profiles of favourite characters, and each book has sprayed edges in the house colours. Available for a limited period only, these highly collectable editions are a must-have for all Harry Potter fans.','2017.06.01','27','27.jpg',1,'J.K. �Ѹ� (������)','����');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O1','The Kite Runner (Paperback, International Edition)','PENGUIN PUTNAM INC. U.S.A.',11700,5850,0,'�Ǹ���',null,null,'This is the breathtaking story of fathers and sons, friendship and redemption, and most horrifyingly, the casualties of fate.

More information to be announced soon on this forthcoming title from Penguin USA','2013.01.01','28','28.jpg',1,'�ҷ��� ȣ���̴� (������)','����');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O1','The Art of Loving (Paperback)','HarperPerennial',17900,8950,0,'�Ǹ���',null,null,'���źм����� ���忡�� ����� ������ �м��ϰ� ����� ���� ����� ������ å. �η��� ������ ȭ���� ����� ���� Ź���� ������ �����ִ� ��������, 1956�� ó�� ��ǥ�Ǿ� �������� �ڸ���Ҵ�. �Ⱓ 50�ֳ��� �¾� ���Ӱ� �Ⱓ�� ����ǿ��� ������ ������ ������ ���� ���̳� ǳũ �ڻ��� �ıⰡ �Ƿ� �ִ�.

��ȸö�������� ���źм������� ������ ������ ����� ���� �ΰ����� �ο��� �ڿ��� �������� ���� �ʰ�, ����� ������� ���鿡�� �����Ѵ�. ����� ������ ���� �ƴ϶� ���ϴ� ��, �������� ����Ѵٴ� ���� �ܼ��� ������ �������� �ƴ϶�, �����̰� �Ǵ��̸� ����̶�� ���̴�.

<����� ���>���� ������ ������ <�����κ����� ����>, <�ڸ��� �ΰ�>, <������ ��ȸ> ���� ���� ���۵鿡�� ���� ���, �׸��� �װ��� �Ѿ �� �ٸ� ����� ���õȴ�. �׸��� �̰͵��� ����� ����̶�� �ϳ��� ������ ���������ν� ���ο� �ǹ̸� �����Ѵ�.


The psychoanalyst explores the theory, meaning, and practice of love, as well as its significance in contemporary Western society and its influence on the shape and course of an individuals life, in a special fiftieth anniversary edition. Readers Guide available. Reprint. 25,000 first printing.
','2019.08.06','29','29.jpg',1,'������ ���� (������)','����');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O1','To Kill a Mockingbird (Paperback) ','Harper Perennial Modern Classics',17900,8950,0,'�Ǹ���',null,null,'1961�� ǽ��ó �� ������. 1930��� �̱� ���� �ٶ�踶 ���� ���׸� ������ �������� �������, �� ���̽� ��ġ(��ī��)��� ������ ������� ȸ���ϴ� ������� �����Ǿ� �ִ�. õ���� ������� ������ �ٶ� �ð� ������ ǳ��, �ֺ� �ι��鿡 ���� ����� ����, ������� �ƽ����� ������, �����ϰ� �����ϰ� �׷�����.

��ȣ���� �ƹ����� �� �� ���� ���� ���� �Բ� ��� �ִ� �������� �ҳ� ��ī���� ����� ���迡 ���� ���ݾ� ���ظ� ���� ����. Ư�� ����ϰ� ���������� ���� ���� �� �κ��� �ƹ��� ��ġ ��ȣ�簡 ��ȣ�ϰ� �Ǹ鼭, �ѻ� �� �����ϰ� ������� �ҳ�� �����ϰ� �ȴ�.

�� �Ҽ��� ����� �� �밳 ��������, ��鰥�� �ʿ� ������ ������������, �� �Ҽ��� �׺��� �� �������� ����-���̿� ������ ������ ���� �̾߱��ϴ� å�̴�. ���� ���� ������ ���ົ�̸�, 1962�� �׷��� �� �ֿ����� ��ȭȭ�Ǿ� ���� �򰡸� �ޱ⵵ �ߴ�.

The explosion of racial hate and violence in a small Alabama town is viewed by a young girl whose father defends a black man accused of rape.','2005.07.05','30','30.jpg',1,'Harper Perennial Modern Classics','����');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O2','Please Look After Mom (Mass Market Paperback)','Random House',9500,7600,0,'�Ǹ���',null,null,'Die beeindruckende und tief bewegende Geschichte einer Familie auf der Suche nach ihrer Mutter, die eines Nachmittag mitten in den Menschenmassen der U-Bahn von Seoul spurlos verschwindet.

WINNER OF THE MAN ASIAN LITERARY PRIZE When sixty-nine-year-old So-nyo is separated from her husband among the crowds of the Seoul subway station, her family begins a desperate search to find her. Yet as long-held secrets and private sorrows begin to reveal themselves, they are forced to wonder: how well did they actually know the woman they called Mom? Told through the piercing voices and urgent perspectives of a daughter, son, husband, and mother, Please Look After Mom is at once an authentic picture of contemporary life in Korea and a universal story of family love. From the Trade Paperback edition.

','2012.01.03','31','31.jpg',1,'�Ű�� (������)','����');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O2','The Vegetarian (Hardcover, Deckle Edge) ','Hogarth Pr ',25200,20160,0,'�Ǹ���',null,null,'Before the nightmare, Yeong-hye and her husband lived an ordinary life. But when splintering, blood-soaked images start haunting her thoughts, Yeong-hye decides to purge her mind and renounce eating meat. In a country where societal mores are strictly obeyed, Yeong-hyes decision to embrace a more ��plant-like�� existence is a shocking act of subversion. And as her passive rebellion manifests in ever more extreme and frightening forms, scandal, abuse, and estrangement begin to send Yeong-hye spiraling deep into the spaces of her fantasy. In a complete metamorphosis of both mind and body, her now dangerous endeavor will take Yeong-hye?impossibly, ecstatically, tragically?far from her once-known self altogether.
?
A disturbing, yet beautifully composed narrative told in three parts, The Vegetarian is an allegorical novel about modern day South Korea, but also a story of obsession, choice, and our faltering attempts to understand others, from one imprisoned body to another.','2016.02.02','32','32.jpg',1,'�Ѱ� (������)','����');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O2','Human Acts (Paperback)','Granta Books',26000,13000,0,'�Ǹ���',null,null,'From the internationally bestselling author of THE VEGETARIAN, a ��rare and astonishing�� (The Observer) portrait of political unrest and the universal struggle for justice

In the midst of a violent student uprising in South Korea, a young boy named Dong-ho is shockingly killed.
?
The story of this tragic episode?unfolds in a sequence of interconnected chapters as the victims and the bereaved encounter suppression, denial, and the echoing agony of the massacre. From Dong-ho��s best friend who meets his own fateful end; to an editor struggling against censorship; to a prisoner and a factory worker, each suffering from traumatic memories; and to Dong-hos own grief-stricken mother; and through their collective heartbreak and acts of hope is the tale of a brutalized people in search of a voice.
?
An award-winning, controversial bestseller, HUMAN ACTS is a timeless, pointillist portrait of an historic event with reverberations still being felt today, by turns tracing the harsh reality of oppression and the resounding, extraordinary poetry of humanity.','2016.01.07','33','33.jpg',1,'�Ѱ� (������)','����');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O2','The Vegetarian : A Novel (Paperback)','Granta Books',13600,8200,0,'�Ǹ���',null,null,'A beautiful, unsettling novel about rebellion and taboo, violence and eroticism, and the twisting metamorphosis of a soul
?
Before the nightmares began, Yeong-hye and her husband lived an ordinary, controlled life. But the dreams?invasive images of blood and brutality?torture her, driving Yeong-hye to purge her mind and renounce eating meat altogether. It��s a small act of independence, but it interrupts her marriage and sets into motion an increasingly grotesque chain of events at home. As her husband, her brother-in-law and sister each fight to reassert their control, Yeong-hye obsessively defends the choice that��s become sacred to her. Soon their attempts turn desperate, subjecting first her mind, and then her body, to ever more intrusive and perverse violations, sending Yeong-hye spiraling into a dangerous, bizarre estrangement, not only from those closest to her, but also from herself.
?
Celebrated by critics around the world, The Vegetarian is a darkly allegorical, Kafka-esque tale of power, obsession, and one woman��s struggle to break free from the violence both without and within her.','2015.11.05','34','34.jpg',1,'�Ѱ� (������)','����');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O2','Native Speaker (Paperback)','Riverhead Books',19100,14320,0,'�Ǹ���',null,null,'�������� �� ��ǰ���� �̱��� ũ�� ���� ���л��� �۾��� ������ ��â����, ����Ŀ���� ���� 40�� �̸��� ��ǥ���� �̱� �۰� 20�� �� �� ������� ���� �� �ִ�. �̱� ��ȸ�� ������ �Ѹ��� ������ ���� ä �ֺ��� ����� ��ư��� �̹��ڵ��� ��ü�� ������ �����ϰ� �ٷ� ��ǰ.

Henry Park, a Korean-American private spy, is challenged by a new assignment to investigate a rising politician, but the secrets he uncovers threaten his cultural identity and his relationship with his wife. Reprint.','1996.03.01','35','35.jpg',1,'��â�� (������)','����');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O3','The Accidental Billionaires: The Founding of Facebook: Money, Genius and Betrayal (Paperback)','Anchor Books',19100,15280,0,'�Ǹ���',null,null,'NATIONAL BESTSELLERNOW A MAJOR MOTION PICTURE, "THE SOCIAL NETWORK," starring Jesse Eisenberg, Andrew Garfield, and Rashida Jones; directed by David FincherExuberant and revealing, The Accidental Billionaires is a fast-paced, inside look at a story of fortune gained and innocence lost, and how a company that was created to bring people together ultimately tore two friends apart. In 2003, Eduardo Saverin and Mark Zuckerberg were Harvard undergrads and best friends looking for a way to stand out among the university��s elite and competitive student body. Then one lonely night, Zuckerberg hacked into the campus computer system to pull off a prank that crashed Harvard��s network. This stunt almost got him expelled, but it also inspired Zuckerberg to create Facebook, the social networking site that has since revolutionized how people around the world communicate. With Saverin��s funding their small start-up quickly went from their college dorm room to Silicon Valley. But different ideas about Facebook��s future tested Zuckerberg and Saverin��s relationship, which then spiraled into out-and-out warfare. Soon, the collegiate exuberance that marked their collaboration fell prey to the adult world of venture capitalists, lawyers, and big money.','2010.09.28','36','36.jpg',1,'Ben Mezrich (������)','����');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O3','Apple Confidential 2.0: The Definitive History of the Worlds Most Colorful','No Starch Pr',35320,28960,0,'�Ǹ���',null,null,'
Apple Confidentia examines the tumultuous history of Americas best-known Silicon Valley start-upfrom its legendary founding almost 30 years ago, through a series of disastrous executive decisions, to its return to profitability, and including Apples recent move into the music business. Linzmayer digs into forgotten archives and interviews the key players to give readers the real story of Apple Computer, Inc. This updated and expanded edition includes tons of new photos, timelines, and charts, as well as coverage of new lawsuit battles, updates on former Apple executives, and new chapters on Steve Wozniak and Pixar.
','2004.01.11','37','37.jpg',1,'Owen W. Linzmayer (������)','����');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O3','Googled: The End of the World as We Know It ','Penguin Group USA',19100,15280,0,'�Ǹ���',null,null,'The fullest account yet of the rise of one of the most profitable, most powerful, and oddest businesses the world has ever seen." -San Francisco Chronicle Just eleven years old, Google has profoundly transformed the way we live and work-weve all been Googled. Esteemed media writer Ken Auletta uses the story of Googles rise to explore the future of media at large. This book is based on the most extensive cooperation ever granted a journalist, including access to closed-door meetings and interviews with industry legends, including Google founders Larry Page and Sergey Brin, Marc Andreessen, and media guru "Coach" Bill Campbell. Aulettas unmatched analysis, vivid details, and rich anecdotes illuminate how the Google wave grew, how it threatens to drown media institutions, and where its taking us next.','2010.10.26','38','38.jpg',1,'Ken Auletta (������)','����');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O3','Bananas: How the United Fruit Company Shaped the World (Paperback)','Canongate Books Ltd',22650,17660,0,'�Ǹ���',null,null,'In this compelling history of the United Fruit Company, Financial Times writer Peter Chapman weaves a dramatic tale of big business, deceit, and violence, exploring the origins of arguably one of the most controversial global corporations ever, and the ways in which their pioneering example set the precedent for the institutionalized greed of today��s multinational companies. The story has its source in United Fruit��s nineteenth-century beginnings in the jungles of Costa Rica. What follows is a damning examination of the company��s policies: from the marketing of the banana as the first fast food, to the company��s involvement in an invasion of Honduras, a massacre in Colombia, and a bloody coup in Guatemala. Along the way the company fostered covert links with U.S. power brokers such as Richard Nixon and CIA operative Howard Hunt, manipulated the press in new, and stoked the revolutionary ire of Che Guevara and Fidel Castro. From the exploited banana republics of Central America to the concrete jungle of New York City, Peter Chapman��s Bananas is a lively and insightful cultural history of the coveted yellow fruit, as well as a gripping narrative about the infamous rise and fall of the United Fruit Company.','2009.07.01','39','39.jpg',1,'Peter Chapman (������)','����');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O3','The Big Rich: The Rise and Fall of the Greatest Texas','Penguin Group USA',25480,19870,0,'�Ǹ���',null,null,'Whats not to enjoy about a book full of monstrous egos, unimaginable sums of money, and the punishment of greed and shortsightedness?"

Phenomenal reviews and sales greeted the hardcover publication of The Big Rich, New York Times bestselling author Bryan Burroughs spellbinding chronicle of Texas oil. Weaving together the multigenerational sagas of the industrys four wealthiest families, Burrough brings to life the men known in their day as the Big Four: Roy Cullen, H. L. Hunt, Clint Murchison, and Sid Richardson, all swaggering Texas oil tycoons who owned sprawling ranches and mingled with presidents and Hollywood stars. Seamlessly charting their collective rise and fall, The Big Rich is a hugely entertaining account that only a writer with Burroughs abilities-and Texas upbringing-could have written.','2010.03.30','40','40.jpg',1,'Bryan Burrough (������)','����');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O4','Dear Madam President: An Open Letter to the Women Who Will Run the World','Grand Central Pub',23220,8100,0,'�Ǹ���',null,null,'Dear Madam President is an empowering letter from Jennifer Palmieri to the first woman president that includes a forward-thinking framework of inspirational and practical advice for all women everywhere.','2018.03.27','41','41.jpg',1,'Jennifer Palmieri (������)','����');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O4','Rescuing Retirement: A Plan to Guarantee Retirement Security for All Americans','Columbia University Press',35920,7700,0,'�Ǹ���',null,null,'å�Ұ�','2018.01.23','42','42.jpg',1,'Teresa Ghilarducci,Tony James (������)','Foreword, by Timothy Geithner
Acknowledgments
1. Societys Retirement Crisis
2. How We Got Here: America��s Broken Retirement System
3. Six Key Problems: The Consequences of a Broken Retirement System
4. Rescuing Retirement: A Four-Pronged Solution
5. Case Studies: Similar Plans in Action
6. Why Not Just Expand Social Security?: Americans Need a Universal Pension System');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O4','Trumpocracy: The Corruption of the American Republic','Broadside Books',37420,11700,0,'�Ǹ���',null,null,'���� W. �ν� ������� ������ �ۼ������� Ư�� ���°�����, ������ �࡯(axis of evil)�̶�� ǥ���� ó�� ��������� �ν� ������ �����ڷμ� ���ʷ� �쳽 �ν��� �ӱ⿡ ���� ������ ����� ��ȩ ���� ������ �����ߴ�. ����Ʋ��ƽ��(Atlantic)�� �α����̸� MSNBC�� ����ڷ� Ȱ���ϰ� �ִ�. ��ȭ�������ο���, ������ ��ũ��ũ�� �������� �ͽ�ü������(Policy Exchange), ������ġ ��å ������ ������ȭ���� ���� ������ ���١�(Smart Approaches to Marijuana)�� �̻��̸�, ��ȭ���� ��ũ��ũ','2018.01.16','43','43.jpg',1,'���̺�� ���� (������)','����');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O4','The Inside Story of the Break-Ins and Breakdowns That Put Donald Trump','Hachette Books',40320,8200,0,'�Ǹ���',null,null,'Donna Brazile (Brazile, Donna)','2017.11.07','44','44.jpg',1,'Donna Brazile (������)','����');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O4','Billionaire at the Barricades: The Populist Revolution from Reagan to Trump','St. Martins Press',32490,7400,0,'�Ǹ���',null,null,'Anonymous Ab 01 ','2017.10.10','45','45.jpg',1,'Anonymous Ab 01 (������)','����');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O5','Liberty and Tyranny: A Conservative Manifesto (Hardcover) ','Threshold Editions',36000,2000,0,'�Ǹ���',null,null,'ABC ������ ���� ��Ʈ��ũ���� ���� �� ȣ��Ʈ�� Ȱ���ϰ� �ִ�. ��� ��ȣ���� �״� ���̰� �����ο��� ���������� Ȱ���ϱ⵵ ������, ����� ���帶ũ ����ȸ���� �������� �ٹ��ϰ� �ִ�. ���� Ÿ�ӽ� ����Ʈ������ <Men in Black>�� �����̱⵵ �� �״� ���� ���п��� ������ ������ ��, ���ô��б� �������п����� �ڻ� ������ �޾Ҵ�. ���� ��, �Ƶ�, �Ƴ��� �Բ� ��� �ִ�.','2009.03.24','46','46.jpg',1,'��ũ R. ���� (������)','����');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O5','Midnight in the Garden of Good and Evil: A Savannah Story (Hardcover)','Random House Inc',32500,5300,0,'�Ǹ���',null,null,'In charming, beautiful, and wealthy old-South Savannah, Georgia, the local bad boy is shot dead inside of the opulent mansion of a gay antiques dealer, and a gripping trial follows

Re-released to coincide with the major motion picture version directed by Clint Eastwood, the best-selling account tells the true story of the murder of the local bad boy in the opulent mansion of a gay antiques dealer in charming Old South Savannah, Georgia. Reissue. Movie tie-in. 200,000 first printing. Tour.','1994.01.13','47','47.jpg',1,'�� ����Ʈ (������)','����');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O5','A More Perfect Union: What We the People Can Do to Reclaim Our Constitutional','Berkley Pub Group',18570,1500,0,'�Ǹ���',null,null,'Alexandra Burt','2017.02.07','48','48.jpg',1,'Alexandra Burt (������)','����');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O5','Midnight in the Garden of Good and Evil: A Savannah Stor','Random House Inc',32500,5320,0,'�Ǹ���',null,null,'In charming, beautiful, and wealthy old-South Savannah, Georgia, the local bad boy is shot dead inside of the opulent mansion of a gay antiques dealer, and a gripping trial follows

Re-released to coincide with the major motion picture version directed by Clint Eastwood, the best-selling account tells the true story of the murder of the local bad boy in the opulent mansion of a gay antiques dealer in charming Old South Savannah, Georgia. Reissue. Movie tie-in. 200,000 first printing. Tour.','1994.01.13','49','49.jpg',1,'�� ����Ʈ (������)','����');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O5','Midnight in the Garden of Good and Evil: A Savannah Stor','Random House Inc',32500,5320,0,'�Ǹ���',null,null,'In charming, beautiful, and wealthy old-South Savannah, Georgia, the local bad boy is shot dead inside of the opulent mansion of a gay antiques dealer, and a gripping trial follows

Re-released to coincide with the major motion picture version directed by Clint Eastwood, the best-selling account tells the true story of the murder of the local bad boy in the opulent mansion of a gay antiques dealer in charming Old South Savannah, Georgia. Reissue. Movie tie-in. 200,000 first printing. Tour.','1994.01.13','50','50.jpg',1,'�� ����Ʈ (������)','����');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N1','�ſ� ���� �Ͽ��� ','����ũ��',15000,13500,0,'�Ǹ���',null,null,'����� ������ ������������ �մ� ���� ������Ű�� ���� �̽��͸� ����. �Ҷ���ó�� ���� �������塯�̶�� ��(ν)�� �������� �����̶� �Ҹ��� ������ ������ ���̸� ���÷δ� ��ȭ��ȸ���� �����Ѵ�. �׳� �� �� ������ �⹦�� ���λ���� ��������. ����� ������ ������ ��Ư�� ��ܿ��� �� ��¥�� ���� ���� ���� ��ѷ��� �־���.

��� ���忡 �ִ� ��Ž�� ����Ű ��������� Ȱ�� ���п� ����� �ذ�Ǿ�����, ������ ���� ���� �ڿ� ������ ��Ž���� �̽���� ������� �� ����� �ٽ� �����ش޶�� �Ƿڰ� ���´�. �ð��� �Ѿ� �����ϴ� ��������, ������ ��� �ִ°�? �������� �������� �����帣�� �ֵ������ Ʈ������ ���� �� ���踦 �� ��Ž���� �����Ѵ�.','2020.01.14','51','51.jpg',1,'���� ������Ű (������)','�ſ� ���� �Ͽ���
��1�� �ſ� ���� �Ͽ���
��2�� �޼ӿ����� ���� �ܴ�
��3�� ���� ������ ���Ѵ�

��(?) / ��(?)
��(?)
��(?)

�ű����� ��');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K5','���� ���̾�Ʈ','������',15000,13500,0,'�Ǹ���','�Ż�','����Ʈ��ǰ','2019�� ����𿡼� ���� ���� ��ȸ ���� ����� ����� Į���� ������ ���ؿ� ���� ������ ���̾���. �ٷ� �� å�� ������ �� �������� ��ſ��� �طӴ١���� ������ ���̴�. ���ó� ���θ����� ���и� �����ϰ�, �������� ������ ���� �ߵ��� �������� ���� �Һ� ���� ���� ���ϴ� ���� �������̰Ե� ���� ���� ȣ���� ���� ���̴�. ���� ���� �������� ������ ��ó�� �츮�� ������ �ѷ����� �Ϸ縦 ��� �ְ�, �̴� ����� ������ �Բ� ���� ��ȭ�ǰ� �ִ�.

å�� ���� ������ �ô븦 ��� �ִ� �����ο��� �ʿ��� ���� �Һ���� �����Ѵ�. ���θ����� ���п� ���� �ߵ��� ��ġ�� �������� ������� ���ݰ� ���� ���̾�Ʈ�� �����ϰ� �� ������ �̾߱Ⱑ ����ִ�. �� å�� ���ó� ���θ����� ������ ���ƺ���, �ǰ��ϰ� ������ �Һ��ϴ� ���� �˷��ִ� �Ǹ��� ���̵尡 �� ���̴�.
','2020.01.15','21','21.jpg',1,'���� ������ (������)','1�� ������ ����
���� ������ �ô�
���� �ߵ����� ����
��Ű� ������ 2������ ����
���� ����� ��ŭ �߿��� ������ ����

2�� ���ó� ������ ����
�ڱ����� �̽��� �˴ϴ�
���� �����ڿ� �Һ��ڰ� ������ ����
2008 ���� ����� �ƹ��� �������� ���ߴ�');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K5','�߹㿡 �д� ��ȭ �׸��� �θ� ��ȭ','����21�Ͻ�',18000,16200,0,'�Ǹ���','�Ż�','����Ʈ��ǰ','���ο� ������ ��ȭ �׸����θ� ��ȭ��� �ؼ� �ڱذ� ��� ���ַθ� �׸����θ� ��ȭ�� ���ؼ��ߴٰ� �����ϸ� �����̴�. �� å�� 1�δ� ��ÿ������� �����ε��ν��� ������ ������ ���콺 ������ �����ߴ� Ƽź���� �̾߱�� �÷����� 12�ŵ��� ź��, �׸��� ���콺�� ���ε��� �ٷ��. 2�δ� �����콺�� ���ӽ� ���������� ������ �������� �ŵ��� ���� ���ιݽ� �������� ��ġ�� ������ �ٷ��.

��ÿ������� �����콺 �� �׸����θ� ��ȭ�� ���븦 ���� ������ ȭ�ڵ��� �����Ӹ� �ƴ϶�, ��ȭ�� ������ �������� ���ؼ��� ��ӽ� ����ġ�� ���ӽ� ��������, ���� �׸����θ� ��ȭ�� ��������, ����������� �м��� �ֱ� ���ǵ���� ������ ������ ư������ ���߾���. ���� ���̿� �ֿ� �Ű� ����, �������� �躸���� �Ǿ� ���ڵ��� ���ظ� ���� �ִ�.','2019.12.13','22','22.jpg',1,'�����','1��
1�� ���� ������ �׵��� �־���: �ŵ��� ź��
2�� �ϴ� ���� ����: ���� ����
3�� ���̷��� �ƺ�, ��Ƴ��� �Ƶ�: ũ�γ뽺, ���콺
4�� �ƺ� �ſ��϶�: ���콺�� ������
5�� �ŵ��� ����: ƼŸ�븶Ű��
6�� �й��� �ŵ�, ��Ӵ��� �ڱÿ� ������: Ÿ��Ÿ�ν�
7�� ���콺 �ִ��� ��: Ƣ��


');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K5','���ǰ� ���� : ��1�� ��� ��1�� �����ε���','�Ź�',38000,34200,0,'�Ǹ���','�Ż�','����Ʈ��ǰ','�ٴ�ȭ��� �̸� �Ʒ� �ް��ϰ� �츮���� ���̴������� ����ȭ��� �̸��� �Բ� ����� ������ �����, ������ ��ȭ�� �й��̶� �����̸� �� �� ���ʿ��� ������ �־�����? ������ ��ü���� �����帮�� ŰƲ���� �ı��� <���ǰ� ���� : ��1�� ��� ��1�� �����ε���>���� ������ �ÿ����μ��� ��� �׸����� �����ϰ� ���Ӱ� �츮���� ���� �����ش�.

�״� ȣ�޷ν��� ���ǰ� ��Ÿ��������� ���п��� ���������ν�, ���׳��� ��ũ���׽�/�ö���/�Ƹ������ڷ����� �����ϴ� ���� ö�л�� �ι����� �����ϱ⸦ �����ϴ� ������ �ٺ����� �й����� ������ �� �ƴ϶� �ÿ������� ����� ���� ������ �ٽ� ��ȭ�� ������ �ٿ����� ����ø���. �׸��� ���ǰ� ������ ���۵Ǵ� �� ������ ������ �Բ� �ߴ� ���ڿ� ���ڶ�� ���� ��õ�� ���Ǹ� ����̸�, �� �� ���̿� ����� ����Ű�� ���� �����ε��׿��� ������ �ÿ��� ���� ������ ���� �ڽ��� ù å�� ��ģ��.','2019.12.27','23','23.jpg',1,'�����帮�� ŰƲ�� (������)','1 ����
1.1 ���𼼿콺�� ��������� ���ϴ�
�� ��, �ϰ� �ź� ? �� ��, �ټ� ���� ? �Ҹ��� ���� �� ? ���¾��� ����η� ��ǥ���� �����϶� ? ��, �¾� �Ʒ� ���̿� ? ������ ������ �����ī�� ? �ϳ� ���� ��, ���� ���� ��, ���� �� ��
1.2 �뷡�ϱ�� �۾���
');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K5','������ �����ϴ� ��ȸ','���ο� ����',15000,13500,0,'�Ǹ���','�Ż�','����Ʈ��ǰ','������ȭ�� ���� �츮�� ����� ������ ���� ã�� �� �ְ�, �� �پ��� ������ ���� �� �ְ� �Ǿ���. ������ �̷� ���̾Ͼ� ������ ����, �ҹ��� ����� ���� �����ϱ� �����������, ������ ������ ������ �ΰ����Դ� �ڽ��� ����� ���´� ������ ���� ���� �� �ִ� ������ ���õǾ���.

�׷��� �Ǹ鼭 ��Ʈ�� �ƴ� ��¥ ������ ��Ҹ��� Ű���, ���� �� ��¥ ������ ������ �ƴ϶�� ���� �˸鼭�� ġ��ģ �������� �Ǵ��� ������ �ȴ�. �� å�� �̷��� �ô뿡�� �츮�� ������ �츮 �����θ� ��� �̲��� ���� �ִ����� �����ְ�, �̷κ��� �� �� ������ �ǻ������ ������ ���� ������ �ȳ����̴�.
','2020.01.02','24','24.jpg',1,'���ٽ�Ƽ�� �츣�� (������)','
���ѷα�_������ �Ǵ��� �����Ѵ�

�ൿ�ϴ� �ڳ���, ����ȭ�ϴ� ���
: �츮�� �� ������ ���� ���س��� ���߿� �ո�ȭ��ų��?
�ͼ��� �� �и� ���� �ž�
: �ݺ��� ���� ������ ���� ���Ͽ�
�� �𸣴� ���� ��� �����ϰھ�?
: �츮�� �� ���� �Ͱ� ���ο� ���� �ܹ��� �ź��ұ�?

');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K5','���� ���� �����','����� å',22000,19800,0,'�Ǹ���','�Ż�','����Ʈ��ǰ','������ �ѷ��� ��� ���￡ ���� ���� ö������ �亯. ������ ������ ������ �⺻��, ���İ� ����, ���� ����, ������� �̽�, �������� ����, �ֿϵ����� ���� ���� �ѷ��� ������ � �ƶ�����, � ������ ���� �̷�������� ���ϰ� ģ���ϰ� �̾߱����ش�. �װ��� ��� ���� ���� ������� ������� �ٷ� �������ǡ��̶� �� ���ϴ�. �ѱ��� ��ǥ���� ���������� ö���ڡ� ���� ������ ���� 10�Ⱓ�� ���� ���� ������ �� �� ���� å�� ��� ��Ƴ´�.','2019.08.28','25','25.jpg',1,'����','�Ӹ���: ���� ������ ���� ���� ����

1�� ������ ������ ������ �⺻��
1�� ������ ������ ����
2�� ������ �⺻��

2�� ���İ� ������ ����
3�� �ΰ��� ������ �Դ´ٴ� ��: ������ ����
4�� ������ ������ �Դ´ٴ� ��: ������ ����');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N3','������ ���ڵǱ� ����','���ĳ븶��',15000,13500,0,'�Ǹ���',null,null,'�ѱ� ��ȸ�� ������ �׸��� �Һ����´� �ѱ� ������� ���� ���� �߸� �˰� �ִ� ſ�� ������ ���̴�. �ٷ� ������ ���ϰ� �����ص� ���ڰ� �Ǳ�� �Ұ����ϴٰ� �����ϰ� �����ϱ� �����̴�. �׷��� ������ ���� ��� ���� ������ ����� �� �ִ�. ������ �ٲٸ� �ȴ�. ������ �Һ� ���ڷ� �ٲٴ� ��������Ÿ�Ϸ� ��ȯ�ϱ⸸ �ص� ������ �Ͼ��. �ٷ� ������ ���� �����̴�. ���ν�Ÿ���� 8��° �Ұ����Ƕ� Ī�� ������ ������ ����� ���ڷ� ������� ���̴�.

����϶�. ������ �ð��� �������� ���ϱ޼������� �ڻ��� �ҷ��ش�. ����� ���ڴ� ���ȿ��� ���� ���ϵ��� �ý����� ����� ������ �ð��� ����� ���ڷ� ������� ���̴�. ������ ���ٵ�� ���ڸ� ����ص� �������� �����ؾ� ���� ������ ������� ���� ���ڴ� ���������� ���� 10�ܰ� ������ �����Ѵ�.','2020.01.15','64','64.jpg',1,'�� �� (������)','1�� ���ڰ� ���� ���ϴ� ����
01 ����ǥ���� ���� �׷��� ��������?��
02 ���ڰ� ���� ���ϴ� ���� �� ����
03 ���������͡��� �������� �Ǽ� ������
04 ���� ���� �� ����� ���� �߿��� ��ġ�� ���°�?
05 ���ݺ����� ��
06 �ε��꿡 ���� ����, �Ϻ��� �Ҿ���� 30�⿡�� �����');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N3','���� ���� �ε��� ���','�ѱ������Ź�i',28500,25650,0,'�Ǹ���',null,null,'�ô��� ��ȭ�� ���Ҿ� ��� ���ڿ����� �����ڵ��� ������ ������ ���׷��̵�ǰ� �ִ�. �̿� ���� ���� ���ڸ� �����ϸ鼭 ���� �о߸� ������ �����ϴ� �ڼ��� �ʿ��ϴ�. ó������ ������ �������� ��� ���ٽ��� �ռ� �⺻ �н��� ������ ä Ư�� �������� �����ϴ� ��찡 ������, �׷��� �����ؼ� �ᱹ �����ϴ� ��쵵 ����. ưư�� �Ѹ��� ������ ���Ÿ� ������, �׷��� �ʴٸ� �սǸ� ����� ��Ű踦 ������ ������ �����ڵ� ���� �ϳ��� �� �� �ִ�.

�ݸ� �ε��� ������ �������� ��, ���� ���ڸ� �Ϸ��� �� ������ �پ��� �ε��� ���Ǹ� ���ƴٴϴ� �е鵵 ����. ���� ���� ���ϴ� ���� ������ ���縮�� �ε��� ���ڸ� �ϱ� ���� �̷����� ü�踦 �����Ϸ��� ������ �ٶ���������, �������� �ε��� �о߸� ü�������� �����ϰ� ���ڸ� �ϱ�� ���������� ���� �ʱ⿡ �����ϰ� �ȴ�.

�׷� ��Ŵ� ��� �����ؾ� �ұ�? ��� ���ڸ� �ϱ� ���ؼ� ���� ���� �ؾ� �� ���� �����ϱ�? �켱�� �⺻���̰� �������� �⺻ �н��� �� ��, �������� ������ ������. ���� ���� ������ �ʴ� ���� ���� ���Ǹ� �Ѿƴٴϴ� ���� ��ȿ�����̴�. ���θ� ���� ���� �⺻�� �Ǹ� ���� ���Ǻ��� �����غ���.','2020.01.13','65','65.jpg',1,'����ȯ (������)','part 1 �ε��� ����� ����
1�� �ε��� ��� ������ 21
2�� ��� ��û�� ��� ������ 25
3�� ��� ������ ������� ������ 30
4�� ���ұ��ص�� ������ 45
5�� �������Ӵ�����ȣ���� ������ 53');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N4','����� �����','�ø�',15000,13500,0,'�Ǹ���',null,null,'���� ���� �� ���� �����, ���� ���� �� ���ڰ� ����� ���� ȿ��. �ΰ��� ���� ȿ���� ���� �� ȿ�������� ����ȴ�. ���� ��� ������� �������, �������� ���� ����� �޶�����. �� �� ��� ���� �������� ���� �Ǵ��� �� �ִµ�, �̶� ���� �߿��� ������ �⺻ ������ ������ ���ϰ� �� ���ΰ� ��. �ΰ����迡���� ����Ͻ�������, Ŀ�´����̼��� �ñ��� ������ �ᱹ ����� ������ �����̴� ���濡 �ִ�. ��븦 �����̷��� ������ ���� ������ �Ѵ�. ��, ������ ġ���� �ɸ����̴�.

�ѱ� FP��ȸ ������ �Ƿȴ� Ŀ�´����̼� Į��, ���п��� ����Ͻ� Ŀ�´����̼��� �����ϸ� �л���� ����� ��ʵ� ��� �ִ�. ����, ����ϰ�, ���ü��� Ž���ϰ�, �������� �ǰ��� ���� ����� ���̵���� �� ����ü�� ���̴�. �ΰ�����Ӹ� �ƴ϶� ����Ͻ��ǿ��Ե� ������ ���� ������ Ư�� ����Ͻ� Ŀ�´����̼��̾߸��� ���� ������ �����ϰ� ǥ���� ���� �ɷ��� Ư�� �߿��ϱ� �����̴�.','2020.01.15','66','66.jpg',1,'������ (������)','���� ��Ű� �����Դϴ� ����޴� ������ ��ȭ ���
���� ������ �Ǿ�� _����, ��ü �Ұ����� �̷��� ����� 015
������ �Ƿη� ������ �����ұ�? _������ �� ǥ���ϴ� 5���� ��� 022
���δ� ������� Ȱ���϶� _������ �� ������ ����� ��� 031
���� �Ǵ� Ī��, ���� �Ǵ� Ī�� _���� ���߰� �ϴ� Ī');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N4','���� �ִ� ���� ����','����̵�',15000,13500,0,'�Ǹ���',null,null,'�پ ������ ���� ����� �׷��� ���� ����� ������ �ٸ���? ���� �ϴ� ���� �������� ���ߴ� ��â���� �߻��� �س��� ����� �ִ�. �Ž��Ŀ����� ���� ���ο� ������ ����Ų �������� �ι����� �����ȴ�. �̸� ���� ������ ��ټ��� ������ ������� �����, �ൿ����� ��ġ��ŷ�ϴ� �� �ð��� ��´�. �׷��� �ٷ� ���⼭���� ������ �߻��Ѵ�.

���Ű����� Ÿ���� ������ ����ϴ� ������� ���� �������� �ʱ� �����̴�. �׵��� �����̴� ���� ���ڽ� �ȿ��� �߻��� �������̴�. ���� �ְ��� ������ųε��� Ÿ���� ��� �ľ��ϴ� �� �ð��� ��� ��� �ڽ��� ���ϴ� ���� ��üȭ�ϴ� �� �������� ����Ѵ�. �츮�� ���� ������ ������ �׳� ����ġ�� �ʰ� ��üȭ�� �ŵ��� ��û�� ����� ������ �̵��� ������ �����ڡ���� �θ� �� ���� ���̴�.

������ ���� â���� ���� �������� �׷� ������ �����ڡ� �� �� ���̴�. �״� �����ο��� �̷� ������ �ߴ�. ������ ��� �� ����Ʈ�� �ٿ�ε��� �� �ְ�, �� ��ũ�� ���� ����� �дٸ� ���?�� ������ �ʹ� �ڿ������� �ϻ������� �̴� �װ� ���������� �ŵ��ϸ� �׳� ����ĥ ���� �־��� ������ �����ϰ� �������� �����⿡ ������ ���̾���.

�۷ι� ������� ����Ʈ�� ������ ���ؿ� �� å�� ���ڴ� �츮 ��� ���� �����ڰ� �� ���ɼ��� ǰ�� �ִٰ� ���Ѵ�. �� ����� �����ϰ� �ִ� �� å�� �߰� ��� ����Ʈ������ ����� ���� ǰ�� ���¸� ����Ű�� ���ڵ��� ����ġ�� ���� ��û�� ���� �� �ִ�. ������ �ϰ� ������ ���� ��ü�� ���� ������ ������ ���ϰ� �ִ� ���ڶ�� �� å�� ������ ���� ���� �� �Ŀ� �������� Ǯ���� �ʴ� ���������� Ǯ�� ���� �������� ���� �� ���� ���̴�.
','2020.01.20','67','67.jpg',1,'��� ���Ÿ�� (������)','
�����ϸ� �ܼ��� ����� ��ġ �ִ� ���̵�� ����
Ÿ�� ��忡 ������� �� | ����ü ���� ������ �ϰ� ������? | ���� ������ ���ɿ��谡 �ƴϴ� | �ܼ��� ������ ������ �Ѿ | ��� ���� ������ �����ο� �޷ȴ�

1�� ������ ���� �ƿ츣�� ���� ����
������ ���� �����ϴ� ������ ');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N5','�ູ�� ���󿡼� ��� ���� �ູ�ұ�?','���Ǽ���',15000,13500,0,'�Ǹ���',null,null,'���� ���� ȸ�� �̻�ε� ���ϰ� �ִ� ������ �۰��� 10�� �� ����, �������� ��ȸ���� ù������ �յΰ� ȣ����� �Ͼ���. �� ���ѹα��� �̸��� �ٻڰ� ���ư��� �ɱ�, ������ ���� �츮�� �̷� ���ٻݡ��� ����ϸ� ��ư��� �ɱ�, �׷��� ��⸸ �ϸ� ���� ���̴� ������ ��ǥ�� ��ġ�� ������� ��ȸ�� ��ǥ ����, ������ ������ �ູ ���� ���� �� �ִ� �ɱ�, �ñ��ߴ�. �������� �ູ�ϰ� ��� �;��� �����̴�. �׸��� �ູ�� ������ �˾ƺ��� ���� �� ���迡�� ���� �ູ�ϴٴ� ���� �湮�� �� ���� ������� �̾߱⸦ ���� ������Ʈ <�ູ�� ����>�� �����ߴ�.

�ູ�� ����鿡�� �߰��� ����� �ູ�� ����� ���� ���� ���� ������ �ູ�� ���������� ��� ��� �ִ�. �Ӹ� �ƴ϶� û�⼼��κ��͡����������̶����� �Ҹ��� �ִ� ���ѹα����� ����� �Ȱ��� ���� �ϰ�, ��ȥ�� �ϰ�, ���̸� ���� 10�Ⱓ ������ ������ ������ �����ϸ� 30�� �߹��� �� ���ڴ� �ϻ󿡼� ��� �ູ�� �����ϰ� �ִ����� ���� �� �ִ�.','2020.01.27','75','75.jpg',1,'������ (������)','Step ��. �ູ�� ���� ����
�ູ�� ���󿡼� ��� ��¥ �ູ�ұ�?

- ���ູ���� ������ ��������� �ٿ����� ������
- ��Ȯ���� ���� ���ϴ� �� �ô��� �ູ
- �ູ����, ���� �ູ�� ������ �ű� �� ������?
- �ູ�� ���� ����鿡�� ���� ���� ������
- �׷��� �ູ�� ���� ���� ������� ����ߴ�');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N4','���ú��� �� 1��, �̱������� ���� �ߴ�','����Ͻ��Ͻ�',15000,13500,0,'�Ǹ���',null,null,'������ ������ �ʴ� ��ȭ������ ����� �ټ��� ����Ʈ������ �� �������� �۰� �� ȥ�� ����ִ� ���� �ֵ����� ��ã�� ��. �̱� ������ ���������� �����ϰ� �ʹٴ� ���� ���� ���ķ� �̷�� ������ �ϰ� ������ ���� ����� ����ߴ� �ƹ����� ���� �� ������ ���� ���������� ������ ���� �ް�, �ڽ� ���� �ƹ����� ���� �ٸ� �� ���� �ϰ� �������� ���� �켱������ �����ְ� �־��ٴ� ����� ���ݰ� ū ����� �޾Ҵ�. 1�� ���� ������ �ڽŸ��� �ູ�� ã��� ������ ��, ���������� 1�� ��� ������Ʈ���� �ϸ� �̱� ������ �����ϸ� ������ ���� �����ú��� �� 1��, �̱������� ���� �ߴ١��� ��Ҵ�.

����� ���� � ����ΰ�? ����� ���ϴ� ������� ��� �ִ°�, �ƴϸ� Ÿ���� ���� �Ϸ� �� �ð��� �� ������ �ִ°�? ��, ����, ������ �¹������� ������ ���� �̱����̴��� �ϴ� ������ ������� ����� ����鿡�� �� å�� ���� ��ħ���� �Ǿ��� ���̴�.

�� ȥ�� �� å�������������� 1�� ��⡯�� ���� ���� �λ��� �߽ɿ� ������ 180�� �޶��� ���� �µ��� ���� �̾߱��ϸ�, 1�Ⱓ �Ͼ �λ��� ���� ��ȭ�� �������� �ڽŸ��� �ູ�� ã�� �� �ִ� ������ ����� ���ڵ鿡�� �˷��ش�.

���ѡ���3���� �ü����� �� ���� �ٶ� �� �����ϴ°�?��, ������ ���ϰ� �ִ� ���ʿ��� �ΰ����谡 �ִ°�?��ó�� ��鼭 �� ���� �� �����غ� ���� �������� ���� ���ڵ鿡�� �λ��� �ֵ����� ��ã�� ��ü���̰� �ǿ����� ��ħ�� �˷��ش�. �׵��� Ÿ�ο��� ������ �����ٴϱ⸸ �߰ų�, ���� ���� ���������� ����� ���� ����ִ� ���ڶ�� �� å�� ���� �ڽ��� ���� ì��� ����� �͵��ϰ� �� ���̴�.','2020.01.20','68','68.jpg',1,'�� ȥ (������)','��1��. ������ �ູ�� ��� ��� �ִ°�?
: ������ �� ���ϱ�
�Ϸ��� ��հŸ���
������ �ְ��� ������ ����϶�
�ð��� �츮�� ��ٷ����� �ʴ´�

��2��. ���� ������ ���ϴ��� ������ �� �� �ִ�
: ���������� �ޡ��� �ƴ� �������� �ޡ� �����');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N4','�ϸ��͸� �� ������ �����θ� �� ���ߴ�','���ι�ȭ��',14800,13320,0,'�Ǹ���',null,null,'�ʹ� ����� ������ ����ؼ� ��100�� �ô롯�� �غ��Ϸ��� Ȥ�� ������ ����� ſ�� �ٽ� ��ȸ�� �������� ��ܳ�� �����ֺθ��� �ƴ϶�, ���ܱ� �̷� �־��� ��Ȳ���� �ô޸��� ���ں����ұԸ� â���ڳ� �ڿ����ڿ��Ե� ���� �����̰� �Ǿ��ִ� å�̴�. ���� �������� ��� �� ���� ����� ������ â���ڵ��� ��ʸ� �������м��� �� �ƴ϶�, ������ ������ ���� ������ �������� ���� ���� �Ը�� ������ ��� ������ �ø��� �ִ� â���ڰ� ���� �� å�̱� �����̴�.

�׳�� â�� �غ񿡴� �ƹ��� ���� �ð��� �����ص� �Ϻ��� ���ǰ� ȯ���� �������� ���� ���� �ִٰ� �Ѵ�. �׷��� ������ ��� ���� �����ϴٸ� �ϴ� �����ϰ�, ������������ �����鼭 �����ڡ��� ������ �ϸ� �ȴٰ� �����Ѵ�. �׷��� �� ����ϰ� �� ���̴�, �ϵ� �� ���� ������ ���̶�鼭 ���̴�.

���� ����ó�� Ư���� ��ǰ�� ��쿡�� SNS�������� ���� TV���� �����ν� �� ���� ������ �湮�� �����ؾ� �ϴ� ��, TV���� SNS�������� �� �� �Դ� �� ������ ���ְ��! �Ǹ��ϴ�!�� ���� �Լҹ��� �������鼭 �� ���� ȿ���� ���ٰ� ���Ѵ�.','2020.01.08','69','69.jpg',1,'�̹ξ� (������)','
Chapter 1. �Ƴ�, �������� ��ŷ������ ��� ����
1. ����, �λ� �Ĺ��� ������ ����Ÿ��
2. ���� ���翡 ��ȭ�� �Ǹſ����� �����ߴ�
3. �عٴں��� ö���ϰ� �����
4. ����� �������� ���ϸ鼭 ���踦 ���� �ξ���
5. ö���� �غ��� ���̾���
6. ���� ������ �����̾���
7. ������ ������ ����������');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N4','������ ��ġ�� ��ȭ�� : ������','42�̵��������',14800,13320,0,'�Ǹ���',null,null,'ģ������ ��ȭ�� ���ѵ� �ŷ�ó���� �ǻ������ �� �����ϰų�, �������� �ڸ����� ��ǥ�ϱ�� �ͼ��ѵ� ������ �̾߱⸦ ���� ���� �ڲٸ� ������ �������� �귯���� �� ������ ��ȭ ��Ȳ���� ������� ���� ���� ���� ���̴�. �׷��ٸ� �� å�� �Բ� ���� ���� ��Ȳ �ӿ��� ��ȭ�� �̾�� �����ϱ��� ������� ������ ����.

�ڿ������� ��ȭ�� ����� ���캸�Ҵ� ���� �������� ��ġ�� ��ȭ��: �̷����� �̾�, �̾����� �������������� ���� ��Ȳ���� ���߷� �ְ� ��ó�ϴ� ȭ���� ������ �˾ƺ���.

������ �ڽ��� ���ϱ� ������ �ľ��ϰ� �̷��� ����� �����ٸ�, ������ ���� ��Ȳ���� Ȱ���ϴ� ������ �� �� ���ʴ�. å������ ��ǥ, ����, ���� �� �ϻ� �� ��ȭ ��Ȳ �ӿ��� ȿ�������� ��ȭ�� �̲��� ���� �� �ִ� ������ ����� �Ұ��Ѵ�. ��ȭ�� ���� Ǯ�� ���� �������� �� ���塯�� ���� ����. �������� ������ �� �ֵ��� �Ʒ��ϰ� �����ϴ� ����, ���� �� ����� õ �� ���� ���¡� ��ȭ�� ����� �ָ� ���� ���� ���̴�.','2020.01.15','70','70.jpg',1,'��ö�� (������)','Part 1. ȣ���� �θ��� ���ϱ�

01 >> ������ �����̴� ���, NLP
�����ǽĿ� �� �ɱ�
����� ������ ��� ������
���̰̽� ���� : ���ϴ� �������� ��ȭ �̲���
���긮�̳� ��� : ����� ���ǽ� �����ϱ�
NLP�� Ȱ���� ����� ����� ���� �ǵ�����
������ �� ���� 1 - ����, ���� �� �´ٰ� �ߴ�����?');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N5','����� ��� ������ ��Ȥ�ϴ°�?','�Ҵ��Ͻ�',16000,14400,0,'�Ǹ���',null,null,'������ ���翡��, ������ �̷а� ������ ����, ������ �ƶ� �ӿ��� ��ȭ�ϴ� �Ž� Ŀ�´����̼��� ����� Ư¡�� �о å�̴�. ���������� ��ġ�� �ְų� �����ߴ� ������ ��ʵ��� ���ؼ� �� �ô��� ��ȸ, ��ȭ, ��ġ, ����, ������ ���� ���ؿ� ������ ����Ͽ�, ������� �� �������� ��Ȥ�ϴ� ������ �������� ������ �� �ְ� �Ѵ�.

���� ���� ����� �����ϴ� ��ȸ�� ����μ��� �ΰ��� Ȱ���� ���� ������ �ٷ�� �ִ�. ��ȭ, �븮��, ���Ƿ罺, ������, ����, ī��, �Ź��� ����, ������ �ڷ�����, ���� ����Ʈ���� ������ ���̴���, �������� ������, ������ ����忡 �Ǹ��ų� �ɸ��� ����� ���簡 ���۵� �̷��� ���� ���� ���� ��¼�� ������ ������ �������� �𸥴�. ���� ���� ���� �̵��� ���, �׸��� ��ȸ ��ȭ�� ���ο� ����� �����ؿ�����, ����, ��ȸ, ��ȭ�� ��ȭ�� �۵���Ű��, ������ �ʴ� �������μ� ������ �����ؿԴ�.','2020.01.25','71','71.jpg',1,'������ (������)','
Chapter 1 ����� �����ΰ� : ������ ��Ȥ, �׸��� ������ ��
������ ��Ȥ�� ��, ����
������ ���� : �屸�� �ڱ��Ͽ� ���並 â������
PR : ��ȣȣ���� �֓��� Ŀ�´����̼��� ����
���� : ���� �� ������ �θ� �˸��� ���� Ȱ��
�̵�� : ������ ������ ����, �׸��� ���� ����');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N5','���� ����, ������ ������ ������','����å',17500,15750,0,'�Ǹ���',null,null,'2020�� �츮 ��ȸ�� �ֿ� Ű���� �� �ϳ��� �ٷ� û���̴�. ������� ó������ �� 18�����Ե� ���ű��� �־����� ���ش� ������� �츮 ��ġ�翡�� �߿��� �� �ط� ��ϵ� ���̴�. �̿� �߸��߱�� �ϵ� û��-û���� ����� �� �� �ִ� 20�� �������� �ܴ��� ������ ����ü�� <���� ����, ������ ������ ������>��� å���� ������� ������ ���ο� �������� ���о���.

�� ���ΰ��� ��ȣ���� �����θ� "������ �����"�̶� �Ұ��Ѵ�. ������ �� "�����, �����"�� ��ĥ �� Ȧ�� �����ϰ� �λ����� ���ߴ�. "�ٴٰ� ���Ƽ�" �׸��� "��Ӵϸ� ��Ӵ��� �������� �ع��ϰ��� �ϴ� �ڸ���"�� �ۿ��� �������. �Ƹ�����Ʈ�� �ְ�ߵ����� �λ���б� ��ġ�ܱ��а� ��������� ��ģ �״� ������ �ǹ��� ���ϱ� ���� 2020�� ������ �� �Դ븦 �յΰ� �ִ�.

���ڴ� ���Ѵ�. "20�뿡�Դ� ��ȸ�� ��� �� ��ü�� �ϴ��� �������Դϴ�. ������ ����鿡�� ����� ���ư��� ������ �޲ٸ�, ���İ� ��⸦ ������Ű���� �� å�� ����ϴ�. �� å�� �칰�� �ٴٷ� �˰� ��� �� û���� �쳽 ����� ������� �����Ӱ� �а� �й��ϰ� ���� ���� �� û���� ������ ������ �����Դϴ�."','2020.01.10','72','72.jpg',1,'��ȣ�� (������)','1�� ����� ��

1�� �Ҿ���� ���� �־���: ī�� ����ũ���������帮�� ���ֽ�, ������� ����
�������ڵ��� ������ ����
���������� �����, �θ��־��� ���׾�
������ ���� �����̾���
�ں������� ��ä����
�ں������� ���, ��ȸ������ ��ȥ');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N5','ī���� ���� �ε� ��ȭ','AK(��������)Ŀ�´����̼���',13800,12420,0,'�Ǹ���',null,null,'�ε� ī���� ���� ��� ��� ���ܳ�����? �ε������� � ī���� ������? �ε� ���� ������ �����ڰ� ī�����̽��� ����� ã����, ������ Ư�� ��ġ�� �丮�� ������, ����� ��ȭ �̾߱⸦ ����ش�. �ε� �� ������ �����̾�Ƽ�� �Ƹ��ٿ� �丮 ������ �ټ� �����Ͽ���.','2020.01.11','73','73.jpg',1,'����ø� �뺸�� (������)','��1�� �ε����� ī�����̽��� �ֹ��ϸ�
��2�� ī���� ����� ī���� ����
��3�� ���� ��Ȱ�� ī����������󽺴��п� ������� �Ĵ��
��4�� ī���� �����ϰ� �Ǵ٦������̼Ҹ����� ������ �Բ� ü��
��5�� ���� ������ ���� �丮�����߾Ӿƽþƿ� �丣�þ��� ����

');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N5','��ũ���׽��� �������̵���ũ���桤�⿬','��Ÿ�Ͻ�',12000,10800,0,'�Ǹ���',null,null,'��ũ���׽��� �Ϲ������� �����ϴ� ö���ڵ���� ���� �޸��Ѵ�. ����� �����ϰų� ���� Ȱ���� �ϴ� ���� �ƴ϶� ���׳� �Ÿ��� ���� �װ� �����̵� ������ �ʰ� ö���� ������ ������ ��ȭ�� ��������. ��뿡�� ������ �Ͽ� ������ ���ݰ� �ϰ� ������ �˰� �ߴ�.

���� ��ȭ���� ������ �и��� �����شٴ� �濡�� ���ļ��̶�� ���ϱ⵵ �Ѵ�. ��ũ���׽��� ��(�)�� ��(��)�� ��ġ�� �����߰� ���� �����ϴ� ���� �ΰ����μ� �������� �̷�� ����, ���, �� �� ������� �����ϴ� �� � �ͺ��� ���� �־�� �ߴ�. ������ ������ �װ��� ���� �� ���� �׸��Ͽ� �ΰ� ��ȥ�� ������ ������ �� �� �ִ� ���̴�. ��ũ���׽� �������� ���谡 ��� �����Ǿ����� �ڿ� ö�п� ���� ������ �������� ��ũ���׽��� ����� ��� ���� ����������� ȭ�η� �ΰ��� �߽��� �Ǵ� ö���� ������ �����Ѵ�.','2020.01.06','74','74.jpg',1,'�ö��� (������)','
�Ӹ���: ���ǹ��� ���̴١�, ���� �ڽ��� �˶󡯷� �˷��� ������ ���

��ũ���׽��� ����
���̵�
ũ����
�⿬

');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N1','�뺨�� �ε�','�׹����',15000,13500,0,'�Ǹ���',null,null,'�ֿ� ���˹��л��� �۾� �� ������ ��������, �� F. �ɳ׵��� �ϻ����� ������� ����� ���� �׸��� ������ �̾߱⸦ ������ �帣�� ��Ƴ´�. �� F. �ɳ׵��� ������ �̱� ������ ��ݰ� ���Ŀ� ���� �ߴ�. ��� �̱� ���ε��� ��ݿ� ���� �����ߴ� ������ ��¼�� �ڽŵ��� ��Ȯ���� �̷��� ���� �η��������� �𸥴ٰ� ������ �� ���ϴ� ���Ÿ� �ڷ� �� ä ���ο� ������ ���� �������� ���ϴ� �� ����� �̾߱⸦ ��´�.

1963�� 11�� 22��, ����� �� F. �ɳ׵� �ϻ���Ѵ�. ���ø����� ���Ǿ� ���� ī���ν� ����ÿ���� �ɺ��� ����ũ ��帮�� �ҽ��� ��� ���� �ڽ��� �ϻ� ��ȹ�� �Ϻκ��̾��ٴ� ����� ���ݴ´�. ����� ���� �ι����� �������� ���ŵ��� ��Ƴ��� ���� ���������� ������ ġ�� ��帮. �󽺺��̰Ž��� ���� ���� �״� �� �������� ����� ó�� ������ ������ �ȴ�.

��Ŭ��ȣ���� ���� ���� ����� ������ ��å���� ���ڿ� �ߵ��� �����Լ� ������ �� ���� ���� ������ LA�� ���ϴ� ���̾���. ���� ���� �ܶ��� 4�� ����ó�� ���̴� ���� ����ġ�� �� �� ������ �Ŷ�� �Ǵ��� ��帮�� �������� �󽺺��̰Ž����� �¿��ְڴٴ� ������ �Ѵ�. ������ ī���ν� ������ �ְ� �ϻ��� �ٷγ׿��� ������ ������ ���µ�...
','2020.01.02','52','52.jpg',1,'�� ���� (������)','1963
1 �� 33
2003��
���ʷα�
������ ��');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N1','�ٽ�Ŀ�� ���� ��','��ȭ��',6500,5850,0,'�Ǹ���',null,null,'�ȷ� Ȩ�� �ø��� ��
���� �̽��͸��� ��ǰ
���ٽ�Ŀ������ ����

���� �ٷ� ���� �ִ� Ȩ���� ���� �ٶ󺸾Ҵ�. â��������� ������ ���� ���� ���⸦ ��� �־�����, ���� �޺��� �޾� ��¦�̰� �־���. �׷��� ���ڱ� �� ���� �ձ׷����� ���� ��������� ���� ���� �� ��������. ����Ʈ���̵�� ������ �� �̱�� ����� �������� ���� ���� �ھҴ�. ���� ����� ������ ������ �տ� ������ ä ���� �Ͼ��. �Ȱ� �ӿ��� Ƣ��� ������ ���� �տ��� �� ������ ���پ���. �װ��� ��źó�� ��� ��ɰ����µ�, �׷� ���� ���ݱ��� �� ���� �� ���� ������. ½ ���� �Կ����� �ұ��� �վ��� ���԰�, �� ���� ��Ȳ�� ������ ��½�ŷȴ�. �ֵ��̿� ����̿� ���� Ÿ������ �ұ濡 �۽ο� �־���. ���� �ٴ� �� ���׹����� �� �Ӹ��δ� �Ȱ��� �� �ӿ��� Ƣ��� �� ��Ŀ�� �����̿� ���ù����� ��','2019.12.30','53','53.jpg',1,'�Ƽ� �ڳ� ���� (������)','������ �� ������ ��
�ٽ�Ŀ�� ����
�޸��� ������ �������� ����
�ӽ� �ڻ��� ù ��° ����
�ӽ� �ڻ��� �� ��° ����-Ȳ���� �Һ�-
�ӽ� �ڻ��� �ϱ���
������ ���� �系
Ȳ�߿����� ����
�׹��� ������
�ٽ�Ŀ�� ���� ��
��ǿ� ���� ȸ��

��ǰ �ؼ�
�۰� ����');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N1','�� �̿��� ���θ� ','Ȳ�ݰ���',13800,12420,0,'�Ǹ���',null,null,'���θ��� ���� ���ٸ��� ��̷ο� ũ���� ���� �ؼַ��� ���� �̿��� ���θ����� Ȳ�ݰ������� �Ⱓ�Ǿ���. �߸� �̽��͸����� ȣ��, ����Ʈ, ��Ÿ������ �帣�� �ѳ���� 8���� �۰����� ���ĺ��̴� ���θ��� ���� ����Ҽ���. ������θ��� �Ѵ� ��� ����, ���ڱ� ������θ��� �´ڶ߷� ������ ������ ���� ����� �����ؾ� �ϴ� û��, �ð� �������� �������� ������ ������, �ѹ��߿� ������ �� ����� ���� ���ڿ� �ǹ��� ������, ���н��� ��ģ�� ���� ��Ʈ������ �ҷ��� ���ذ� ������ ����, �ż��� ȣ������ ���θ��� ����� ���� Ȱ��, �㸶�� ��Ź�� �ȿ��� ������� ������ �Ҹ��� ������ ��� ��û��, ��Ʃ�� ������ ���θ����� �𸥴ٴ� �ǹ��� ǰ�� �系 �� �����ϰų� ������ ���� ���纸�ٴ� ���θ���� ���縦 �پ��� �ð����� �ٶ󺸸� ��̷Ӱ� �̾߱⸦ Ǯ���.','2019.12.26','54','54.jpg',1,'���¹�,�ںο�,�ص���,�̸���,������,������,����,����� (������)','
ȥ�� �� �մ� 7
�Ǹ��� �峭 49
�ն�� �޵��꿡 119
�հ��� Ʈ��ũ 151
�̿� 181
�͸� 215
��Ź�Ⱑ �ִ� ������ 255
������ X 311

');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N1','�ɸ��� : ��ȭ��','����̵��(�ѽ��̵��)',14800,13320,0,'�Ǹ���',null,null,'11�� ȸ ����� �α� ����� <�ɸ���> ���ۼҼ�. õ������ �������ϸ� �Ƿ����� ������ ���� ����� �ذ��ؿ� ���п��� �ι��� ������θ����� ������ ���� �� ������ �Ǿ� ���˻�� ������ ����Ѵ�. J�ÿ��� ������ ��ġ ������ �� ���ó�� ���۵� ���λ���� ���̾� �Ͼ��, �ι��� �������ϸ��� ���� �̵� ����� ���� ���õǾ� ������ ������ ���� ���ܿ� ���� ���������ٴ� ����� �˰� �ȴ�.

�̵��� ��ü �� ������ ����������? �� ���� ��ü���� ���� ������ ���鿩 �ٹ̴� ���� ���� �����ϴ� ������ �����ϱ�? �ι��� �̵��� ������ ���� Ÿ���� �λ��� �����Ϸ� �� �ڵ��� ü���� �� ���� ���ΰ�?','2020.01.06','55','55.jpg',1,'���̹� (������)','��1�� ��ƿ�
��2�� ��ȸ
��3�� ����
��4�� õ���
��5�� ���������� �̾߱�
��6�� ����
��7�� ����
��8�� ���� �̱�');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N2','���� ���� �����','���ε�',18800,16920,0,'�Ǹ���',null,null,'���� �귣�� �Ƴ��α� Ű�� ���濬�� ���� �����. ���� 20���� ���������� ���, ���ڱ� ����, �Ƹ�����Ʈ ������ ġ���� �ϻ��� ������ �۰��� �ڽ��� ���� �����ϴ� ������ ���� �Ҿ� ���� ���� ������ ����̴�.

�ϰ� �Ͱ� �����ϴ� �ϰ� ���� ���̿��� �����ϴ� �۰��� ���� ������ �ϸ鼭 ������ �ʹ��� �����ϴ� �ڽ��� ���ݰ�, �� ������ ����� ǥ���ϰ� �����ϴ� ��⸦ ����. �׸��� �Ѷ��� �β����� �������� �ѽ��ϴٰ� ���������� �𸥴ٰ� �����, ���汸 ������ �ǰڴٴ� ���� ���� ù �߰����� ����.

�����ڸ�, �����ϴ� ���� ������ �� �ִ� ��⸦ �� ���̴�. �۰��� �׷� �ڽ��� ������ ����� �����ų� Ȯ���� ��� ������ �ƴ϶�, �����ϴ� ���� ������ ������ �� �ִ��� ������ �����̶�� �����Ѵ�.

�� å���� �̱�, ����, �Ϻ�, �߱����� 7�� ���� 27���� ���汸�� ���� �̾߱Ⱑ �Ƹ���� ��������. �۰��� ���࿡�� ���� ���� �������� ǳ���ϰ� ���ϵǾ� ������, ���� ���� �߿� �� �ϱ�� �޸� �� �۰��� �� �۾��� ������ ��ϵ� å �ӿ� �״�� �Ǿ���. ���� �������� ���汸 ������ ���� ������ ��ŭ ���࿡ �ʿ��� �ǿ����� ������ �����ϴ�.
','2020.01.17','56','56.jpg',1,'���濬 (������)','1�� : ���� ã�� ����
0. ������ ����
1. �ĸ�. ���� ���� ���־�
2. ������, ��ϱ��� ���� ����
3. �ٸ����γ�, ��ȭ
4. ����, �ູ�� �Ҿ��� ����
5. ����, ���� ������ �����ϴ�

* �Ƴ��α� Ű���� ����');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N2','��� ���� ����','���ͻ�',13000,11700,0,'�Ǹ���',null,null,'��̵��� �����, ����� �д� ���󿡼� ���� ����(?) �����޿�ī ��� �Ź����� �α� �ڳʴ� �ܿ� ����� ����� ��� ���ڵ��� ����� �ִ� ��� ���� �����̴�. ����� ����� ��̵��� �д� ������ ��� �Ź����� ���ݴ��� �Ź��̶��ϱ�, ���޿�ī ��� �Ź��� �ڳʴ� ����� ��������δ� ���ſ��� ����� �Ѽ����� ������ ����� �ִ� ���п� ����� ũ�� ���� ��� ����� ���� �⵵�Ѵ�.

��� ���ڵ��� ��� ����� � ���� �ٸ���? ���γ� ���������� ��ġ�� Ư���� ���� �۰� ���Ÿ�� �Ž����� �Ϸ���Ʈ�� �Բ� ���� �� �ذ�å�� �����Ѵ�.','2020.01.15','57','57.jpg',1,'���޿�ī ��� �Ź� (������)','1�� ����, ���, ��ȥ���� �ʹ� �������!
? ����ģ���� ��ȥ�� ���� ���ڰ� ��ä�� ����Դϴ� 12
? ���̵��� �ʹ� �����ؼ� ���� ���ڵ鿡�� ������ ���� �ʾƿ� 14
? ģ���� �����ϴ� ����� �����ϰ� �ƾ�� 16
? �����Ѵٴ� �� ��ü �����? 18
? ���ֿ� ����� �ٸ� �ǰ���? 20


');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N2','����� ���','��ֹ���',12500,11250,0,'�Ǹ���',null,null,'2015��, �������ǹ� <����� ��Ÿ��>�� ���� ǰ���� ���԰� �ŵ� �ݺ��ϸ� ������ ��ǳ�� �ҷ��� �۰� ������. ����� ����� ���� Ž���ϰ� �����ϰ� �ʹٴ� �״� <����� ���>�� ���� �տ� ������ �ʴ� ����� ���� ��üȭ�� ������.

<����� ���>�� ��ü ���� ����� ���� �����ϰ� ��Ƴ� å�̴�. ���� �ִ� �ü��� ����ϸ鼭�� ������ ��ü, �������� �������� ���ڵ��� ū ����� ���� ���ڴ� ����� �� ������ ������ �ٶ󺸸鼭 ����� ���� ���Ӿ��� ������ ������ �ڽŸ��� ���Ǹ� ������. ����� ����� ���� �����ϰ� �������� ��üȭ�����ν� ����̶�� ���� ��ü�� �� ���� �ٰ������� ������ ���� �õ���. "������ 5�� ������ ����� ���� ���� ���� ����� �� ����"�� ���� ��ŭ ���ڴ� ������ �ð���ŭ�̳� ���� ����� �ϼ����� ������ �����δ�.

����� ������ �ٰ������� �ϴ� ������ǥ ������ ���Ǵ� ���ڷ� �Ͽ��� ������ ����� �߰��ϰ�, ���ƺ���, �ڽŸ��� ���� ã��, ����� ���ϴ� �µ��� �����ϵ��� �ϴ� ��ΰ� �Ǿ� �ش�. ������ ���� ���� �ִ� ������ �����̴� ���� �� ������ ����� ���ĳ��� �ô뿡 �������� ����� �о�� �ϴ� ������ �ȴ�','2020.01.13','58','58.jpg',1,'������ (������)','[1�� ����� ������ �ȴ�]
����
�츮�� ������ ������
����� ���
���� ������
����� ����
�ո���� �޸��
�޿��� ������
���� �� ����
����');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N2','���� ���� ������� ���Ͽ�','���Ϻ�',12000,10800,0,'�Ǹ���',null,null,'���󿡴� �� ������ ��龲�� �ִ�. ������ ��龲�� ������ ��龲. ���ö�� ���ڴ�. ��龲�μ� ������ ����� �� ��ü�� ����, ������� �ΰ������ �Ѿ��� ���� �������� �¸����� �߻��ϴ� ��龲�� ����̴�.

���� ������ �β����� ����̳� �޸� ũ������������ ������ ���ϴ� �ҽ��� ���ݿ�, ���� �ڸ������� �� ���� �ΰ� ����� ���ϰ�, ����� �̿����� �ܸ��ϴ� �ҽ��� ��Ű�ڸ�. �װ� ��� ���� ������������ �׸����� ������ ���Ű� �߸��� ����´�.

������ <30�� ��� �������� �ϱ�>�� ó�� ���� ������ ��, ������� �׸� �����̶� �ҷ���. �׷����� ������ ������ ���� å�� �����ߴ�. �׷���. ���� ���� ���� �����, ���� �ѱ����� �����ϰ� �Ѵ�. �׸��� ��ħ�� ������. û���� �������� ������ �������� ������ �ʻ� �տ��� ���ڴ� ��� ���� �ִ� ������ ���.

�ҿ��� ȯ��� û�� ������ ������ ������ ������ �´�� ������ �ѽ������� �̾�������, ���ö�� �ڽ��� ��ó�� ����Ȱ� ���ݾ� ���ư��� �Ѵ�. �����ϰų� �����ϰų� ��ų� ���ų� �׷��ų� ���ų�, ���ö�� ���ö�� ���� ���.','2020.01.11','59','59.jpg',1,'���ö (������)','1��
�� �̸��� ��ö, ��龲��� ��

���� ���������� ����� ��ٴ� ��
õ ���� �ູ
�޸� ũ���������� ������ ���ϴ� ��
�ʹ� ���� ���� �� �׾ ���� �� ����
������ ������ ����
�� ����� �̺ҿ� ������ �ξ� �����ϱ�?
���ƺ��� ����� ���δ�
������ �����̾߱�
��� �� �� ���� ��');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N2','���縸���� ������','�Ǿ����',13500,12150,0,'�Ǹ���',null,null,'���� ������. Ÿ���� ����� ���� ���� ���ƺ� �� �ֵ���, ���� ����� ���� Ÿ���� ���� �� �ֵ���, ����� ������ �ٰ��� ����, ������ ���� �ѷ��� ��� ����� �� ������ ���� �̾߱��Ѵ�. �������ų� ������ �� ������ ����� ���縦 �̾߱��ϱ� ���� ������ �� ���� �����̶�� �̸��� �츮�� ��ư��� ������ Ÿ�������� �ξ�� �ϴ� ���� �ѷ��� �پ��� �ο�. �� �ȿ��� ������ �پ��� ������ ������ ���Ѵ�.

���迡 ���� ������ ��� ������, ���� �������� �ູ�� �������� �Ӿ��� ǥ���� ����� �ߴ� ������ ��� ��鿡��, ����� �̵��� �������� ������ ������ ��� �Ƶ�� ���鿡��, ���� ����� ���� �ٸ� �˾Ҵ� ������ ��� ���� �ƺ��鿡�� ���ϴ� �̾߱�.

���δ� �̿��߰� ���δ� �Ѿ��� �̾��ߴ�, �׷��� ���� ���縸���� ������ �� ������� ���� ����. ��� �������� ���ĵ� ����. �и� �� �������� �� ������ ����� ������ �뺯���� �״�.','2020.01.23','60','60.jpg',1,'���� (������)','1�� ���迡 ���� �״븦 ����, �츮�� ��� ������

�ǿܷ� ū�Ͽ� ����� ���
���߹޴� ������ ���Ͽ�
����� ������ �� �� �˾ƾ� �Ѵ�
���� �ɷ��� �������� ����� ������ ����
������� ���� ���� ������� ������ �ʴ� ������
Ÿ���� ���� ã�Ƴ��� ����� �����ο��Ը� �����ϴ�
');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N3','�繫��ǥ �𸣸� �ֽ����� ����� �������� ','�����Ͻ�',19800,17820,0,'�Ǹ���',null,null,'2016�� ù �Ⱓ ����, ���ڵ鿡�� ū ����� ������ 10�⸦ ������ ���繫��ǥ �𸣸� �ֽ����� ����� �������󡻰� ���ֽ� �����ǡ����� ���ƿԴ�. �����ǿ��� ���� ��ʵ��� ������ ���� �м��� Ȱ���� �� �ִ� �ֽ� �ڷ�� ������Ʈ�Ͽ�����, �޶��� �� �����̳� ���� ���� �ݿ��Ͽ���.

�ֽ� �����ڶ�� �ݵ�� ¤�� �Ѿ�� �� �繫��ǥ ������ ���� ��üũ ����Ʈ�� �� ���� ��ʷ� ������ �� �ִ� ����� �ǽ��� �ڳʸ� �Ǿ���. ���� ���ǿ��� ����ߴ� ȸ����� �� �ڷ� ������ ��� �Ǿ����� �ǹ� �ִ� ��� �Ϻο� ���� ������ �ı⡯�� ���Ͽ���.

�پ��� ȯ�濡 ���� ��ȭ�����ϰ� ����ϴ� �ֽĽ��忡�� �繫��ǥ�� �� ���ͷ��� ū ������ �Ǵ���, ��� �ս��� ���� �� �ִ���, �׸��� ��� ������ ������, �����ڸ� ���� �繫��ǥ ���� ��⸦ �˷��ش�. ������ �м��� ����� �� ���� �����鼭��, ó������ ������ �����ڸ� ���� �繫��ǥ����� �߽��� ���� �ʴ´�. ���� �繫��ǥ�� ����� ���� ��ų ������Ʈ�� �� ���̴�.
','2020.01.10','61','61.jpg',1,'����� (������)','
1�� �繫��ǥ�� �ֽ�����
�繫��ǥ�� ���� ���ͷ��� ������ �ɱ�?
�� ȸ������ ���ͷ��� �� ����ϱ�?
�������� ���ڡ��� ���� �׸� ����!
�繫��ǥ�� ���ѳ� �Ĺ��� ��ȥ�ڱ�
������� 3�質 �þ��µ� ȸ��� �� ��������?');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N3','�Ҽ�����Ʈ','�ѱ������Ź�',16000,14400,0,'�Ǹ���',null,null,'���Ҽ�����Ʈ(��ȸ�� ����)���� ���ۿ��� �˻������ �� 17�� ���� ���� ������ ���������� ȸ�ڵǴ� �ܾ��. �� ���� �ǹ̷� �����Ǵµ� ù°, ������, ����, ���迡 ������ �⿩�� �͡�, ��°�� �����Ӱ��ɼ��� ���� �͡��̴�. ������ ������ ������̰� ���������� �����Ǿ�� �ϴ� ���̴�. �̷��� ������ UN�� �߽����� ������ �۷ι� ������ SDGs(���Ӱ����� ����)�� �˸� �����ϰ� �ִ�.

SDGs�� �ൿ�Ⱓ�� 2030������� ������ �������� �߽����� �������� ���, ������ ���� ������� �� ���� �䱸�ϸ� ����Ͻ��� �ް�Ʈ����� �ڸ� ��Ҵ�. �̿� �� å�� ���Ҽ�����Ʈ���� �������� �� ���ó� �Һ����� ������ Ư¡�� ������� �м��ϰ� ������ ��ȸ�� �ŷں귣���� ���ø� ���� ���� ����� �귣�尡 �����Ӱ����ϰ� �������Ρ� ������� ��� �����ϰ� �Һ��ڿ��� �������� ����� �����ϰ��� �Ѵ�. �ƿ﷯ �Һ��� 1�� ���� ������ 48�� ����� ����ȸ�� �ŷ� �귣�塯�� �Ұ��Ͽ� �Һ��ڵ��� ��� �귣��(���)�� �Ҽ�����Ʈ�� ������ ü���ϰ� �ִ��� Ȯ���� �� �ִ�.','2020.01.13','62','62.jpg',1,'�̻���,�ֽ¹�,��â�� (������)','1�� �ǹ�/ �� ������ ���, ���Ҽ�����Ʈ��

1�� ������ �� ���� ������ ��������
�� ���� ������ �뷡�ϴ� �Ҽ�����Ʈ/ ���������� Ȯ��Ǵ� ������Ʈ ���ڡ�/ ������ ����, �׸��� �ں������� ����/ ������ ���� �߽ɿ��� ��ȸ������ ��ġ��

2�� ����� ��� ���̿��� ������ ���Ѵ�
');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N3','���ڴ� ���� ����ó��','������21',14000,12600,0,'�Ǹ���',null,null,'������ ���� ��õ���� ���� ��Ģ�� �ϰ� ������ �����ߴ�. ������ ���� ��ʸ� �� �� �ִ� ������ ���� ���ͺ�� ���ּ��ѿ� ����� �ְ�, ������ ���� ��ĵ� ���ݾ� �ٲ�� �Ա� ������ �ʺ��ڰ� ������ ���� ����� �����ϱⰡ ���� �ʴ�. ��ʵ� ����� �� �ƴ϶� å���� ���뵵 ���ݾ� �ٸ���. �� å�� ���� �ο�� ������ �ڼ��� <���뺼>���ص� 1,500�������� �Ѵ´�. �׷� �ǹ̿��� �� å�� ������ ó�� ���ϴ� �Ϲ� �����ڿ��� ���� ������ ������ �Ѵ�.
','2020.01.15','63','63.jpg',1,'���͹ٶ� ����� (������)','
����
��õ�� �� -ȫ���
��õ�� �� -�輺��
��õ�� �� -�̱��
��Ģ1. ������ �ٶ󺸰� �Ǵ����� �ʴ´�
<���߻��� �θ� ���´�>
��Ģ2. �����ϸ� �� ���� �ٸ� ���� ���� �ʴ´�
<������ �θ� ���´�>
��Ģ3. ������ ��Ʈ����ũ�� �׳� ���������
<��ٸ��� �θ� ���´�>');
REM INSERTING into BOOKSTORE.CART
SET DEFINE OFF;
Insert into BOOKSTORE.CART (P_NUM,B_TYPE,B_CODE,PRODUCTS_COUNT,WDATE,PRICE,MEMBER_ID,SALE_PRICE,B_NAME) values (1,1,'6',1,'2020/01/15',12000,'test1',10800,'���� �ε�ġ�� ���� ������ �� �ž�');
REM INSERTING into BOOKSTORE.COMMENTS
SET DEFINE OFF;
Insert into BOOKSTORE.COMMENTS (REVIEW_NUM,Q_NUM,REQUEST_NUM,MEMBER_ID,CONTENT,PASSWORD,WRITER_NAME,C_IDX) values (null,2,null,'admin','��� �����մϴ�','admin','������','12');
Insert into BOOKSTORE.COMMENTS (REVIEW_NUM,Q_NUM,REQUEST_NUM,MEMBER_ID,CONTENT,PASSWORD,WRITER_NAME,C_IDX) values (null,14,null,'admin','��� �����մϴ�','admin','������','15');
Insert into BOOKSTORE.COMMENTS (REVIEW_NUM,Q_NUM,REQUEST_NUM,MEMBER_ID,CONTENT,PASSWORD,WRITER_NAME,C_IDX) values (null,1,null,'admin','��� �����մϴ�','admin','������','4');
Insert into BOOKSTORE.COMMENTS (REVIEW_NUM,Q_NUM,REQUEST_NUM,MEMBER_ID,CONTENT,PASSWORD,WRITER_NAME,C_IDX) values (null,8,null,'test1','��� �����մϴ�~~','1111','test1','53');
Insert into BOOKSTORE.COMMENTS (REVIEW_NUM,Q_NUM,REQUEST_NUM,MEMBER_ID,CONTENT,PASSWORD,WRITER_NAME,C_IDX) values (null,null,70,'bbangaro','�͝�!!!!!!!!!!','1004','�輭��','135');
Insert into BOOKSTORE.COMMENTS (REVIEW_NUM,Q_NUM,REQUEST_NUM,MEMBER_ID,CONTENT,PASSWORD,WRITER_NAME,C_IDX) values (null,null,26,'suna','java','1004','�輭��','69');
Insert into BOOKSTORE.COMMENTS (REVIEW_NUM,Q_NUM,REQUEST_NUM,MEMBER_ID,CONTENT,PASSWORD,WRITER_NAME,C_IDX) values (null,8,null,'test1','��� �����մϴ�','1111','test1','27');
Insert into BOOKSTORE.COMMENTS (REVIEW_NUM,Q_NUM,REQUEST_NUM,MEMBER_ID,CONTENT,PASSWORD,WRITER_NAME,C_IDX) values (null,null,69,'bbangaro','1989','1004','�輭��','98');
Insert into BOOKSTORE.COMMENTS (REVIEW_NUM,Q_NUM,REQUEST_NUM,MEMBER_ID,CONTENT,PASSWORD,WRITER_NAME,C_IDX) values (null,null,70,'bbangaro','���','1004','�輭��','43');
Insert into BOOKSTORE.COMMENTS (REVIEW_NUM,Q_NUM,REQUEST_NUM,MEMBER_ID,CONTENT,PASSWORD,WRITER_NAME,C_IDX) values (null,null,72,'bbangaro','�Է�','1004','�輭��','136');
Insert into BOOKSTORE.COMMENTS (REVIEW_NUM,Q_NUM,REQUEST_NUM,MEMBER_ID,CONTENT,PASSWORD,WRITER_NAME,C_IDX) values (null,null,1,'bbangaro','�� ��� �ȴ޾��ּ��� �Ѥ�','1004','�輭��','1');
Insert into BOOKSTORE.COMMENTS (REVIEW_NUM,Q_NUM,REQUEST_NUM,MEMBER_ID,CONTENT,PASSWORD,WRITER_NAME,C_IDX) values (null,null,72,'bbangaro','�ǤǤǱ���ֳ�Ǥ�','1004','�輭��','139');
Insert into BOOKSTORE.COMMENTS (REVIEW_NUM,Q_NUM,REQUEST_NUM,MEMBER_ID,CONTENT,PASSWORD,WRITER_NAME,C_IDX) values (null,null,1,'admin','�亯�� �ʾ� �˼��մϴ�. �԰��� �����ϴ�','admin','������','16');
Insert into BOOKSTORE.COMMENTS (REVIEW_NUM,Q_NUM,REQUEST_NUM,MEMBER_ID,CONTENT,PASSWORD,WRITER_NAME,C_IDX) values (null,1,null,'test1','��� �����մϴ�','1111','test1','14');
REM INSERTING into BOOKSTORE.E_BOOK
SET DEFINE OFF;
REM INSERTING into BOOKSTORE.HIGH_CATEGORY
SET DEFINE OFF;
Insert into BOOKSTORE.HIGH_CATEGORY (H_NAME,H_CODE) values ('����','K');
Insert into BOOKSTORE.HIGH_CATEGORY (H_NAME,H_CODE) values ('�ܱ�','O');
Insert into BOOKSTORE.HIGH_CATEGORY (H_NAME,H_CODE) values ('�Ű�','N');
Insert into BOOKSTORE.HIGH_CATEGORY (H_NAME,H_CODE) values ('����Ʈ����','B');
Insert into BOOKSTORE.HIGH_CATEGORY (H_NAME,H_CODE) values ('e��','E');
Insert into BOOKSTORE.HIGH_CATEGORY (H_NAME,H_CODE) values ('�������','A');
REM INSERTING into BOOKSTORE.LOW_CATEGORY
SET DEFINE OFF;
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('�Ҽ�','K1','K');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('��/������','K2','K');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('����/�濵','K3','K');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('�ڱ���','K4','K');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('�ι�','K5','K');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('����/��ȭ','K6','K');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('�Ҽ�','O1','O');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('��/������','O2','O');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('����/�濵','O3','O');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('�ڱ���','O4','O');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('�ι�','O5','O');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('����/��ȭ','O6','O');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('�Ҽ�','N1','N');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('��/������','N2','N');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('����/�濵','N3','N');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('�ڱ���','N4','N');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('�ι�','N5','N');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('����/��ȭ','N6','N');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('�Ҽ�','B1','B');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('��/������','B2','B');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('����/�濵','B3','B');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('�ڱ���','B4','B');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('�ι�','B5','B');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('����/��ȭ','B6','B');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('�Ҽ�','E1','E');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('��/������','E2','E');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('����/�濵','E3','E');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('�ڱ���','E4','E');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('�ι�','E5','E');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('����/��ȭ','E6','E');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('�Ҽ�','A1','A');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('��/������','A2','A');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('����/�濵','A3','A');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('�ڱ���','A4','A');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('�ι�','A5','A');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('����/��ȭ','A6','A');
REM INSERTING into BOOKSTORE.MEMBER
SET DEFINE OFF;
Insert into BOOKSTORE.MEMBER (MEMBER_ID,USERNAME,PASSWORD,EMAIL,ZIPCODE,ADDRESS1,ADDRESS2,MOBILEPHONE,REGDATE,U_STATUS) values ('soh445','��ȯŹ','1234','soh445@naver.com','08325','���� ���α� ���Ϸ�2�� 2','1206ȣ','01091359118','2020/01/09',1);
Insert into BOOKSTORE.MEMBER (MEMBER_ID,USERNAME,PASSWORD,EMAIL,ZIPCODE,ADDRESS1,ADDRESS2,MOBILEPHONE,REGDATE,U_STATUS) values ('test1','test1','1111','test@test.com','12345','�����','111','010-1111-1111','2020/01/08',1);
Insert into BOOKSTORE.MEMBER (MEMBER_ID,USERNAME,PASSWORD,EMAIL,ZIPCODE,ADDRESS1,ADDRESS2,MOBILEPHONE,REGDATE,U_STATUS) values ('hh12','������','1234','hh@naver.com','06267','���� ������ ������� 238-3','111','01011111111','2020/01/13',1);
Insert into BOOKSTORE.MEMBER (MEMBER_ID,USERNAME,PASSWORD,EMAIL,ZIPCODE,ADDRESS1,ADDRESS2,MOBILEPHONE,REGDATE,U_STATUS) values ('soh112','��ȯŹ','1234','soh445@naver.com','06120','���� ������ ������� 476','1234','01091359118','2020/01/15',1);
Insert into BOOKSTORE.MEMBER (MEMBER_ID,USERNAME,PASSWORD,EMAIL,ZIPCODE,ADDRESS1,ADDRESS2,MOBILEPHONE,REGDATE,U_STATUS) values ('bbangaro','�輭��','1004','suna@suna','15831','��⵵ ������','����','010-5047-7022','2020/01/08',1);
Insert into BOOKSTORE.MEMBER (MEMBER_ID,USERNAME,PASSWORD,EMAIL,ZIPCODE,ADDRESS1,ADDRESS2,MOBILEPHONE,REGDATE,U_STATUS) values ('admin','������','admin','admin@admin.com','00000','�����','000','000','2020/01/10',0);
Insert into BOOKSTORE.MEMBER (MEMBER_ID,USERNAME,PASSWORD,EMAIL,ZIPCODE,ADDRESS1,ADDRESS2,MOBILEPHONE,REGDATE,U_STATUS) values ('suna','����','1004','suna@suna','06313','���� ������ ������ 4','��Ʈķ��','01050477022','2020/01/13',1);
REM INSERTING into BOOKSTORE.NOTICE
SET DEFINE OFF;
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (19,'232323','232323','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (20,'sadsag','gsfsdf','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (6,'�׽�Ʈ2','�׽�Ʈ�����Դϴ�','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (7,'111','111','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (8,'111','111','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (9,'222','222','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (10,'333','333','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (11,'333','333','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (12,'333','333','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (13,'222','222','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (84,'�׽�Ʈ �̹��� ������','������ �̹���','20/01/15','010.jpg',1);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (21,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (22,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (23,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (24,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (25,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (26,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (27,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (28,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (29,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (30,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (31,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (32,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (33,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (34,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (35,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (36,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (37,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (38,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (39,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (40,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (41,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (42,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (43,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (44,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (45,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (46,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (47,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (48,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (49,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (50,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (51,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (52,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (53,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (54,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (55,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (56,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (57,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (58,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (59,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (60,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (61,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (62,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (63,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (64,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (65,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (66,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (67,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (68,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (69,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (70,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (71,'�׽�Ʈ3','�׽�Ʈ����','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (83,'�Ӥ�������','1231321321','20/01/15','8.jpg',1);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (85,'�ٽ� �׽�Ʈ ������ �̹���','����','20/01/15','75.jpg',1);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (86,'������ ���� ���','������ ���� ���','20/01/15','null70.jpg71.jpg72.jpg',1);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (87,'������ ���� ���','������ ���� ���','20/01/15','null6.jpg9.jpg010.jpg',1);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (88,'������ ���� ���','������ ���� ���','20/01/15','06.jpg6.jpg9.jpg010.jpg',1);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (90,'���ϸ��� ���ȳ�','����','20/01/15','1.jpg,02.jpg,2.jpg,03.jpg,',1);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (14,'wewew','23232','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (15,'2323','232323','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (16,'qwqw','qeqe','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (17,'qwqw','qeqe','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (18,'qwqw','qeqe','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (82,'���ϸ��� ���ȳ�','���� ���ϸ��� �ܾ��� 2��1���� �������� ��� �Ҹ� �����̴� ���� �����Ͽ� ��� ����� �ֽñ� �ٶ��ϴ�.','20/01/14',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (89,'�ڸ��� �׽�Ʈ','�ڸ��� �׽�Ʈ','20/01/15','2.jpg,03.jpg,06.jpg,6.jpg,',1);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (92,'cdsd','asda','20/01/15','5.jpg,06.jpg,09.jpg,9.jpg,',1);
REM INSERTING into BOOKSTORE.ORDERS
SET DEFINE OFF;
REM INSERTING into BOOKSTORE.QNA
SET DEFINE OFF;
Insert into BOOKSTORE.QNA (Q_NUM,MEMBER_ID,USERNAME,PASSWORD,SUBJECT,CATEGORY,UPLOAD,B_CODE,B_TYPE,REGDATE) values (5,'test1','test1','1111','�׽�Ʈ','����/��������','���.png','4',1,to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.QNA (Q_NUM,MEMBER_ID,USERNAME,PASSWORD,SUBJECT,CATEGORY,UPLOAD,B_CODE,B_TYPE,REGDATE) values (7,'test1','test1','1111','�׽�Ʈ','��ǰ/��ȯ','��������.jpg','4',1,to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.QNA (Q_NUM,MEMBER_ID,USERNAME,PASSWORD,SUBJECT,CATEGORY,UPLOAD,B_CODE,B_TYPE,REGDATE) values (9,'test1','test1','1111','�׽�Ʈ','�ֹ�/���','800x0.jpg','4',1,to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.QNA (Q_NUM,MEMBER_ID,USERNAME,PASSWORD,SUBJECT,CATEGORY,UPLOAD,B_CODE,B_TYPE,REGDATE) values (11,'test1','test1','1111','�׽�Ʈ','����/��������','��������.jpg','4',1,to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.QNA (Q_NUM,MEMBER_ID,USERNAME,PASSWORD,SUBJECT,CATEGORY,UPLOAD,B_CODE,B_TYPE,REGDATE) values (14,'admin','������','admin','�׽�Ʈ','���','800x0.jpg','4',1,to_date('2020/01/13','YYYY/MM/DD'));
Insert into BOOKSTORE.QNA (Q_NUM,MEMBER_ID,USERNAME,PASSWORD,SUBJECT,CATEGORY,UPLOAD,B_CODE,B_TYPE,REGDATE) values (8,'test1','test1','1111','�׽�Ʈ','����/��������','800x0.jpg','4',1,to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.QNA (Q_NUM,MEMBER_ID,USERNAME,PASSWORD,SUBJECT,CATEGORY,UPLOAD,B_CODE,B_TYPE,REGDATE) values (4,'test1','test1','1111','�׽�Ʈ','��ǰ/��ȯ','��������1.jpg','4',1,to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.QNA (Q_NUM,MEMBER_ID,USERNAME,PASSWORD,SUBJECT,CATEGORY,UPLOAD,B_CODE,B_TYPE,REGDATE) values (2,'test1','test1','1111','���� �׽�Ʈ','�ֹ�/���','�����½ð�_���ȭ��.jpg','4',1,to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.QNA (Q_NUM,MEMBER_ID,USERNAME,PASSWORD,SUBJECT,CATEGORY,UPLOAD,B_CODE,B_TYPE,REGDATE) values (1,'test1','test1','1111','�׽�Ʈ','���','1.jpg','4',1,to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.QNA (Q_NUM,MEMBER_ID,USERNAME,PASSWORD,SUBJECT,CATEGORY,UPLOAD,B_CODE,B_TYPE,REGDATE) values (13,'hh12','������','1234','���� ���� ���� �ذ����ּ���!!','���','��������.jpg','4',1,to_date('2020/01/13','YYYY/MM/DD'));
Insert into BOOKSTORE.QNA (Q_NUM,MEMBER_ID,USERNAME,PASSWORD,SUBJECT,CATEGORY,UPLOAD,B_CODE,B_TYPE,REGDATE) values (6,'test1','test1','1111','�׽�Ʈ','�ֹ�/���','���.png','4',1,to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.QNA (Q_NUM,MEMBER_ID,USERNAME,PASSWORD,SUBJECT,CATEGORY,UPLOAD,B_CODE,B_TYPE,REGDATE) values (10,'test1','test1','1111','�׽�Ʈ','��ǰ/��ȯ','800x0.jpg','4',1,to_date('2020/01/10','YYYY/MM/DD'));
REM INSERTING into BOOKSTORE.REQUEST
SET DEFINE OFF;
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (17,'bbangaro','���� ȭ���� �ֳ���?','1004','����.jpg',to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (23,'bbangaro','�� ���� å','1004','��6.jpg',to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (15,'bbangaro','��Ÿ�ϸ� å','1004','�蹫��.jpg',to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (16,'bbangaro','�����','1004','�����g.jpg',to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (24,'bbangaro','����� ��� ���ϳ���','1004','sp5.jpg',to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (25,'bbangaro','��ȥ�� ���͵� ���� å','1004','sp4.jpg',to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (26,'bbangaro','�ڹ��� ���� �����ּ��� ��','1004','sp7.jpg',to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (41,'bbangaro','��..','1004','�ٿ�ε�.jfif',to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (64,'bbangaro','������ �ʹ� ���','1004','default.gif',to_date('2020/01/13','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (72,'bbangaro','�̷���','1004','�Ͼ�ڵ��ؾ���.jpg',to_date('2020/01/15','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (66,'bbangaro','������ �ʹ� ���','1004','sp4.jpg',to_date('2020/01/13','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (1,'bbangaro','BTS���� ���� �԰� �ǳ���?','1004','bts.jpg',to_date('2020/01/08','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (67,'bbangaro','������ �ʹ� ���','1004','default.gif',to_date('2020/01/13','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (70,'suna','���ǹޱ� �׽�Ʈ','1004','default.gif',to_date('2020/01/13','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (19,'bbangaro','�װھ��','1004','�װھ��1.jpg',to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (20,'bbangaro','���� ��ġ��','1004','��.jpg',to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (21,'bbangaro','�Ⱦ��ϴ� ��� óġ�ϴ� ��','1004','��2.jpg',to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (69,'test1','test','1004','default.gif',to_date('2020/01/13','YYYY/MM/DD'));
REM INSERTING into BOOKSTORE.REVIEW
SET DEFINE OFF;
Insert into BOOKSTORE.REVIEW (REVIEW_NUM,MEMBER_ID,SUBJECT,UPLOAD,B_CODE,ORDERID,B_TYPE,PARENTNO) values (1,'soh445','��',null,'1',null,1,0);
Insert into BOOKSTORE.REVIEW (REVIEW_NUM,MEMBER_ID,SUBJECT,UPLOAD,B_CODE,ORDERID,B_TYPE,PARENTNO) values (32,'soh112','123','1000001241.jpg','1',null,1,0);
Insert into BOOKSTORE.REVIEW (REVIEW_NUM,MEMBER_ID,SUBJECT,UPLOAD,B_CODE,ORDERID,B_TYPE,PARENTNO) values (2,'soh445','�����',null,'1',null,1,0);
Insert into BOOKSTORE.REVIEW (REVIEW_NUM,MEMBER_ID,SUBJECT,UPLOAD,B_CODE,ORDERID,B_TYPE,PARENTNO) values (3,'soh445','�������',null,'1',null,1,0);
Insert into BOOKSTORE.REVIEW (REVIEW_NUM,MEMBER_ID,SUBJECT,UPLOAD,B_CODE,ORDERID,B_TYPE,PARENTNO) values (4,'soh445','������ġ���..',null,'1',null,1,2);
Insert into BOOKSTORE.REVIEW (REVIEW_NUM,MEMBER_ID,SUBJECT,UPLOAD,B_CODE,ORDERID,B_TYPE,PARENTNO) values (5,'soh445','�����4',null,'1',null,1,3);
Insert into BOOKSTORE.REVIEW (REVIEW_NUM,MEMBER_ID,SUBJECT,UPLOAD,B_CODE,ORDERID,B_TYPE,PARENTNO) values (53,'soh112','�ƿ��ƿ��Ƥȷ����Ӥ�','1000001032.jpg','1',null,1,0);
Insert into BOOKSTORE.REVIEW (REVIEW_NUM,MEMBER_ID,SUBJECT,UPLOAD,B_CODE,ORDERID,B_TYPE,PARENTNO) values (6,'soh445','�� ����ְ�',null,'1',null,1,4);
Insert into BOOKSTORE.REVIEW (REVIEW_NUM,MEMBER_ID,SUBJECT,UPLOAD,B_CODE,ORDERID,B_TYPE,PARENTNO) values (33,'soh112','123','10000012411.jpg','1',null,1,0);
Insert into BOOKSTORE.REVIEW (REVIEW_NUM,MEMBER_ID,SUBJECT,UPLOAD,B_CODE,ORDERID,B_TYPE,PARENTNO) values (54,'soh112','��������','10000013582.jpg','1',null,1,0);
Insert into BOOKSTORE.REVIEW (REVIEW_NUM,MEMBER_ID,SUBJECT,UPLOAD,B_CODE,ORDERID,B_TYPE,PARENTNO) values (36,'soh112','����4123','10000010872.jpg','1',null,1,0);
Insert into BOOKSTORE.REVIEW (REVIEW_NUM,MEMBER_ID,SUBJECT,UPLOAD,B_CODE,ORDERID,B_TYPE,PARENTNO) values (28,'soh112','123','10000006993.jpg','1',null,1,0);
Insert into BOOKSTORE.REVIEW (REVIEW_NUM,MEMBER_ID,SUBJECT,UPLOAD,B_CODE,ORDERID,B_TYPE,PARENTNO) values (52,'soh112','�ƿ��ƿ�','100000062814.jpg','1',null,1,0);
--------------------------------------------------------
--  DDL for Index AUDIO_BOOK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BOOKSTORE"."AUDIO_BOOK_PK" ON "BOOKSTORE"."AUDIO_BOOK" ("A_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index HIGH_CATEGORY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BOOKSTORE"."HIGH_CATEGORY_PK" ON "BOOKSTORE"."HIGH_CATEGORY" ("H_CODE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ORDERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BOOKSTORE"."ORDERS_PK" ON "BOOKSTORE"."ORDERS" ("O_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index COMMENTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BOOKSTORE"."COMMENTS_PK" ON "BOOKSTORE"."COMMENTS" ("C_IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ORDERS_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "BOOKSTORE"."ORDERS_UK1" ON "BOOKSTORE"."ORDERS" ("ORDERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index REVIEW_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BOOKSTORE"."REVIEW_PK" ON "BOOKSTORE"."REVIEW" ("REVIEW_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index QNA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BOOKSTORE"."QNA_PK" ON "BOOKSTORE"."QNA" ("Q_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index REQUEST_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BOOKSTORE"."REQUEST_PK" ON "BOOKSTORE"."REQUEST" ("REQUEST_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index BOOK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BOOKSTORE"."BOOK_PK" ON "BOOKSTORE"."BOOK" ("B_CODE", "B_TYPE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index LOW_CATEGORY_PK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "BOOKSTORE"."LOW_CATEGORY_PK1" ON "BOOKSTORE"."LOW_CATEGORY" ("L_CODE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MEMBER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BOOKSTORE"."MEMBER_PK" ON "BOOKSTORE"."MEMBER" ("MEMBER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index NOTICE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BOOKSTORE"."NOTICE_PK" ON "BOOKSTORE"."NOTICE" ("N_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index E_BOOK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BOOKSTORE"."E_BOOK_PK" ON "BOOKSTORE"."E_BOOK" ("E_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CART_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BOOKSTORE"."CART_PK" ON "BOOKSTORE"."CART" ("P_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "BOOKSTORE"."MEMBER" ADD CONSTRAINT "MEMBER_PK" PRIMARY KEY ("MEMBER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "BOOKSTORE"."MEMBER" MODIFY ("U_STATUS" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."MEMBER" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."MEMBER" MODIFY ("MOBILEPHONE" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."MEMBER" MODIFY ("ADDRESS2" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."MEMBER" MODIFY ("ADDRESS1" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."MEMBER" MODIFY ("ZIPCODE" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."MEMBER" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."MEMBER" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."MEMBER" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."MEMBER" MODIFY ("MEMBER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ORDERS
--------------------------------------------------------

  ALTER TABLE "BOOKSTORE"."ORDERS" ADD CONSTRAINT "ORDERS_UK1" UNIQUE ("ORDERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "BOOKSTORE"."ORDERS" ADD CONSTRAINT "ORDERS_PK" PRIMARY KEY ("O_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "BOOKSTORE"."ORDERS" MODIFY ("B_NAME" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."ORDERS" MODIFY ("WDATE" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."ORDERS" MODIFY ("CANCEL" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."ORDERS" MODIFY ("STATE" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."ORDERS" MODIFY ("PAY_TYPE" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."ORDERS" MODIFY ("AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."ORDERS" MODIFY ("RECIPIENT_PHONE" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."ORDERS" MODIFY ("RECIPIENT_ADDRESS" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."ORDERS" MODIFY ("RECIPIENT_ZIPCODE" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."ORDERS" MODIFY ("RECIPIENT_NAME" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."ORDERS" MODIFY ("BUYER_PHONE" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."ORDERS" MODIFY ("BUYER_ADDRESS" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."ORDERS" MODIFY ("BUYER_ZIPCODE" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."ORDERS" MODIFY ("BUYER_NAME" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."ORDERS" MODIFY ("PRODUCTS_COUNT" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."ORDERS" MODIFY ("B_CODE" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."ORDERS" MODIFY ("B_TYPE" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."ORDERS" MODIFY ("MEMBER_ID" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."ORDERS" MODIFY ("ORDERID" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."ORDERS" MODIFY ("O_NUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table E_BOOK
--------------------------------------------------------

  ALTER TABLE "BOOKSTORE"."E_BOOK" ADD CONSTRAINT "E_BOOK_PK" PRIMARY KEY ("E_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "BOOKSTORE"."E_BOOK" MODIFY ("E_IMAGE" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."E_BOOK" MODIFY ("E_NUM" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."E_BOOK" MODIFY ("ORDERID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "BOOKSTORE"."COMMENTS" ADD CONSTRAINT "COMMENTS_PK" PRIMARY KEY ("C_IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "BOOKSTORE"."COMMENTS" MODIFY ("C_IDX" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."COMMENTS" MODIFY ("WRITER_NAME" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."COMMENTS" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."COMMENTS" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."COMMENTS" MODIFY ("MEMBER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CART
--------------------------------------------------------

  ALTER TABLE "BOOKSTORE"."CART" ADD CONSTRAINT "CART_PK" PRIMARY KEY ("P_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "BOOKSTORE"."CART" MODIFY ("B_NAME" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."CART" MODIFY ("MEMBER_ID" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."CART" MODIFY ("PRICE" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."CART" MODIFY ("WDATE" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."CART" MODIFY ("PRODUCTS_COUNT" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."CART" MODIFY ("B_CODE" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."CART" MODIFY ("B_TYPE" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."CART" MODIFY ("P_NUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "BOOKSTORE"."REVIEW" ADD CONSTRAINT "REVIEW_PK" PRIMARY KEY ("REVIEW_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "BOOKSTORE"."REVIEW" MODIFY ("B_TYPE" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."REVIEW" MODIFY ("B_CODE" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."REVIEW" MODIFY ("R_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."REVIEW" MODIFY ("SUBJECT" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."REVIEW" MODIFY ("MEMBER_ID" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."REVIEW" MODIFY ("REVIEW_NUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table AUDIO_BOOK
--------------------------------------------------------

  ALTER TABLE "BOOKSTORE"."AUDIO_BOOK" ADD CONSTRAINT "AUDIO_BOOK_PK" PRIMARY KEY ("A_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "BOOKSTORE"."AUDIO_BOOK" MODIFY ("AUDIO" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."AUDIO_BOOK" MODIFY ("A_NUM" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."AUDIO_BOOK" MODIFY ("ORDERID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REQUEST
--------------------------------------------------------

  ALTER TABLE "BOOKSTORE"."REQUEST" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."REQUEST" ADD CONSTRAINT "REQUEST_PK" PRIMARY KEY ("REQUEST_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "BOOKSTORE"."REQUEST" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."REQUEST" MODIFY ("R_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."REQUEST" MODIFY ("SUBJECT" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."REQUEST" MODIFY ("MEMBER_ID" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."REQUEST" MODIFY ("REQUEST_NUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LOW_CATEGORY
--------------------------------------------------------

  ALTER TABLE "BOOKSTORE"."LOW_CATEGORY" ADD CONSTRAINT "LOW_CATEGORY_PK" PRIMARY KEY ("L_CODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "BOOKSTORE"."LOW_CATEGORY" MODIFY ("H_CODE" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."LOW_CATEGORY" MODIFY ("L_CODE" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."LOW_CATEGORY" MODIFY ("L_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "BOOKSTORE"."NOTICE" ADD CONSTRAINT "NOTICE_PK" PRIMARY KEY ("N_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "BOOKSTORE"."NOTICE" MODIFY ("WDATE" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."NOTICE" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."NOTICE" MODIFY ("SUBJECT" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."NOTICE" MODIFY ("N_NUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HIGH_CATEGORY
--------------------------------------------------------

  ALTER TABLE "BOOKSTORE"."HIGH_CATEGORY" ADD CONSTRAINT "HIGH_CATEGORY_PK" PRIMARY KEY ("H_CODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "BOOKSTORE"."HIGH_CATEGORY" MODIFY ("H_CODE" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."HIGH_CATEGORY" MODIFY ("H_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOOK
--------------------------------------------------------

  ALTER TABLE "BOOKSTORE"."BOOK" ADD CONSTRAINT "BOOK_PK" PRIMARY KEY ("B_CODE", "B_TYPE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "BOOKSTORE"."BOOK" MODIFY ("CONTENTS" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."BOOK" MODIFY ("WRITER_NAME" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."BOOK" MODIFY ("B_TYPE" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."BOOK" MODIFY ("B_IMAGE" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."BOOK" MODIFY ("B_CODE" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."BOOK" MODIFY ("CREATED" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."BOOK" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."BOOK" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."BOOK" MODIFY ("BUY_NUM" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."BOOK" MODIFY ("SALE_PRICE" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."BOOK" MODIFY ("B_PRICE" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."BOOK" MODIFY ("B_COMPANY" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."BOOK" MODIFY ("B_NAME" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."BOOK" MODIFY ("L_CODE" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."BOOK" MODIFY ("H_CODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "BOOKSTORE"."QNA" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."QNA" ADD CONSTRAINT "QNA_PK" PRIMARY KEY ("Q_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "BOOKSTORE"."QNA" MODIFY ("B_TYPE" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."QNA" MODIFY ("B_CODE" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."QNA" MODIFY ("R_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."QNA" MODIFY ("CATEGORY" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."QNA" MODIFY ("SUBJECT" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."QNA" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."QNA" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."QNA" MODIFY ("MEMBER_ID" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."QNA" MODIFY ("Q_NUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table AUDIO_BOOK
--------------------------------------------------------

  ALTER TABLE "BOOKSTORE"."AUDIO_BOOK" ADD CONSTRAINT "AUDIO_BOOK_FK1" FOREIGN KEY ("ORDERID")
	  REFERENCES "BOOKSTORE"."ORDERS" ("ORDERID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BOOK
--------------------------------------------------------

  ALTER TABLE "BOOKSTORE"."BOOK" ADD CONSTRAINT "BOOK_FK1" FOREIGN KEY ("L_CODE")
	  REFERENCES "BOOKSTORE"."LOW_CATEGORY" ("L_CODE") ENABLE;
  ALTER TABLE "BOOKSTORE"."BOOK" ADD CONSTRAINT "BOOK_FK2" FOREIGN KEY ("H_CODE")
	  REFERENCES "BOOKSTORE"."HIGH_CATEGORY" ("H_CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CART
--------------------------------------------------------

  ALTER TABLE "BOOKSTORE"."CART" ADD CONSTRAINT "CART_FK1" FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "BOOKSTORE"."MEMBER" ("MEMBER_ID") ENABLE;
  ALTER TABLE "BOOKSTORE"."CART" ADD CONSTRAINT "CART_FK2" FOREIGN KEY ("B_CODE", "B_TYPE")
	  REFERENCES "BOOKSTORE"."BOOK" ("B_CODE", "B_TYPE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "BOOKSTORE"."COMMENTS" ADD CONSTRAINT "COMMENTS_FK1" FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "BOOKSTORE"."MEMBER" ("MEMBER_ID") ENABLE;
  ALTER TABLE "BOOKSTORE"."COMMENTS" ADD CONSTRAINT "COMMENTS_FK3" FOREIGN KEY ("Q_NUM")
	  REFERENCES "BOOKSTORE"."QNA" ("Q_NUM") ENABLE;
  ALTER TABLE "BOOKSTORE"."COMMENTS" ADD CONSTRAINT "COMMENTS_FK4" FOREIGN KEY ("REVIEW_NUM")
	  REFERENCES "BOOKSTORE"."REVIEW" ("REVIEW_NUM") ENABLE;
  ALTER TABLE "BOOKSTORE"."COMMENTS" ADD CONSTRAINT "COMMENTS_FK5" FOREIGN KEY ("REQUEST_NUM")
	  REFERENCES "BOOKSTORE"."REQUEST" ("REQUEST_NUM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table E_BOOK
--------------------------------------------------------

  ALTER TABLE "BOOKSTORE"."E_BOOK" ADD CONSTRAINT "E_BOOK_FK1" FOREIGN KEY ("ORDERID")
	  REFERENCES "BOOKSTORE"."ORDERS" ("ORDERID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORDERS
--------------------------------------------------------

  ALTER TABLE "BOOKSTORE"."ORDERS" ADD CONSTRAINT "ORDERS_FK1" FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "BOOKSTORE"."MEMBER" ("MEMBER_ID") ENABLE;
  ALTER TABLE "BOOKSTORE"."ORDERS" ADD CONSTRAINT "ORDERS_FK2" FOREIGN KEY ("B_CODE", "B_TYPE")
	  REFERENCES "BOOKSTORE"."BOOK" ("B_CODE", "B_TYPE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "BOOKSTORE"."QNA" ADD CONSTRAINT "QNA_FK1" FOREIGN KEY ("B_CODE", "B_TYPE")
	  REFERENCES "BOOKSTORE"."BOOK" ("B_CODE", "B_TYPE") ENABLE;
  ALTER TABLE "BOOKSTORE"."QNA" ADD CONSTRAINT "QNA_FK3" FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "BOOKSTORE"."MEMBER" ("MEMBER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REQUEST
--------------------------------------------------------

  ALTER TABLE "BOOKSTORE"."REQUEST" ADD CONSTRAINT "REQUEST_FK1" FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "BOOKSTORE"."MEMBER" ("MEMBER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "BOOKSTORE"."REVIEW" ADD CONSTRAINT "REVIEW_FK1" FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "BOOKSTORE"."MEMBER" ("MEMBER_ID") ENABLE;
  ALTER TABLE "BOOKSTORE"."REVIEW" ADD CONSTRAINT "REVIEW_FK2" FOREIGN KEY ("ORDERID")
	  REFERENCES "BOOKSTORE"."ORDERS" ("ORDERID") ENABLE;
  ALTER TABLE "BOOKSTORE"."REVIEW" ADD CONSTRAINT "REVIEW_FK3" FOREIGN KEY ("B_CODE", "B_TYPE")
	  REFERENCES "BOOKSTORE"."BOOK" ("B_CODE", "B_TYPE") ENABLE;
