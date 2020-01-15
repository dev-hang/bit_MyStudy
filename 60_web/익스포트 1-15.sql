--------------------------------------------------------
--  파일이 생성됨 - 수요일-1월-15-2020   
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
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K2','잔을 부딪치는 것이 도움이 될 거야','미디어창비',12000,10800,0,'판매중','신상','베스트상품','국내 최초의 시(詩) 큐레이션 앱 시요일이 엄선한 시선집. 허수경, 기형도부터 이제니, 손미까지 오래도록 읽히며 앞으로도 사랑받을 시인들의 시에는 저마다의 필치로 써 내려간 술이 담겨 있다.

여기에는 그간 많은 시가 노래한 사랑과 이별("술이 깨고 나서 처음 바라본 당신의 얼굴이 온통 내 세상 같다"_박준 당신이라는 세상)을 포함해 기쁨과 슬픔("모든 추억은 쉴 곳을 잃었네/나 그 술집에서 흐느꼈네"_기형도 그집 앞), 좌절과 위로("잔은 또 그렇게 차오를 테지/댓잎에 빙의된 바람도 자리를 찾아 고된 몸살을 다독일 테지"_박소란 기침을 하며 떠도는 귀신이)의 목소리가 복합적으로 담겨 있다.

일상에서 술은 현실 도피의 도구이기도 하지만, 다양한 삶의 이면을 엿볼 수 있는 중요한 매개이기도 하다. 그래서 술에 대한 시를 담은 이 책은 어디를 펼쳐도 인생의 한 페이지를 만나게 하는 동시에 한 편 한 편 마음 깊숙이 자리 잡는 시적 감동을 안겨준다.','2019.11.20','6','6.jpg',1,'시요일','
반성 21_김영승
겨울보리 푸르른 들-삼동일기 2_고재종
고향 앞에서_오장환
물류창고_이수명
혼자 있기 싫어서 잤다_유진목
황혼병·4_이문재
그런 일이 어딨노 경(經)_박규리
장화_이정록
자존_김언
탄 것_이근화
열대어는 차갑다_김소연
소일(消日)-1998년 봄_장석남



');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K3','리더의 용기','갤리온',18000,16200,0,'판매중','신상','베스트상품','7년 동안 스타트업 기업부터 포춘 50대 기업까지 수많은 기업의 리더들을 인터뷰하고, 40만 개의 데이터를 분석한 끝에 그녀는 마침내 ‘리더십의 비밀’을 한 권의 책으로 엮어내는 데 성공했다. 그렇게 탄생한 이 책은 53주 연속 아마존 베스트셀러에 올랐고, 뉴욕타임스 · 월스트리트저널 · 위클리지 1위에 꼽혔으며, 월스트리트저널이 발표한 ‘2019 CEO가 꼭 읽어야할 책’에 선정되었다.

브레네 브라운의 20년 연구의 결정판이라고 할 수 있는 『리더의 용기』에는 생산적인 소통을 통해 소속감과 공감 이끌어내는 방법부터 혁신적인 변화를 만들어내는 기술, 실패에도 무너지지 않는 조직의 회복 탄력성을 기르는 법, 팀원들의 진심 어린 신뢰를 얻어내는 방법까지 리더의 고민을 꿰뚫어 보는 듯한 조언과 다양한 연구 자료 · 사례를 통한 조직의 문제 해결법이 자세하게 담겨 있다.','2019.12.09','11','11.jpg',1,'브레네 브라운 (지은이),강주헌 (옮긴이)','
? 독자에게 보내는 편지
? 서문- 위기를 돌파하고 앞으로 나아가는 리더는 무엇이 다른가

제 1부- 취약성 인정하기
Vulnerability 취약성:
부족함을 인정하지 않고는 용기를 끌어낼 수 없다

');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K3','조지 길더 구글의 종말','청림출판',20000,18000,0,'판매중','신상','베스트상품','오늘날 일상에서든, 비즈니스에서든 구글을 이용하지 않는 사람은 없다. 감히 우리 세상의 체계가 되었다고도 말할 수 있을 것이다. 이렇게 한참 성공가도를 달리고 있는데 ‘구글의 종말’이라니. 도대체 무슨 소리일까? 이처럼 충격적인 예언을 한 사람은 바로 《텔레비전 이후의 삶(Life After Television)》에서 네트워크 컴퓨터의 출현을 예상하고 스티브 잡스에게 큰 영향을 준 조지 길더이다. 이 책에서 그는 구글이 구축한 세상 체계의 치명적인 약점을 해결하고 대신할 새로운 기술을 제안하고 있다.

그의 말에 따르면 인터넷 세상이 뒤집어질 대변혁이 다가오고 있다. 그가 말하는 구글의 치명적인 약점은 무엇일까? 새로운 세계에서 구글은 약점을 극복하고 경쟁에서 승리할 수 있을까? 구글 이후에 떠오를 새로운 세력은 누가 될 것인가? 앞으로 인터넷 세계는 어떻게 변해갈까? 발간 즉시, 구글과 실리콘밸리를 뒤흔든 충격적 예언의 내용이 궁금하다면 이 책을 펼쳐보자.','2019.12.16','12','12.jpg',1,'조지 길더','CHAPTER 01 - 이 책을 해킹하려들지 마라
CHAPTER 02 - 구글의 세상 체계
CHAPTER 03 - 구글의 뿌리와 종교
CHAPTER 04 - 자유 진영의 종말
CHAPTER 05 - 크립토코즘의 10가지 원칙
CHAPTER 06 - 구글 데이터센터
CHAPTER 07 - 빌 댈리 교수의 병렬 패러다임
CHAPTER 08 - 마르코프와 미다스
CHAPTER 09 - 라이프 3.0



');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K3','대한민국 부동산 사용설명서','에프엔미디어',19500,17550,0,'판매중','신상','베스트상품','‘빠숑’이라는 필명 하나로 더 이상 설명이 필요 없는 김학렬 더리서치그룹 부동산조사연구소장이 지난 20년간 부동산 시장에서 갈고닦은 노하우를 집약한 책. 활황기든 조정기든 어떤 시장과 조건에서도 흔들리지 않고 합리적인 의사결정을 할 수 있도록 독자의 부동산 안목을 높이는 게 이 책의 목표다.

기존의 부동산 관련 책들이 대부분 어디가 오를지, 어떻게 사야 할지 등을 다룬 ‘각론’이라면 《대한민국 부동산 사용설명서》는 보다 근본적이고 전방위적으로 부동산 안목과 투자 실력을 키워 줄 총론이자 기본서다. 저자는 시장, 수요, 가격, 상품, 입지, 정책의 6개 키워드로 ‘대한민국 부동산’을 ‘부알못’도 이해할 수 있도록 쉽게 설명한다.

먼저 우리나라 부동산 ‘시장’만의 특징을 정리한 뒤 부동산에 가장 큰 영향을 주는 ‘수요’에 대한 정의를 다시 내린다. 그래야 부동산 ‘가격’과 ‘상품’에 대한 바른 기준을 세우고 핵심을 짚어 낼 수 있기 때문이다. 이어 부동산의 기본 중 기본인 ‘입지’를 분석하는 노하우를 제시하고, 정부의 부동산 시장 전략인 ‘정책’을 어떻게 판단해야 하는지 알려준다.

김학렬 소장은 “《대한민국 부동산 사용설명서》에는 실거주자인 소비자, 주택 공급자인 기업체, 그리고 정책 입안자까지 이해해야 하는 대한민국 부동산에 대한 인사이트를 담고자 노력했다”며 “책 내용을 모두 소화한다면 각자 여건에 맞게 해석하고 응용할 수 있을 것”이라고 설명했다.','2020.01.01','13','13.jpg',1,'김학렬','제1장. 시장 _ 시장과 싸우지 마라
지금 가장 유리한 사람들은?
분양가 상한제, 논리적으로야 완벽하다
각종 위기에도 끄떡없는 ‘안전가옥’이 있다!
입주 물량 많다고? 역전세를 활용하라
내 집이 필요한가? 생각부터 바꿔라
전문가 믿지 마라
부동산 시장에 ‘대세’는 없다

');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K4','맥스웰 몰츠 성공의 법칙','비즈니스북스',17000,15300,0,'판매중','신상','베스트상품','1960년 출간된 이후 3,000만 부 이상 팔린 최고의 자기계발서 《맥스웰 몰츠 성공의 법칙》이 출간 55주년을 맞아 새롭게 선보인다. 반세기가 넘게 독자들의 꾸준한 사랑을 받아온 이 책은 데일 카네기의《인간관계론》과 함께 영어권에서 가장 많이 팔린 성공학의 교과서로 알려져 있다. 또한 이 책 이후에 쏟아져 나온 거의 모든 자기계발서의 원전으로 평가받는다.

이번 개정판은 이 책의 가치와 의미를 독자들에게 새롭게 알리기 위해서 편집과 디자인, 내용 등을 충실히 보강하여 불후의 고전다운 면모를 갖췄으며, 누구라도 쉽고 생생하게 읽을 수 있도록 내용과 편집을 개정했다.

《맥스웰 몰츠 성공의 법칙》은 의학, 심리학 및 두뇌 생리학, 사이버네틱스 등의 학문적 성과가 십분 반영된 탄탄한 이론을 바탕으로, 실제로 수많은 독자들에 의해 검증된 실천법을 담고 있다. 동서고금에서 사회적 삶을 영위하는 인간에게 성공과 풍요, 그것을 이루기 위한 의식 변화와 자아 혁신은 늘 불변의 과제로 대두되었고, 그에 따라 자기계발서는 꾸준히 대중의 사랑을 받아왔다.

그러나 손가락으로 꼽을 수 있는 몇 권을 빼고는 반복되는 내용, 분명한 이론이나 학문적 바탕 없는 교훈, 현상과 경험의 나열에 그쳤다는 한계가 있었다. 이런 점에서 《맥스웰 몰츠 성공의 법칙》은 이후에 출간된 수많은 자기계발서의 한계를 원천적으로 극복한, 제대로 된 자기계발서의 원전으로 손색이 없다.
','2019.12.03','16','16.jpg',1,'맥스웰 몰츠 (지은이)','제1장 자아 이미지부터 바꿔라: 자신의 한계를 뛰어넘는 가장 강력한 무기
제2장 이것이 진정한 자아 혁명이다: 내 안에 있는 성공 메커니즘을 작동시키자
제3장 상상력을 이용하라: 성공의 본능을 일깨우는 원동력
제4장 잘못된 믿음을 버려라: 실패와 능력 부족이라는 최면에서 깨어나기

');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K4','5년 후 나에게','토네이도',16800,15120,0,'판매중','신상','베스트상품','2010년 미국에서 출간되어 영국, 유럽, 전 세계 다이어리북 시장을 석권한 《5년 후 나에게 : Q5000 a day》가 2020년을 맞아 새 출발을 응원하는 특별 한정판을 선보인다. 내가 몰랐던 나를 발견하고 우리 삶의 소중한 변화와 성장을 효율적으로 기록할 수 있도록 구성된 《5년 후 나에게 : Q6000 a day》는 심플하고 고급스러운 디자인에 매혹적인 로즈골드를 입혀 새롭게 태어났다. 2020 로즈골드 리미티드 에디션은 “#난 항상 널 응원해”라는 메시지를 담아 바쁜 일상에 지친 나는 물론, 소중한 친구, 연인, 가족, 지인에게 선물하기 좋은 책이다.

이 책에는 하루에 하나씩, 1년 동안 그 답을 기록할 수 있는 지혜롭고 영감에 찬 365개의 질문이 담겨 있다. 이 365개의 질문이 곧 전 세계 수백만 독자들이 이 책을 선택한 이유다. ‘오늘의 나를 예술 사조로 표현한다면?’과 같은 철학적 질문부터 ‘머리를 감지 않고 버틴 최장 기록은?’과 같은 유쾌한 감정을 불러오는 질문까지, 우리 삶에 가치와 유익, 웃음과 긍정을 불어넣는 물음에 차곡차곡 답을 기록해나가다 보면, 무심코 흘려보낼 뻔했던 우리 삶의 가장 빛나는 순간을 마음에 새겨 넣는 놀라운 기회를 만나게 된다.

막상 펼치고 나면 뭘 써야 할지 몰라 고민하다가 닫고 마는 평범한 다이어리가 아니다. 지금부터 5년 동안 우리 삶에 보석처럼 박혀 있는 힌트와 단서, 상상력과 창의력을 제공하는 365개의 질문에 대해 하루에 하나씩, 직접 답할 수 있는 공간으로 안내한다. 즉 같은 질문에 대해 5년간 5개의 답을 기록할 수 있다. 이를 통해 해가 바뀌면서 나의 답이 어떻게 달라졌는지 한눈에 확인할 수 있다.

5년 동안 어떤 삶을 살아왔는지, 어떤 성장과 변화를 거쳐왔는지, 어떤 순간에 가장 빛나고 행복했는지를 간편하게 간직할 수 있게 해준다. 1년 중 어느 날에 시작해도 괜찮다. 그저 하루에 하나씩 주어진 지혜로운 질문에 답함으로써, 이 책은 5년 후 우리 삶에 가장 아름답고 소중한 선물이 되어준다.','2019.11.01','17','17.jpg',1,'포터 스타일 (지은이)','목차');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K3','밀레니얼 이코노미','인플루엔셜',17000,15300,0,'판매중','신상','베스트상품','전 세계적으로 1981~1996년에 탄생한 밀레니얼 세대가 소비, 생산, 투자, 고용의 주축이 되는 ‘밀레니얼 이코노미’의 시대가 도래했다. 특히 2020년을 기점으로 밀레니얼 세대는 경제의 주도권을 쥐고 이전 세대와는 다른 소비, 투자, 일자리, 산업의 변화를 이끌게 될 것이다. 우리 경제도 그러한 흐름을 거스를 수 없다. 그러나 유독 한국에서 이 세대의 시장 진입은 물론, 소비, 투자, 고용 부문에서의 활약이 녹록치 않아 보인다. 그 원인은 무엇일까.

국내 대표적인 두 이코노미스트인 홍춘욱 박사와 박종훈 기자이 신간 《밀레니얼 이코노미》를 통해 ‘세대교체 지연’의 구조적 원인을 찾는 동시에 IT, 제조, 유통, 금융, 교육 등 전 산업 분야의 새로운 흐름을 예측하며, 밀레니얼 세대가 어떤 소비와 투자 취향을 키워가고 있는지 대담을 펼쳤다.

국내외 다양한 데이터들을 근거로 한 앞으로의 부동산 예측, 공유경제와 스타트업 열풍, 달러에서 비트코인까지의 대안 투자처, 정년연장 논의와 국민연금 고갈 이슈에 이르는 다채로운 주제들에 대한 설전도 담았다. 이 책은 경제 전 분야에서 활약하게 낼 밀레니얼 세대와 이들의 부모세대인 50~60대 독자들에게도 든든한 경제 나침반이 되어 줄 것이다.','2019.10.28','14','14.jpg',1,'홍춘욱,박종훈 (지은이)','Chapter 1. 한국의 밀레니얼은 왜 이토록 힘들어졌을까
역사상 최초로 부모보다 가난한 세대의 탄생?
기술이 노동생산성을 압도하는 시대로의 전환
[issue talk 1] 두 이코노미스트가 경험한 밀레니얼 후배들
문제는 철 지난 경제구조다



');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K3','뇌 욕망의 비밀을 풀다','비즈니스 북',18000,16200,0,'판매중','신상','베스트상품','신경마케팅 분야의 최고 권위자이자 세계적인 기업들의 마케팅 및 브랜딩 자문을 맡고 있는 한스-게오르크 호이젤 박사의 저서이다. 저자가 주장하는 핵심 개념은 소비자의 감정과 동기를 이해하는 세계 최고의 신경마케팅 모델인 ‘림빅® 맵’(Limbic® Map)이다. 15년간의 뇌 연구와 시장조사를 통해 저자가 개발한 동기모형 도구인 림빅® 맵은 ‘무의식이 인간의 경제활동을 어떻게 조종할까?’라는 의문에 대한 명쾌한 해답을 제시한다.

이 책은 인간의 뇌 속을 들여다보는 새로운 방법을 이용해 매출을 획기적으로 개선할 수 있는 효과적인 방법을 제시한다. 과학적으로 증명된 세 가지 감정 시스템, 즉 ‘빅 3’(Big 3)가 그 열쇠다. 빅 3에는 균형 시스템(안전에 대한 욕구), 자극 시스템(새로운 것, 체험에 대한 욕구), 지배 시스템(권력에 대한 욕구)이 있으며, 이 세 가지 욕구가 다양한 환경과 상황에 따라 서로 충돌, 타협, 결합하며 경제활동을 통제하거나 자극한다.

빅 3라는 감정·동기의 지도를 따라가다 보면, 복잡하게 얽힌 인간 심리가 어떻게 이성을 속이고 갈등하며 구매까지 이르게 하는지 그 과정을 해독할 수 있다. 그리고 고객과 소비자들이 무슨 이유로 어떤 제품을 구매하는지에 대한 귀중한 단서를 얻을 수 있다.','날짜','15','15.jpg',1,'한스-게오르크 호이젤 (지은이)','Part 1 고객이 제품을 구매하는 이유
Chapter 01 뇌 연구, 은밀하게 숨어 있는 유혹자 찾기
Chapter 02 고객의 뇌 속에 숨겨져 있는 진짜 구매동기
Chapter 03 상품과 시장의 무의식적인 논리
Chapter 04 머릿속에서 구매결정이 진행되는 과정
Part 2 구매결정을 하는 고객의 마음 흔들기

');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K4','린치핀','라이스메이커',18000,16200,0,'판매중','신상','베스트상품','더 이상 안정적인 직업이 존재하지 않는 시대. 평균적인 삶에 만족하는 사람들이 넘쳐나는 시대. 하지만 우리는 누구도 평범해지기 위해 태어나지 않는다. 지금 우리에게 필요한 것은 무엇인가. 세계적인 베스트셀러 작가 세스 고딘은 모든 인간에게 감춰진 예술가적 기질에 대해 통찰력 넘치는 글로 독자들을 이끈다.

거대한 기계 속 톱니바퀴처럼 쉽게 대체되는 인재로 살아갈 것인지, 작지만 강한 예술가적 인재로 거듭날 것인지는 선택의 문제다. 노동과 임금을 맞바꾸는 데 머물지 않고, 자신의 넘치는 예술적 재능을 세상에 기부하며, 세상에 공헌할 수 있는, 세상 모든 크리에이터들이 탐내는, 새로운 시대의 새로운 권력을 가진 린치핀으로 거듭나기 위한 조언들을 담은 책이다.','2019.12.28','18','18.jpg',1,'세스 고딘 (지은이)','
들어가는 글
공장의 시대 이후, 새로운 집단이 탄생하다
나는 어떤 선택을 했는가
우리는 세뇌당하고 말았다
새로운 리더, 린치핀 선언
언제까지 톱니바퀴로 살아갈 것인가
왜 남보다 튀는 것을 두려워하는가
선물의 힘
지도 없이 세상을 여행하기
현재에 만족할 것인가, 차이를 만들 것인가


');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K4','비커밍 다이어리북','웅진지식하우스',14500,13050,0,'판매중','신상','베스트상품','2018년 11월 전 세계 동시 출간되어 미국뿐 아니라 전 세계적으로 1000만 부가 판매되는 놀라운 기록을 달성한 미셸 오바마의 『비커밍』은 “역사상 가장 성공적인 자서전”이라는 평가를 받고 있다. 책 출간 이후 미셸 열풍이라 할 만큼 세계적으로 뜨거운 호응이 따랐고, 미셸은 명실상부 ‘시대의 아이콘’으로 부상했다.

미셸은 미국 최초의 흑인 퍼스트레이디로 불리지만, 책은 전혀 정치적이지 않다. 자기 자신을 제대로 알고, 받아들이고, 자신의 목소리를 내기까지의 부단한 여정이 솔직하고도 단단하게 그려진다. 그녀의 이야기는 특히 젊은 독자들에게 울림을 남겼고, #becoming은 변화와 성장의 키워드로 자리 잡았다.

『비커밍 다이어리북』은 자기만의 이야기를 받아들이고 남들과 나누는 과정 자체를 ‘비커밍’, 즉 성장의 핵심으로 보았던 미셸의 메시지에서 출발하는 다이어리북이다. 자기도 몰랐던 자신을 발견하고 기록할 수 있도록 부드럽게 때론 강렬하게 독자를 글쓰기로 이끄는 155개의 질문들과 미셸의 메시지가 담겨 있다.
','2019.12.24','19','19.jpg',1,'미셸 오바마 (지은이)','목차');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K4','억만장자 시크릿','토네이도',17000,15300,0,'판매중','신상','베스트상품','왜 매일 허우적거리면서 사는데도 인생에서 원하는 지점에 도달하지 못하는지, 왜 지금보다 더 높이 도약하고 싶지만 늘 똑같은 상태에 머무르고 마는지 자문해본 적 있는가? 그렇다면 이 책이 답이 돼줄 것이다.

《억만장자 시크릿》은 저자가 미국, 유럽을 비롯해 한국, 태국, 중국 등 전 세계를 누비며 5년간 직접 취재한 끝에 알아낸 최고 자산가들의 20가지 성공전략을 담은 책이다. 카카오 김범수 의장을 비롯해 압도적 성공을 거둔 21인의 자수성가 억만장자를 만나 이들의 내밀한 생각과 솔직한 감정에 접근한다.

또한 어떤 언론이나 책에서도 공개된 적 없는 이 시대 최고 슈퍼리치들의 사업과 세상을 바라보는 시각을 날카롭게 통찰한다. 이를 통해 삶이 목적을 잃고 정체됐다고 느끼는 사람들에게 인생의 터닝포인트를 만드는 부자의 사고방식을 심어주고 성공의 잠재력을 일깨워준다.','2019.12.02','20','20.jpg',1,'라파엘 배지아그 (지은이)','CHAPTER 1. 세상에서 가장 위대한 사람들의 시작

첫 번째 비결: 억만장자의 시작은 그렇지 않았다
두 번째 비결: 날고 싶으면 먼저 둥지를 떠나라
세 번째 비결: 꿀 수 있는 가장 큰 꿈을 꿔라
네 번째 비결: 나의 시작을 일단 믿어라
다섯 번째 비결: 억만장자는 다른 곳을 보았다
');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K1','증언들','황금가지',15000,13500,0,'판매중','신작','베스트셀러','2019 부커상 수상작이자, 성과 권력을 소재로 한 디스토피아 소설의 대표작 『시녀 이야기』로부터 15년 후를 그린 신작으로, 각기 다른 환경과 직업을 가진 세 여성의 증언을 바탕으로 전작에서 풀어내지 못한 이야기와 함께 길리어드 정권의 몰락 과정을 다루고 있다.

『시녀 이야기』가 시녀 오브프레드를 중심으로 그 주변 이야기를 풀었던 데 반해 『증언들』은 세 명의 각기 다른 여성의 녹취록과 수기를 통해 길리어드 전반에 대한 이야기를 풀어낸다. 특히 전작에서 악명높은 교육자이자 철의 여인 리디아 아주머니가 증언자 중 하나로서 수기를 통해 길리어드의 부패한 권력자들의 민낯을 드러내는가 하면, 아주머니 계급이 만들어지게 된 과정부터 그들간의 대립과 모략 등 치부를 상세히 기술한다.

또 다른 증언자는 길리어드의 마수에 삶이 통째로 흔들린 캐나다 소녀 데이지로서, 이 녹취록을 통해서는 길리어드 국외의 상황이 상세히 묘사된다. 길리어드 정권에 대한 반대 목소리를 높이는 학생들의 시위대, 그러나 국민들의 반대 정서에도 길리어드의 강력한 군사력 때문에 제 목소리를 못 내는 캐나다 정부, 비밀리에 캐나다에 있는 반(反)길리어드 단체를 색출해 내거나 암살 및 테러를 시도하고, 다른 한편으로는 진주 소녀 라는 포교단을 파견하여 국외 민간인들을 포섭하는 길리어드의 모습 등이 묘사된다.','2020.01.03','1','1.jpg',1,'마거릿 애트우드','
I 동상 12
II 귀한 꽃 12
III 찬송 12
IV 클로즈 하운드 12
V 밴 12
VI 여섯은 죽음 12
VII 스타디움 12
VIII 카나본 12
IX 땡크 탱크 12
X 봄의 초록 12
XI 베옷 12
XII 카피츠 12
XIII 전지가위 12
XIV 아르두아 홀 12
XV 여우와 고양이 12
XVI 진주 소녀 12
XVII 완벽한 치아 12
XVIII 리딩 룸 12
XIX 서재 12







');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K1','최단경로','문학동네',12000,10800,0,'판매중','신작','베스트셀러','은희경의 <새의 선물>, 천명관의 <고래>, 김언수의 <캐비닛>…… 한국문학에 또렷한 이정표를 새긴 걸출한 작품들을 산출해낸 문학동네소설상의 제25회 수상작 <최단경로>가 출간되었다. 황여정의 <알제리의 유령들> 이후 이 년 만의 수상작이다. 개성 있고 신선한 상상력과 날카로운 시대정신을 갖춘 수상작들을 선보이며 독자를 실망시킨 적 없는 문학동네소설상의 역사는 이번 수상작에서도 변함없이 계속된다.','2019.12.19','2','2.jpg',1,'강희영','트랙 …… 13
얼굴 …… 28
공사 …… 47
좌표 …… 63
첼로 …… 83
동선 …… 97
루프 …… 131

심사평 …… 167
수상작가 인터뷰 | 강화길(소설가) …… 176
수상 소감 …… 186');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K1','나,티투바 세일럼의 검은 마녀','은행나무',13000,11700,0,'판매중','신상','베스트상품','2018 대안 노벨문학상 ‘뉴 아카데미 문학상’ 수상 작가, 마리즈 콩데의 대표작. 세일럼의 마녀 재판에서 살아남은 흑인 여성 노예의 대안 역사 서사를 담았다. 작가는 ‘나, 티투바’라는 선언하에 티투바의 탄생 이전부터 죽음 이후까지 전사(全史)를 자서전적으로 다루면서 제3세계 유색인 여성 중심의 상상적 텍스트를 내세운다.

콩데는 티투바라는 바베이도스 출신 흑인 여성이 미국 매사추세츠주의 노예로 끌려왔다가 1692년 세일럼 마을의 다른 ‘백인 마녀들’과 함께 재판을 받은 기록을 우연히 접하게 되는데, 이후 이 여성의 행적에 대해서는 아무런 정보도 찾지 못한다.

억울하게 마녀로 몰렸던 다른 사람들이 복권된 반면, 티투바가 아마도 흑인 여성 노예였기에 역사의 주변부로 밀려났으리라는 점에 인간적 연민과 일체감을 느낀 작가는 “티투바에 대한 특별한 이야기를 해야겠다는 생각이 들었다. 이 여성은 역사에 의해 부당한 대우를 받았기 때문이다. 피부와 성별 때문에 거부당한 인간적 권위를 그에게 꼭 회복해주어야겠다는 필요성을 느낀 것”이라고 집필 동기를 밝혔다.','2019.12.10','3','3.jpg',1,'마리즈 콩데','
1부 - 11
2부 - 143
에필로그 - 274
역사적 사실에 관한 기록 - 281');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K1','진주','문학동네',15000,13500,0,'판매중','신상','베스트상품','2017년 문학동네신인상으로 등단한 시인이자 EBS [지식채널e]의 작가, 잘 알려지지 않은 좋은 책을 소개하는 팟캐스트 네시이십분 라디오를 8년째 만들고 있는 제작자, 글쓰기와 라디오 제작을 골자로 하는 창작 워크숍 기획자 및 운영자. 작가 장혜령을 소개할 때 필요한 말들이다. "특정 장르에 속하기보다 새로운 공간을 개척하는 글을 쓰고자 한다"라는 작가 본인의 지향점과 맞닿아 있는 행보.

그에 새로운 한 걸음을 더할 이번 책은 이름 없는 민주화운동가였던 아버지의 흔적을 찾아가는 딸의 이야기다. 보이지도 기록되지도, 기억되지도 않는 사람들과 그런 역사의 이야기. 작가의 자전적 이야기를 바탕으로 1970~90년대 학생운동과 노동운동에 관한 다종다양한 자료, 사진 기록물, 일기, 악보, 뉴스 보도 등이 낯선 방식으로 결합, 재구성, 직조되어 있는 책.

언뜻 르포르타주 혹은 에세이로 부를 법한 이 책을 그러나 소설 로 이름 붙인 데에는 소설가 한강 작가의 의견이 크게 작용했다. 대학 시절 선생과 제자로 만난 인연으로, 장혜령 작가는 이 원고를 한강 작가에게 먼저 보였던 것. "이 책은 에세이보다 소설로 이름 붙이는 게 더 좋을 것 같아요. 에세이를 초과하는 것들이 들어 있어서요. 그래서 전화했어요"(작가의 말에서)라는 선생의 조언을 작가는 따르기로 하였다.

자신이 걷는 길을 앞서 걸은 선생이었다. 추천의 글을 쓴 김혜순 시인 역시 "딸의 글은 몽타주와 신택스(syntax), 삽입텍스트, 서사의 탈영토화로 혁명한다. (…) 다장르, 다매체, 혼합 언어 텍스트다"라는 문장으로 이 소설의 특별한 형식에 지지를 표했다. 이렇듯 이상하고 아름다운 에너지로 우리에게 도착한 장혜령 첫 소설, 제목은 진주 다.','날짜','4','4.jpg',1,'장혜령','1장 딸은 공집합을 이해할 수 없었습니다 2장 우리가 아닌 삶 3장 혼자 행진하는 사람 4장 비밀은 당신이 영혼을 가진 존재라는 증거입니다 5장 당신 뒤에 딸도 받아쓰기를 했습니다 6장 지상의 꿈은 혼들의 거처입니다 7장 부서지는 나는, 있습니다 8장 기다림이라는 신앙 9장 파도는 묻습니다
');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K1','카메라를 보세요','문학동네',15800,14220,0,'판매중','신상','베스트상품','우리 시대를 대표하는 휴머니스트이자 유머리스트, 하루키가 존경하고 박찬욱이 사랑한 작가 커트 보니것의 미발표 초기 단편소설집으로, 보니것의 미발표 초기 단편소설 중에서도 보니것의 시그니처인 SF 작품들 위주로 선별해 묶었다. 비현실적 배경과 설정 속에서 보니것식 현실비판은 더욱 빛을 발하고, 특유의 간결하면서도 직접적인 문체와 재기발랄하면서도 오 헨리를 연상시키는 반전 결말이 돋보인다.

「비밀돌이」는 외로운 사람에게 대화와 조언을 제공하는 마법 같은 기계에 대한 이야기다. 「작고 착한 사람들」은 페이퍼나이프 모양 우주선을 타고 지구를 방문한 소인국 외계인 한 무리가 겪은 일들을 다룬다. 「에드 루비 키 클럽」에는 사람의 몸속에 주입하면 반드시 진실만을 말하게 되는 “진실 혈청”이 등장한다. 「거울의 방」에서는 그 당시 가장 트렌디한 정신과학의 한 분야였던 ‘최면 치료’를 마법적인 분위기로 풀어냈다.

보니것은 이런 말을 했다. “과학은 실제로 작동하는 마법이다.” 마법적인 분위기가 감돈다. 등장인물들은 기존에 없던 첨단 과학기술을 통해 새로운 세계를 만나 그동안 보지 못하던 것을 보고, 듣지 못하던 것을 듣고, 느끼지 못하던 것을 느끼고, 말하지 못하던 것을 말하게 된다. 그 과정에는 분명 과학이 작동하지만 등장인물 내면의 흐름과 결말은 마법적이고 극적이며 휴머니즘과 유머가 풍긴다.','2019.12.26','5','5.jpg',1,'커트 보닛것','비밀돌이 021
푸바 043
지붕에서 소리쳐요 065
에드 루비 키 클럽 087
셀마를 위한 노래 163
거울의 방 189
작고 착한 사람들 215
안녕, 레드 233
작은 물방울 257
개미 화석 285
신문 배달 소년의 명예 313
카메라를 보세요 329
우주의 왕과 여왕 341
설명을 잘하는 사람 369');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K2','교양 있는 사람','현대문학',12000,10800,0,'판매중','신상','베스트상품','2020년 제65회 현대문학상 수상시집. 유희경 시인이 제65회 현대문학상 수상자로 선정되었다. 문정희 시인은 "행과 연을 구분하지 않고 떠난 산책 사이로 흐르는 긴장과 이완 혹은 다음 장면을 기다리게 만드는 구성의 솜씨는 유희경만의 특별함이라고 하겠다."고 심사평을 밝혔다.

수상후보작으로는 강성은, 「밤과 낮의 고요한 물소리」 외 6편 / 김기택, 「첫 흰 머리카락」 외 6편 / 박소란, 「정우와 나」 외 6편 / 백은선, 「반복과 나열」 외 6편 / 서윤후, 「모모제인某某諸人」 외 6편 / 안희연, 「열과裂果」 외 6편 / 양안다, 「나의 작은 폐쇄 병동」 외 6편 / 이장욱, 「안나 나나코」 외 6편 / 최백규, 「천국을 잃다」 외 6편이 선정되었다.','2019.12.10','7','7.jpg',1,'유희경,강성은,김기택,박소란,백은선,서윤후,안희연,양안다,이장욱,최백규','수상작

유희경

교양 있는 사람 15
산책 16
오래된 기억 17
신파 18
감각 20
距離演習, 나쁜 애 23
位置演習, 이안리플렉스 26

수상시인 자선작

유희경

세계에 대해, 조금 더 적은 측면으로 29
충고 33
조상 34');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K2','여기까지 인용하세요','문학과지성사',9000,8100,0,'판매중','신상','베스트상품','문학과지성 시인선 534권. 2009년 『현대문학』으로 등단한 시인 김승일의 두번째 시집으로 성별.연령.국적은 물론 거주 행성까지 다양한 화자들이 “있을지 없을지 모를” 시공간에서 “진지한 이야기”(하혜희)를 나눈다. 시인은 입력된 규칙대로 행동하지만 그 규칙의 목적이 무엇인지 규칙을 입력한 사람조차 완벽하게 이해할 수 없는 기계를 시의 화자로 등장시켜 기계들의 규칙이 어떤 알레고리를 만들어내는지 지켜본다.','2019.11.22','8','8.jpg',1,'김승일','유
주인
그럼 안녕
액체와 희망
컴플리케이티드
돌 포비아
레파도미솔
눈물의 방
가장 좋은 목표
의도하지 않았다
지옥
나는 계속 이렇게 할 수 있다
어시스턴트
홀이 모든 것이 숫자로 보인다고 했다
신뢰
행복한 죽음
유리해변');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K2','한 줄도 너를 잊지 못했다','아침달',10000,9000,0,'판매중','신상','베스트상품','아침달 시집 13권. 창작동인 뿔의 시집. 창작동인 뿔은 최지인·양안다·최백규 3인의 젊은 시인이 모여 만든 창작동인이다. 창작동인 뿔이 지향하는 가치는 "미래"다. 저마다 개성이 분명한 젊은 시인들이 이야기하는 미래의 모습은 사랑, 꿈, 노동, 그리고 죽음 등의 주제를 두루 거치며 다양한 빛깔로 펼쳐진다.

총 41편의 시가 수록된 이번 시집은 말미를 제외하면 개개의 시를 쓴 시인의 이름을 일일이 표기하지 않았다. 이는 한 명의 시인이 아닌 하나의 그룹이 쓴 시로 읽어주기를 바라는 동인들의 마음이기도 하다. 동인이라는 울타리 안에서 서로 영향력을 주고받는 가운데 태어난 이 시들이 지금 미래의 독자들을 향해 타전되려 하고 있다.','2019.11.28','9','9.jpg',1,'창작동인 뿔','
1부- 이 세계의 끝은 어디일까
we all die alone
여름과 숲과 아메바
꽃은 봄을 웅성거리지 않았다
섬
죄책감
그루
여름 편지
과거가 우리를 잊지 않았다면
고시텔
꽃그늘에 복사뼈를 묻고서
기우
1995년 여름
해적 방송

2부- 떠난 사람을 눕혀주는 일처럼
낙원
공백기
부작용');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K2','저 여리고 부드러운 것이','지식프레임',15000,13500,0,'판매중','신상','베스트상품','나태주 시인이 엄선한 80편의 시를 수록했다. 어른들과 아이들이 함께 읽을 만한 시를 선별했지만 모두 동시는 아니다. 간결하고 쉽게 이해할 수 있는 시를 위주로 담았다. 1부 행복-시를 통해 세상을 밝히다, 2부 가족-세상에서 가장 힘이 센 내 편, 3부 성장-기쁨, 슬픔, 그리고 친구, 4부 관찰-깊은 시선으로 세상을 배우다 로 각 주제에 맞게 시를 구성했다.

시마다 달린 나태주 시인의 감상 글은 깊은 울림을 준다. 시인은 시가 지금 우리에게 어떤 의미를 던져주는지, 어떤 시선으로 시를 읽어야 하는지, 왜 아이들과 함께 시를 읽어야 하는지, 아이들에게는 어떤 이야기를 들려줘야 하는지 등에 대해 때로는 따뜻하게, 때로는 타이르듯이 일러준다.','2019.12.23','10','10.jpg',1,'나태주 (지은이),김해선 (그림)','1부 행복 _ 시를 통해 세상을 밝히다
꽃들아 안녕 - 나태주
여름의 일 - 나태주
느티나무의 마음 - 이기철
반딧불 ? 윤동주
나는 염소 간 데를 모르네 - 신현정
여름밤 - 이준관
아무리 숨었어도 - 한혜영
풋사과 ? 고영민
웃는 기와 - 이봉직
행복 ? 허영자
응? ? 나태주
미끄럼틀 ? 전봉건





');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O1','James and the Giant Peach (Paperback)','Puffin',9500,4660,0,'판매중',null,null,'바닷가 절벽 위, 외딴 집에 홀로 살고 있는 꼬마 제임스. 동물원을 탈출한 코뿔소의 발에 깔려 부모님을 여의고 외톨이가 된 제임스는 심술쟁이 고모들의 집으로 들어와 힘겨운 나날을 보내게 된다. 그러던 어느날, 갑자기 나타난 한 할아버지의 마법으로 제임스의 삶은 완전히 바뀌게 된다.

When a mysterious old man gives James some magical, tiny green things, he certainly never imagines that they will grow into an enormous peach.
','2007.08.16','26','26.jpg',1,'로알드 달 (지은이)','목차');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O1','Harry Potter and the Philosophers Stone - Gryffindor Edition','Bloomsbury Publishing PLC',12000,24000,0,'판매중',null,null,'Exclusive Gryffindor House Edition, created to celebrate the 20th anniversary of the first publication of Harry Potter and the Philosophers Stone - a highly collectable must-have for all Harry Potter fans!

Gryffindor, Slytherin, Hufflepuff, Ravenclaw . Twenty years ago these magical words and many more flowed from a young writers pen, an orphan called Harry Potter was freed from the cupboard under the stairs - and a global phenomenon started. Harry Potter and the Philosophers Stone has been read and loved by every new generation since. To mark the 20th anniversary of first publication, Bloomsbury has published four House Editions of J.K. Rowlings modern classic. These stunning editions each feature the individual house crest on the jacket and line illustrations exclusive to that house, by Kate Greenaway Medal winner Levi Pinfold. Exciting new extra content includes fact files and profiles of favourite characters, and each book has sprayed edges in the house colours. Available for a limited period only, these highly collectable editions are a must-have for all Harry Potter fans.','2017.06.01','27','27.jpg',1,'J.K. 롤링 (지은이)','목차');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O1','The Kite Runner (Paperback, International Edition)','PENGUIN PUTNAM INC. U.S.A.',11700,5850,0,'판매중',null,null,'This is the breathtaking story of fathers and sons, friendship and redemption, and most horrifyingly, the casualties of fate.

More information to be announced soon on this forthcoming title from Penguin USA','2013.01.01','28','28.jpg',1,'할레드 호세이니 (지은이)','목차');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O1','The Art of Loving (Paperback)','HarperPerennial',17900,8950,0,'판매중',null,null,'정신분석학적 입장에서 사랑의 본질을 분석하고 사랑에 대한 기술을 논의한 책. 인류의 영원한 화두인 사랑에 대한 탁월한 통찰을 보여주는 저작으로, 1956년 처음 발표되어 고전으로 자리잡았다. 출간 50주년을 맞아 새롭게 출간된 기념판에는 프롬의 마지막 조수를 지낸 라이너 풍크 박사의 후기가 실려 있다.

사회철학자이자 정신분석학자인 에리히 프롬은 사랑을 신이 인간에게 부여한 자연적 현상으로 보지 않고, 기술적 문제라는 측면에서 접근한다. 사랑은 빠지는 것이 아니라 행하는 것, 누군가를 사랑한다는 것은 단순히 강렬한 감정만이 아니라, 결의이고 판단이며 약속이라는 것이다.

<사랑의 기술>에는 에리히 프롬이 <자유로부터의 도피>, <자립적 인간>, <건전한 사회> 등의 이전 저작들에서 밝힌 사상, 그리고 그것을 넘어선 또 다른 사상이 제시된다. 그리고 이것들은 사랑의 기술이라는 하나의 주제에 집중함으로써 새로운 의미를 생성한다.


The psychoanalyst explores the theory, meaning, and practice of love, as well as its significance in contemporary Western society and its influence on the shape and course of an individuals life, in a special fiftieth anniversary edition. Readers Guide available. Reprint. 25,000 first printing.
','2019.08.06','29','29.jpg',1,'에리히 프롬 (지은이)','목차');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O1','To Kill a Mockingbird (Paperback) ','Harper Perennial Modern Classics',17900,8950,0,'판매중',null,null,'1961년 퓰리처 상 수상작. 1930년대 미국 남부 앨라배마 주의 조그만 마을인 메이컴을 배경으로, 진 루이스 핀치(스카웃)라는 여성이 어린시절을 회상하는 방식으로 구성되어 있다. 천진한 어린아이의 눈으로 바라본 시골 마을의 풍경, 주변 인물들에 대한 정감어린 묘사, 유년기의 아스라한 기억들이, 따뜻하고 정밀하게 그려진다.

변호사인 아버지와 네 살 위의 오빠 젬과 함께 살고 있는 말괄량이 소녀 스카웃은 어른들의 세계에 대해 조금씩 이해를 넓혀 간다. 특히 억울하게 강간범으로 몰린 흑인 톰 로빈슨을 아버지 핀치 변호사가 변호하게 되면서, 한뼘 더 성숙하고 사려깊은 소녀로 성장하게 된다.

이 소설을 얘기할 때 대개 인종차별, 흑백갈등 쪽에 초점이 맞춰져왔지만, 이 소설은 그보다 더 보편적인 주제-차이와 관용의 문제에 대해 이야기하는 책이다. 하퍼 리의 유일한 단행본이며, 1962년 그레고리 팩 주연으로 영화화되어 좋은 평가를 받기도 했다.

The explosion of racial hate and violence in a small Alabama town is viewed by a young girl whose father defends a black man accused of rape.','2005.07.05','30','30.jpg',1,'Harper Perennial Modern Classics','목차');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O2','Please Look After Mom (Mass Market Paperback)','Random House',9500,7600,0,'판매중',null,null,'Die beeindruckende und tief bewegende Geschichte einer Familie auf der Suche nach ihrer Mutter, die eines Nachmittag mitten in den Menschenmassen der U-Bahn von Seoul spurlos verschwindet.

WINNER OF THE MAN ASIAN LITERARY PRIZE When sixty-nine-year-old So-nyo is separated from her husband among the crowds of the Seoul subway station, her family begins a desperate search to find her. Yet as long-held secrets and private sorrows begin to reveal themselves, they are forced to wonder: how well did they actually know the woman they called Mom? Told through the piercing voices and urgent perspectives of a daughter, son, husband, and mother, Please Look After Mom is at once an authentic picture of contemporary life in Korea and a universal story of family love. From the Trade Paperback edition.

','2012.01.03','31','31.jpg',1,'신경숙 (지은이)','목차');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O2','The Vegetarian (Hardcover, Deckle Edge) ','Hogarth Pr ',25200,20160,0,'판매중',null,null,'Before the nightmare, Yeong-hye and her husband lived an ordinary life. But when splintering, blood-soaked images start haunting her thoughts, Yeong-hye decides to purge her mind and renounce eating meat. In a country where societal mores are strictly obeyed, Yeong-hyes decision to embrace a more “plant-like” existence is a shocking act of subversion. And as her passive rebellion manifests in ever more extreme and frightening forms, scandal, abuse, and estrangement begin to send Yeong-hye spiraling deep into the spaces of her fantasy. In a complete metamorphosis of both mind and body, her now dangerous endeavor will take Yeong-hye?impossibly, ecstatically, tragically?far from her once-known self altogether.
?
A disturbing, yet beautifully composed narrative told in three parts, The Vegetarian is an allegorical novel about modern day South Korea, but also a story of obsession, choice, and our faltering attempts to understand others, from one imprisoned body to another.','2016.02.02','32','32.jpg',1,'한강 (지은이)','목차');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O2','Human Acts (Paperback)','Granta Books',26000,13000,0,'판매중',null,null,'From the internationally bestselling author of THE VEGETARIAN, a “rare and astonishing” (The Observer) portrait of political unrest and the universal struggle for justice

In the midst of a violent student uprising in South Korea, a young boy named Dong-ho is shockingly killed.
?
The story of this tragic episode?unfolds in a sequence of interconnected chapters as the victims and the bereaved encounter suppression, denial, and the echoing agony of the massacre. From Dong-ho’s best friend who meets his own fateful end; to an editor struggling against censorship; to a prisoner and a factory worker, each suffering from traumatic memories; and to Dong-hos own grief-stricken mother; and through their collective heartbreak and acts of hope is the tale of a brutalized people in search of a voice.
?
An award-winning, controversial bestseller, HUMAN ACTS is a timeless, pointillist portrait of an historic event with reverberations still being felt today, by turns tracing the harsh reality of oppression and the resounding, extraordinary poetry of humanity.','2016.01.07','33','33.jpg',1,'한강 (지은이)','목차');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O2','The Vegetarian : A Novel (Paperback)','Granta Books',13600,8200,0,'판매중',null,null,'A beautiful, unsettling novel about rebellion and taboo, violence and eroticism, and the twisting metamorphosis of a soul
?
Before the nightmares began, Yeong-hye and her husband lived an ordinary, controlled life. But the dreams?invasive images of blood and brutality?torture her, driving Yeong-hye to purge her mind and renounce eating meat altogether. It’s a small act of independence, but it interrupts her marriage and sets into motion an increasingly grotesque chain of events at home. As her husband, her brother-in-law and sister each fight to reassert their control, Yeong-hye obsessively defends the choice that’s become sacred to her. Soon their attempts turn desperate, subjecting first her mind, and then her body, to ever more intrusive and perverse violations, sending Yeong-hye spiraling into a dangerous, bizarre estrangement, not only from those closest to her, but also from herself.
?
Celebrated by critics around the world, The Vegetarian is a darkly allegorical, Kafka-esque tale of power, obsession, and one woman’s struggle to break free from the violence both without and within her.','2015.11.05','34','34.jpg',1,'한강 (지은이)','목차');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O2','Native Speaker (Paperback)','Riverhead Books',19100,14320,0,'판매중',null,null,'데뷔작인 이 작품으로 미국내 크고 작은 문학상을 휩쓸며 등장한 이창래는, 뉴요커지가 뽑은 40세 미만의 대표적인 미국 작가 20명 중 한 사람으로 꼽힌 바 있다. 미국 사회에 진정한 뿌리를 내리지 못한 채 주변적 존재로 살아가는 이민자들의 정체성 문제를 진지하게 다룬 작품.

Henry Park, a Korean-American private spy, is challenged by a new assignment to investigate a rising politician, but the secrets he uncovers threaten his cultural identity and his relationship with his wife. Reprint.','1996.03.01','35','35.jpg',1,'이창래 (지은이)','목차');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O3','The Accidental Billionaires: The Founding of Facebook: Money, Genius and Betrayal (Paperback)','Anchor Books',19100,15280,0,'판매중',null,null,'NATIONAL BESTSELLERNOW A MAJOR MOTION PICTURE, "THE SOCIAL NETWORK," starring Jesse Eisenberg, Andrew Garfield, and Rashida Jones; directed by David FincherExuberant and revealing, The Accidental Billionaires is a fast-paced, inside look at a story of fortune gained and innocence lost, and how a company that was created to bring people together ultimately tore two friends apart. In 2003, Eduardo Saverin and Mark Zuckerberg were Harvard undergrads and best friends looking for a way to stand out among the university’s elite and competitive student body. Then one lonely night, Zuckerberg hacked into the campus computer system to pull off a prank that crashed Harvard’s network. This stunt almost got him expelled, but it also inspired Zuckerberg to create Facebook, the social networking site that has since revolutionized how people around the world communicate. With Saverin’s funding their small start-up quickly went from their college dorm room to Silicon Valley. But different ideas about Facebook’s future tested Zuckerberg and Saverin’s relationship, which then spiraled into out-and-out warfare. Soon, the collegiate exuberance that marked their collaboration fell prey to the adult world of venture capitalists, lawyers, and big money.','2010.09.28','36','36.jpg',1,'Ben Mezrich (지은이)','목차');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O3','Apple Confidential 2.0: The Definitive History of the Worlds Most Colorful','No Starch Pr',35320,28960,0,'판매중',null,null,'
Apple Confidentia examines the tumultuous history of Americas best-known Silicon Valley start-upfrom its legendary founding almost 30 years ago, through a series of disastrous executive decisions, to its return to profitability, and including Apples recent move into the music business. Linzmayer digs into forgotten archives and interviews the key players to give readers the real story of Apple Computer, Inc. This updated and expanded edition includes tons of new photos, timelines, and charts, as well as coverage of new lawsuit battles, updates on former Apple executives, and new chapters on Steve Wozniak and Pixar.
','2004.01.11','37','37.jpg',1,'Owen W. Linzmayer (지은이)','목차');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O3','Googled: The End of the World as We Know It ','Penguin Group USA',19100,15280,0,'판매중',null,null,'The fullest account yet of the rise of one of the most profitable, most powerful, and oddest businesses the world has ever seen." -San Francisco Chronicle Just eleven years old, Google has profoundly transformed the way we live and work-weve all been Googled. Esteemed media writer Ken Auletta uses the story of Googles rise to explore the future of media at large. This book is based on the most extensive cooperation ever granted a journalist, including access to closed-door meetings and interviews with industry legends, including Google founders Larry Page and Sergey Brin, Marc Andreessen, and media guru "Coach" Bill Campbell. Aulettas unmatched analysis, vivid details, and rich anecdotes illuminate how the Google wave grew, how it threatens to drown media institutions, and where its taking us next.','2010.10.26','38','38.jpg',1,'Ken Auletta (지은이)','목차');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O3','Bananas: How the United Fruit Company Shaped the World (Paperback)','Canongate Books Ltd',22650,17660,0,'판매중',null,null,'In this compelling history of the United Fruit Company, Financial Times writer Peter Chapman weaves a dramatic tale of big business, deceit, and violence, exploring the origins of arguably one of the most controversial global corporations ever, and the ways in which their pioneering example set the precedent for the institutionalized greed of today’s multinational companies. The story has its source in United Fruit’s nineteenth-century beginnings in the jungles of Costa Rica. What follows is a damning examination of the company’s policies: from the marketing of the banana as the first fast food, to the company’s involvement in an invasion of Honduras, a massacre in Colombia, and a bloody coup in Guatemala. Along the way the company fostered covert links with U.S. power brokers such as Richard Nixon and CIA operative Howard Hunt, manipulated the press in new, and stoked the revolutionary ire of Che Guevara and Fidel Castro. From the exploited banana republics of Central America to the concrete jungle of New York City, Peter Chapman’s Bananas is a lively and insightful cultural history of the coveted yellow fruit, as well as a gripping narrative about the infamous rise and fall of the United Fruit Company.','2009.07.01','39','39.jpg',1,'Peter Chapman (지은이)','목차');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O3','The Big Rich: The Rise and Fall of the Greatest Texas','Penguin Group USA',25480,19870,0,'판매중',null,null,'Whats not to enjoy about a book full of monstrous egos, unimaginable sums of money, and the punishment of greed and shortsightedness?"

Phenomenal reviews and sales greeted the hardcover publication of The Big Rich, New York Times bestselling author Bryan Burroughs spellbinding chronicle of Texas oil. Weaving together the multigenerational sagas of the industrys four wealthiest families, Burrough brings to life the men known in their day as the Big Four: Roy Cullen, H. L. Hunt, Clint Murchison, and Sid Richardson, all swaggering Texas oil tycoons who owned sprawling ranches and mingled with presidents and Hollywood stars. Seamlessly charting their collective rise and fall, The Big Rich is a hugely entertaining account that only a writer with Burroughs abilities-and Texas upbringing-could have written.','2010.03.30','40','40.jpg',1,'Bryan Burrough (지은이)','목차');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O4','Dear Madam President: An Open Letter to the Women Who Will Run the World','Grand Central Pub',23220,8100,0,'판매중',null,null,'Dear Madam President is an empowering letter from Jennifer Palmieri to the first woman president that includes a forward-thinking framework of inspirational and practical advice for all women everywhere.','2018.03.27','41','41.jpg',1,'Jennifer Palmieri (지은이)','목차');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O4','Rescuing Retirement: A Plan to Guarantee Retirement Security for All Americans','Columbia University Press',35920,7700,0,'판매중',null,null,'책소개','2018.01.23','42','42.jpg',1,'Teresa Ghilarducci,Tony James (지은이)','Foreword, by Timothy Geithner
Acknowledgments
1. Societys Retirement Crisis
2. How We Got Here: America’s Broken Retirement System
3. Six Key Problems: The Consequences of a Broken Retirement System
4. Rescuing Retirement: A Four-Pronged Solution
5. Case Studies: Similar Plans in Action
6. Why Not Just Expand Social Security?: Americans Need a Universal Pension System');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O4','Trumpocracy: The Corruption of the American Republic','Broadside Books',37420,11700,0,'판매중',null,null,'조지 W. 부시 대통령의 연설문 작성자이자 특별 보좌관으로, ‘악의 축’(axis of evil)이라는 표현을 처음 사용했으며 부시 정부의 내부자로서 최초로 펴낸 부시의 임기에 대한 저서를 비롯해 아홉 권의 저서를 집필했다. 《애틀랜틱》(Atlantic)의 부국장이며 MSNBC의 토론자로 활동하고 있다. 공화당유대인연합, 영국의 싱크탱크인 ‘폴리시 익스체인지’(Policy Exchange), 마약퇴치 정책 집단인 ‘마리화나에 대한 현명한 접근’(Smart Approaches to Marijuana)의 이사이며, 공화당의 싱크탱크','2018.01.16','43','43.jpg',1,'데이비드 프럼 (지은이)','목차');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O4','The Inside Story of the Break-Ins and Breakdowns That Put Donald Trump','Hachette Books',40320,8200,0,'판매중',null,null,'Donna Brazile (Brazile, Donna)','2017.11.07','44','44.jpg',1,'Donna Brazile (지은이)','목차');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O4','Billionaire at the Barricades: The Populist Revolution from Reagan to Trump','St. Martins Press',32490,7400,0,'판매중',null,null,'Anonymous Ab 01 ','2017.10.10','45','45.jpg',1,'Anonymous Ab 01 (지은이)','목차');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O5','Liberty and Tyranny: A Conservative Manifesto (Hardcover) ','Threshold Editions',36000,2000,0,'판매중',null,null,'ABC 라디오의 전국 네트워크에서 라디오 쇼 호스트로 활약하고 있다. 헌법 변호사인 그는 레이건 행정부에서 고위직으로 활동하기도 했으며, 현재는 랜드마크 법률회사의 사장으로 근무하고 있다. 뉴욕 타임스 베스트셀러인 <Men in Black>의 저자이기도 한 그는 템플 대학에서 법학을 공부한 후, 템플대학교 법률대학원에서 박사 학위를 받았다. 현재 딸, 아들, 아내와 함께 살고 있다.','2009.03.24','46','46.jpg',1,'마크 R. 레빈 (지은이)','목차');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O5','Midnight in the Garden of Good and Evil: A Savannah Story (Hardcover)','Random House Inc',32500,5300,0,'판매중',null,null,'In charming, beautiful, and wealthy old-South Savannah, Georgia, the local bad boy is shot dead inside of the opulent mansion of a gay antiques dealer, and a gripping trial follows

Re-released to coincide with the major motion picture version directed by Clint Eastwood, the best-selling account tells the true story of the murder of the local bad boy in the opulent mansion of a gay antiques dealer in charming Old South Savannah, Georgia. Reissue. Movie tie-in. 200,000 first printing. Tour.','1994.01.13','47','47.jpg',1,'존 베런트 (지은이)','목차');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O5','A More Perfect Union: What We the People Can Do to Reclaim Our Constitutional','Berkley Pub Group',18570,1500,0,'판매중',null,null,'Alexandra Burt','2017.02.07','48','48.jpg',1,'Alexandra Burt (지은이)','목차');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O5','Midnight in the Garden of Good and Evil: A Savannah Stor','Random House Inc',32500,5320,0,'판매중',null,null,'In charming, beautiful, and wealthy old-South Savannah, Georgia, the local bad boy is shot dead inside of the opulent mansion of a gay antiques dealer, and a gripping trial follows

Re-released to coincide with the major motion picture version directed by Clint Eastwood, the best-selling account tells the true story of the murder of the local bad boy in the opulent mansion of a gay antiques dealer in charming Old South Savannah, Georgia. Reissue. Movie tie-in. 200,000 first printing. Tour.','1994.01.13','49','49.jpg',1,'존 베런트 (지은이)','목차');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('O','O5','Midnight in the Garden of Good and Evil: A Savannah Stor','Random House Inc',32500,5320,0,'판매중',null,null,'In charming, beautiful, and wealthy old-South Savannah, Georgia, the local bad boy is shot dead inside of the opulent mansion of a gay antiques dealer, and a gripping trial follows

Re-released to coincide with the major motion picture version directed by Clint Eastwood, the best-selling account tells the true story of the murder of the local bad boy in the opulent mansion of a gay antiques dealer in charming Old South Savannah, Georgia. Reissue. Movie tie-in. 200,000 first printing. Tour.','1994.01.13','50','50.jpg',1,'존 베런트 (지은이)','목차');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N1','거울 속은 일요일 ','스핑크스',15000,13500,0,'판매중',null,null,'충격의 데뷔작 《가위남》을 잇는 슈노 마사유키의 본격 미스터리 신작. 소라고둥처럼 생긴 ‘범패장’이라는 관(館)의 주인이자 마왕이라 불리는 프랑스 문학자 즈이몬 류시로는 ‘화요회’를 주최한다. 그날 밤 그 관에서 기묘한 살인사건이 벌어진다. 사건이 벌어진 현장인 독특한 계단에는 만 엔짜리 지폐 여러 장이 흩뿌려져 있었다.

당시 현장에 있던 명탐정 미즈키 마사오미의 활약 덕분에 사건은 해결되었지만, 세월이 한참 지난 뒤에 현대의 명탐정인 이스루기 기사쿠에게 그 사건을 다시 조사해달라는 의뢰가 들어온다. 시간을 넘어 교차하는 수수께끼, 진실은 어디에 있는가? 현기증과 부유감이 넘쳐흐르는 주도면밀한 트릭으로 가득 찬 세계를 그 명탐정이 도전한다.','2020.01.14','51','51.jpg',1,'슈노 마사유키 (지은이)','거울 속은 일요일
제1장 거울 속은 일요일
제2장 꿈속에서는 잠을 잔다
제3장 입은 진실을 말한다

밀(?) / 실(?)
밀(?)
실(?)

옮긴이의 말');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K5','뉴스 다이어트','갤리온',15000,13500,0,'판매중','신상','베스트상품','2019년 가디언에서 가장 많은 조회 수와 댓글을 기록한 칼럼은 뉴스의 폐해에 대해 지적한 글이었다. 바로 이 책의 시작이 된 ‘뉴스는 당신에게 해롭다’라는 제목의 글이다. 오늘날 저널리즘의 실패를 지적하고, 현대인의 과도한 뉴스 중독을 꼬집으며 뉴스 소비를 줄일 것을 권하는 글이 역설적이게도 가장 높은 호응을 얻은 것이다. 저자 롤프 도벨리가 지적한 것처럼 우리는 뉴스로 둘러싸인 하루를 살고 있고, 이는 기술의 발전과 함께 점차 심화되고 있다.

책은 정보 과잉의 시대를 살고 있는 현대인에게 필요한 뉴스 소비법을 제안한다. 저널리즘의 실패와 뉴스 중독이 끼치는 부정적인 영향력을 깨닫고 뉴스 다이어트를 시작하게 된 저자의 이야기가 담겨있다. 이 책은 오늘날 저널리즘의 현실을 돌아보고, 건강하게 뉴스를 소비하는 법을 알려주는 훌륭한 가이드가 될 것이다.
','2020.01.15','21','21.jpg',1,'롤프 도벨리 (지은이)','1부 뉴스를 끊다
뉴스 범람의 시대
뉴스 중독자의 모임
당신과 무관한 2만개의 뉴스
삶을 뒤흔들 만큼 중요한 뉴스는 없다

2부 오늘날 뉴스의 실패
자극적인 이슈를 팝니다
뉴스 생산자와 소비자가 빠지는 오해
2008 금융 위기는 아무도 예측하지 못했다');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K5','야밤에 읽는 만화 그리스 로마 신화','씨네21북스',18000,16200,0,'판매중','신상','베스트상품','성인용 버전의 만화 그리스로마 신화라고 해서 자극과 농담 위주로만 그리스로마 신화를 재해석했다고 생각하면 오산이다. 이 책의 1부는 헤시오도스와 아폴로도로스의 원전을 참고해 제우스 이전에 존재했던 티탄들의 이야기와 올륌포스 12신들의 탄생, 그리고 제우스의 연인들을 다룬다. 2부는 오비디우스와 제임스 프레이저의 원전을 바탕으로 신들이 낳은 반인반신 영웅들이 펼치는 모험을 다룬다.

헤시오도스와 오비디우스 등 그리스로마 신화의 뼈대를 만든 전설급 화자들의 원전뿐만 아니라, 신화를 현대적 관점으로 재해석한 토머스 불핀치와 제임스 프레이저, 또한 그리스로마 신화를 문헌학적, 고고학적으로 분석한 최근 논의들까지 참고해 내용의 튼실함을 갖추었다. 또한 말미에 주요 신과 영웅, 괴물들의 계보도를 실어 독자들의 이해를 돕고 있다.','2019.12.13','22','22.jpg',1,'김원경','1부
1장 세상 이전에 그들이 있었다: 신들의 탄생
2장 일단 낳고 보자: 괴물 열전
3장 죽이려는 아비, 살아남은 아들: 크로노스, 제우스
4장 아비를 거역하라: 제우스와 형제들
5장 신들의 전쟁: 티타노마키아
6장 패배한 신들, 어머니의 자궁에 갇히다: 타르타로스
7장 제우스 최대의 적: 튀폰


');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K5','음악과 수학 : 제1부 헬라스 제1권 아프로디테','매미',38000,34200,0,'판매중','신상','베스트상품','근대화라는 이름 아래 급격하게 우리에게 들이닥쳤으며 세계화라는 이름과 함께 더욱더 곳곳에 스며든, 서구의 문화와 학문이란 무엇이며 또 그 시초에는 무엇이 있었을까? 독일의 매체학자 프리드리히 키틀러는 후기작 <음악과 수학 : 제1부 헬라스 제1권 아프로디테>에서 유럽의 시원으로서의 고대 그리스를 생생하고도 새롭게 우리에게 펼쳐 보여준다.

그는 호메로스의 음악과 피타고라스학파의 수학에서 시작함으로써, 아테네의 소크라테스/플라톤/아리스토텔레스로 시작하는 정규 철학사와 인문학이 사유하기를 포기하는 수학을 근본적인 학문으로 내세울 뿐 아니라 시에서조차 사라져 버린 음악을 다시 문화와 예술의 근원으로 끌어올린다. 그리고 음악과 수학이 시작되는 그 순간에 언제나 함께 했던 여자와 남자라는 이중 원천에 주의를 기울이며, 이 둘 사이에 사랑을 일으키는 여신 아프로디테에게 유럽의 시원에 대한 사유를 담은 자신의 첫 책을 바친다.','2019.12.27','23','23.jpg',1,'프리드리히 키틀러 (지은이)','1 음악
1.1 오디세우스는 고통받으며 배웁니다
두 섬, 일곱 신부 ? 네 섬, 다섯 여자 ? 불멸의 암컷 매 ? 《태양의 심장부로 목표점을 설정하라》 ? 아, 태양 아래 섬이여 ? 님프들 사이의 나우시카아 ? 하녀 오십 명, 탕녀 열두 명, 여자 한 명
1.2 노래하기와 글쓰기
');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K5','감정이 지배하는 사회','새로운 현재',15000,13500,0,'판매중','신상','베스트상품','디지털화로 인해 우리는 방대한 정보를 쉽게 찾을 수 있고, 더 다양한 관점을 접할 수 있게 되었다. 하지만 이로 말미암아 거짓과 진실, 소문과 사실을 더욱 구분하기 어려워졌으며, 지극히 감정적 동물인 인간에게는 자신의 세계상에 들어맞는 정보를 쉽게 얻을 수 있는 조건이 마련되었다.

그렇게 되면서 팩트가 아닌 가짜 뉴스가 목소리를 키우고, 때론 이 가짜 뉴스가 진실이 아니라는 것을 알면서도 치우친 관점으로 판단을 내리게 된다. 이 책은 이러한 시대에서 우리의 감정이 우리 스스로를 어떻게 이끌어 가고 있는지를 보여주고, 이로부터 좀 더 현명한 의사결정을 내리는 것을 도와줄 안내서이다.
','2020.01.02','24','24.jpg',1,'세바스티안 헤르만 (지은이)','
프롤로그_감정은 판단을 지배한다

행동하는 코끼리, 정당화하는 기수
: 우리는 왜 생각을 먼저 정해놓고 나중에 합리화시킬까?
익숙한 건 분명 좋을 거야
: 반복이 지닌 무서운 힘에 대하여
잘 모르는 것을 어떻게 좋아하겠어?
: 우리는 왜 낯선 것과 새로운 것을 단번에 거부할까?

');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('K','K5','동물 윤리 대논쟁','사월의 책',22000,19800,0,'판매중','신상','베스트상품','동물을 둘러싼 모든 논쟁에 대한 가장 철학적인 답변. 동물의 도덕적 지위와 기본권, 육식과 포식, 동물 실험, 동물장기 이식, 동물원과 감금, 애완동물과 공생 등을 둘러싼 논쟁이 어떤 맥락에서, 어떤 주장을 통해 이루어지는지 상세하고 친절하게 이야기해준다. 그간의 모든 동물 관련 논쟁들을 남김없이 다룬 ‘결정판’이라 할 만하다. 한국의 대표적인 ‘동물윤리 철학자’ 최훈 교수가 지난 10년간의 동물 윤리 연구를 이 한 권의 책에 모두 담아냈다.','2019.08.28','25','25.jpg',1,'최훈','머리말: 물고 물리는 동물 윤리 논쟁

1부 동물의 도덕적 지위와 기본권
1장 동물의 도덕적 지위
2장 동물의 기본권

2부 육식과 포식의 윤리
3장 인간이 동물을 먹는다는 것: 육식의 문제
4장 동물이 동물을 먹는다는 것: 포식의 문제');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N3','존리의 부자되기 습관','지식노마드',15000,13500,0,'판매중',null,null,'한국 사회에 만연한 그릇된 소비행태는 한국 사람들이 돈에 대해 잘못 알고 있는 탓에 형성된 것이다. 바로 열심히 일하고 저축해도 부자가 되기는 불가능하다고 생각하고 포기하기 때문이다. 그러나 부자의 길은 사실 놀라울 정도로 가까운 데 있다. 생각만 바꾸면 된다. 과도한 소비를 투자로 바꾸는 라이프스타일로 전환하기만 해도 기적이 일어난다. 바로 복리의 마법 때문이다. 아인슈타인이 8번째 불가사의라 칭한 복리의 마법이 당신을 부자로 만들어줄 것이다.

기억하라. 복리는 시간이 지날수록 기하급수적으로 자산을 불려준다. 당신이 잠자는 동안에도 돈이 일하도록 시스템을 만들어 놓으면 시간이 당신을 부자로 만들어줄 것이다. 마음을 가다듬고 투자를 결심해도 무엇부터 시작해야 할지 막막한 사람들을 위해 저자는 경제독립을 위한 10단계 과정을 제시한다.','2020.01.15','64','64.jpg',1,'존 리 (지은이)','1장 부자가 되지 못하는 이유
01 “대표님은 돈이 그렇게 좋으세요?”
02 부자가 되지 못하는 이유 세 가지
03 ‘금융문맹’은 질병이자 악성 전염병
04 직업 선택 시 당신은 돈을 중요한 가치로 보는가?
05 원금보장의 늪
06 부동산에 대한 집착, 일본의 잃어버린 30년에서 배워라');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N3','정년 없는 부동산 경매','한국경제신문i',28500,25650,0,'판매중',null,null,'시대의 변화와 더불어 경매 투자에서도 투자자들의 지식이 나날이 업그레이드되고 있다. 이에 맞춰 실전 투자를 병행하면서 관련 분야를 꾸준히 공부하는 자세가 필요하다. 처음부터 남들의 성공담을 듣고 조바심이 앞서 기본 학습을 생략한 채 특정 영역에만 올인하는 경우가 많은데, 그렇게 시작해서 결국 고전하는 경우도 많다. 튼튼한 뿌리는 언젠가 열매를 맺지만, 그렇지 않다면 손실만 남기고 경매계를 떠나는 수많은 투자자들 중의 하나가 될 수 있다.

반면 부동산 지식을 마스터한 후, 실전 투자를 하려는 듯 시중의 다양한 부동산 강의를 좇아다니는 분들도 많다. 내가 알지 못하는 많은 위험이 도사리는 부동산 투자를 하기 전에 이론적인 체계를 정립하려는 생각은 바람직하지만, 광범위한 부동산 분야를 체계적으로 정립하고 투자를 하기란 현실적으로 쉽지 않기에 고전하게 된다.

그럼 경매는 어떻게 시작해야 할까? 경매 투자를 하기 위해서 가장 먼저 해야 할 것은 무엇일까? 우선은 기본적이고 전반적인 기본 학습을 한 후, 무섭더라도 실전에 나가자. 지금 당장 하지도 않는 종목별 투자 강의를 쫓아다니는 것은 비효율적이다. 공부만 하지 말고 기본이 되면 쉬운 물건부터 시작해보자.','2020.01.13','65','65.jpg',1,'차건환 (지은이)','part 1 부동산 경매의 개요
1장 부동산 경매 ……… 21
2장 경매 신청의 대상 ……… 25
3장 경매 절차상 용어정리 ……… 30
4장 말소기준등기 ……… 45
5장 「주택임대차보호법」 ……… 53');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N4','고수의 설득법','올림',15000,13500,0,'판매중',null,null,'좋은 것은 더 좋게 만들고, 나쁜 것은 더 나쁘게 만드는 대조 효과. 인간은 대조 효과에 의해 더 효과적으로 설득된다. 무언가 결단 내리기는 어렵지만, 선택지가 있을 때라면 달라진다. 둘 중 어느 쪽이 나은지는 쉽게 판단할 수 있는데, 이때 가장 중요한 설득의 기본 질문은 무엇과 비교하게 할 것인가 다. 인간관계에서든 비즈니스에서든, 커뮤니케이션의 궁극적 목적은 결국 상대의 마음을 움직이는 설득에 있다. 상대를 움직이려면 마음을 열게 만들어야 한다. 즉, 설득은 치밀한 심리전이다.

한국 FP협회 웹진에 실렸던 커뮤니케이션 칼럼, 대학에서 비즈니스 커뮤니케이션을 강의하며 학생들과 토론한 사례도 녹아 있다. 쓰고, 토론하고, 관련서를 탐독하고, 전문가와 의견을 나눈 경험과 아이디어의 총 집결체인 셈이다. 인간관계뿐만 아니라 비즈니스맨에게도 초점을 맞춘 이유는 특히 비즈니스 커뮤니케이션이야말로 고객의 마음을 이해하고 표현해 내는 능력이 특히 중요하기 때문이다.','2020.01.15','66','66.jpg',1,'장정빈 (지은이)','나는 당신과 한편입니다 사랑받는 관계의 대화 비법
먼저 한편이 되어라 _공감, 대체 불가능한 미래의 경쟁력 015
엄마는 뽀로로 가방을 좋아할까? _공감을 잘 표현하는 5가지 방법 022
때로는 언더독을 활용하라 _대중을 내 편으로 만드는 방법 031
독이 되는 칭찬, 약이 되는 칭찬 _고래도 춤추게 하는 칭');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N4','쓸모 있는 생각 설계','토네이도',15000,13500,0,'판매중',null,null,'뛰어난 성과를 내는 사람과 그렇지 못한 사람은 무엇이 다를까? 일을 하다 보면 생각지도 못했던 독창적인 발상을 해내는 사람이 있다. 매스컴에서는 매일 새로운 혁신을 일으킨 세계적인 인물들이 보도된다. 이를 접한 보통의 대다수는 성공한 사람들의 사고방식, 행동방식을 벤치마킹하는 데 시간을 쏟는다. 그런데 바로 여기서부터 오류가 발생한다.

혁신가들은 타인의 생각을 답습하는 방식으로 일을 시작하지 않기 때문이다. 그들을 움직이는 것은 ‘자신 안에서 발생한 생각’이다. 세계 최고의 프로페셔널들은 타인의 니즈를 파악하는 데 시간을 쏟는 대신 자신이 원하는 것을 구체화하는 데 에너지를 사용한다. 우리는 문득 떠오른 생각을 그냥 지나치지 않고 구체화를 거듭해 엄청난 결과로 만들어내는 이들을 ‘생각 설계자’라고 부를 수 있을 것이다.

구글의 공동 창업자 래리 페이지도 그런 ‘생각 설계자’ 중 한 명이다. 그는 스스로에게 이런 질문을 했다. “만약 모든 웹 사이트를 다운로드할 수 있고, 그 링크를 전부 기록해 둔다면 어떨까?” 지금은 너무 자연스러운 일상이지만 이는 그가 시행착오를 거듭하며 그냥 지나칠 수도 있었던 생각을 정교하게 발전시켜 나갔기에 가능한 일이었다.

글로벌 기업에서 스마트한 인재들과 일해온 이 책의 저자는 우리 모두 생각 설계자가 될 가능성을 품고 있다고 말한다. 그 방법을 제시하고 있는 이 책은 발간 즉시 베스트셀러로 등극해 초판 품절 사태를 일으키며 독자들의 빗발치는 증쇄 요청을 받은 바 있다. 열심히 하고 있지만 뭔가 정체된 듯한 느낌을 지우지 못하고 있는 독자라면 이 책의 마지막 장을 덮고 난 후에 오랫동안 풀리지 않던 수수께끼가 풀린 듯한 상쾌함을 얻을 수 있을 것이다.
','2020.01.20','67','67.jpg',1,'사소 쿠니타케 (지은이)','
시작하며 단순한 공상과 가치 있는 아이디어 사이
타인 모드에 지배당한 뇌 | 도대체 나는 무엇이 하고 싶은가? | 논리와 전략은 만능열쇠가 아니다 | 단순한 직감과 공상을 넘어서 | 모든 것은 여백의 디자인에 달렸다

1장 직감과 논리를 아우르는 세계 지도
정해진 답이 지배하는 개선의 ');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N5','행복한 나라에서 살면 나도 행복할까?','앤의서재',15000,13500,0,'판매중',null,null,'현재 광고 회사 이사로도 일하고 있는 전병주 작가는 10년 전 문득, 본격적인 사회로의 첫걸음을 앞두고 호기심이 일었다. 왜 대한민국은 이리도 바쁘게 돌아가는 걸까, 무엇을 위해 우리는 이런 ‘바쁨’에 헌신하며 살아가는 걸까, 그렇게 살기만 하면 눈에 보이는 경제적 지표나 정치적 성과라는 사회적 목표 말고도, 개인의 만족과 행복 또한 얻을 수 있는 걸까, 궁금했다. 누구보다 행복하게 살고 싶었기 때문이다. 그리고 행복의 조건을 알아보기 위해 전 세계에서 가장 행복하다는 나라를 방문해 그 나라 사람들의 이야기를 들어보는 프로젝트 <행복의 차원>을 시작했다.

행복한 나라들에서 발견한 공통된 행복의 재료들과 지금 당장 실현 가능한 행복은 무엇인지가 모두 담겨 있다. 뿐만 아니라 청년세대로부터‘헬조선’이라고까지 불리고 있는 대한민국에서 남들과 똑같이 일을 하고, 결혼을 하고, 아이를 낳고 10년간 팍팍한 현실을 오롯이 마주하며 30대 중반이 된 저자는 일상에서 어떻게 행복을 실현하고 있는지도 엿볼 수 있다.','2020.01.27','75','75.jpg',1,'전병주 (지은이)','Step Ι. 행복을 위한 가설
행복한 나라에서 살면 진짜 행복할까?

- ‘행복’에 던지는 사소하지만 근원적인 질문들
- 소확행을 넘지 못하는 이 시대의 행복
- 행복지수, 과연 행복을 점수로 매길 수 있을까?
- 행복한 나라 사람들에게 던진 공통 질문들
- 그래서 행복한 나라에 직접 가보기로 결심했다');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N4','오늘부터 딱 1년, 이기적으로 살기로 했다','비즈니스북스',15000,13500,0,'판매중',null,null,'《적을 만들지 않는 대화법》을 비롯한 다수의 베스트셀러를 낸 세계적인 작가 샘 혼이 들려주는 삶의 주도권을 되찾는 법. 미국 전역의 국립공원을 여행하고 싶다는 꿈을 은퇴 이후로 미루고 오로지 일과 가족을 위해 평생을 헌신했던 아버지가 은퇴 후 일주일 만에 뇌졸중으로 쓰러진 일을 겪고선, 자신 또한 아버지와 별반 다를 바 없이 일과 가족에게 삶의 우선순위를 내어주고 있었다는 사실을 깨닫고 큰 충격을 받았다. 1년 동안 온전한 자신만의 행복을 찾기로 선언한 후, ‘물가에서 1년 살기 프로젝트’를 하며 미국 전역을 여행하며 깨달은 점을 《오늘부터 딱 1년, 이기적으로 살기로 했다》에 담았다.

당신의 삶은 어떤 모습인가? 당신이 원하는 모습으로 살고 있는가, 아니면 타인을 위한 일로 내 시간을 다 보내고 있는가? 일, 가족, 관계의 쳇바퀴에서 내려와 조금 이기적이더라도 일단 나부터 돌보기로 결심한 사람들에게 이 책은 좋은 나침반이 되어줄 것이다.

샘 혼은 이 책에서‘물가에서 1년 살기’를 통해 나를 인생의 중심에 놓으며 180도 달라진 삶의 태도에 대해 이야기하며, 1년간 일어난 인생의 놀라운 변화를 바탕으로 자신만의 행복을 찾을 수 있는 현명한 방법을 독자들에게 알려준다.

또한“제3자의 시선으로 내 삶을 바라볼 때 만족하는가?”, “놓지 못하고 있는 불필요한 인간관계가 있는가?”처럼 살면서 한 번쯤 꼭 생각해볼 만한 질문들을 통해 독자들에게 인생의 주도권을 되찾는 구체적이고도 실용적인 지침을 알려준다. 그동안 타인에게 무작정 끌려다니기만 했거나, 남을 위한 무조건적인 배려가 몸에 배어있는 독자라면 이 책을 통해 자신을 먼저 챙기는 방법을 터득하게 될 것이다.','2020.01.20','68','68.jpg',1,'샘 혼 (지은이)','제1장. ‘오늘 행복한 삶’을 살고 있는가?
: 지금의 삶 평가하기
하루쯤 빈둥거리기
오늘이 최고의 날임을 기억하라
시간은 우리를 기다려주지 않는다

제2장. 내가 무엇을 원하는지 나만이 알 수 있다
: ‘언젠가의 꿈’이 아닌 ‘오늘의 꿈’ 만들기');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N4','하마터면 네 아이의 엄마로만 살 뻔했다','태인문화사',14800,13320,0,'판매중',null,null,'너무 고생한 남편을 대신해서 ‘100세 시대’를 준비하려고 혹은 경제적 어려움 탓에 다시 사회에 나가려는 경단녀와 전업주부만이 아니라, ‘단군 이래 최악의 불황’에 시달리는 소자본·소규모 창업자나 자영업자에게도 좋은 길잡이가 되어주는 책이다. 작은 가게조차 열어본 적 없는 사람이 성공한 창업자들의 사례를 연구·분석한 게 아니라, 실제로 ‘동네 상가의 구석진 곳’에서 아주 작은 규모로 시작해 억대 수익을 올리고 있는 창업자가 직접 쓴 책이기 때문이다.

그녀는 창업 준비에는 아무리 많은 시간을 투자해도 완벽한 조건과 환경은 존재하지 않을 수도 있다고 한다. 그러니 조건이 어느 정도 적절하다면 일단 시작하고, “시행착오를 겪으면서 일하자”는 각오를 하면 된다고 조언한다. 그러면 더 노력하게 될 터이니, 일도 더 빨리 진전될 것이라면서 말이다.

또한 가발처럼 특별한 제품의 경우에는 SNS마케팅은 물론 TV광고를 함으로써 더 많은 고객들의 방문을 유도해야 하는 바, TV광고나 SNS마케팅은 한 번 왔다 간 고객들의 “최고다! 훌륭하다!” 같은 입소문이 더해지면서 몇 배의 효과가 난다고 말한다.','2020.01.08','69','69.jpg',1,'이민아 (지은이)','
Chapter 1. 아내, 엄마에서 워킹맘으로 우뚝 서다
1. 마흔, 인생 후반전 여자의 작전타임
2. 나이 마흔에 백화점 판매원부터 시작했다
3. 밑바닥부터 철저하게 배웠다
4. 사람을 진심으로 대하면서 관계를 오래 맺었다
5. 철저한 준비만이 답이었다
6. 나는 언제나 주인이었다
7. 스펙이 성공을 보장하지는');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N4','마음을 훔치는 대화법 : 실전편','42미디어콘텐츠',14800,13320,0,'판매중',null,null,'친구와의 대화는 편한데 거래처와의 의사소통은 영 불편하거나, 공식적인 자리에서 발표하기는 익숙한데 사적인 이야기를 나눌 때는 자꾸만 엉뚱한 방향으로 흘러가는 등 누구나 대화 상황에서 어려움을 겪은 적이 있을 것이다. 그렇다면 이 책과 함께 여러 가지 상황 속에서 대화를 이어가는 ‘말하기의 기술’을 연습해 보자.

자연스러운 대화의 기술을 살펴보았던 전편 《마음을 훔치는 대화법: 이론편》에 이어, 이어지는 ‘실전편’에서는 실제 상황에서 순발력 있게 대처하는 화법의 마술을 알아본다.

전편에서 자신의 말하기 유형을 파악하고 이론을 충분히 익혔다면, 이제는 실전 상황에서 활용하는 연습을 해 볼 차례다. 책에서는 발표, 설득, 거절 등 일상 속 대화 상황 속에서 효과적으로 대화를 이끌어 나갈 수 있는 전략과 기술을 소개한다. 대화를 술술 풀어 가는 ‘마법의 한 문장’도 잊지 말자. 실전에서 적용할 수 있도록 훈련하고 연습하다 보면, ‘말 한 마디로 천 냥 빚도 갚는’ 대화의 비법은 멀리 있지 않을 것이다.','2020.01.15','70','70.jpg',1,'임철웅 (지은이)','Part 1. 호감을 부르는 말하기

01 >> 마음을 움직이는 기술, NLP
잠재의식에 말 걸기
상대의 비판적 사고 잠재우기
페이싱과 리딩 : 원하는 방향으로 대화 이끌기
서브리미널 기법 : 상대의 무의식 조종하기
NLP를 활용해 헤어진 사람의 마음 되돌리기
마법의 한 문장 1 - “아, 오늘 비 온다고 했던가요?');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N5','광고는 어떻게 세상을 유혹하는가?','팬덤북스',16000,14400,0,'판매중',null,null,'광고의 역사에서, 광고의 이론과 원리는 물론, 역사적 맥락 속에서 변화하는 매스 커뮤니케이션의 방법과 특징을 읽어낸 책이다. 역사적으로 가치가 있거나 유명했던 광고의 사례들을 통해서 각 시대의 사회, 문화, 정치, 경제, 예술에 대한 이해와 지식을 비롯하여, 동서고금 전 세계인을 유혹하는 광고의 원동력을 통찰할 수 있게 한다.

광고를 통해 세상과 소통하는 사회적 존재로서의 인간의 활동에 대한 조망을 다루고 있다. 벽화, 대리석, 파피루스, 전단지, 간판, 카드, 신문과 잡지, 라디오와 텔레비전, 웹과 스마트폰과 디지털 사이니지, 전단지와 포스터, 빌딩과 경기장에 실리거나 걸리는 광고는 역사가 시작된 이래로 멈춘 적이 없고 어쩌면 영원히 멈추지 않을지도 모른다. 오랜 세월 동안 미디어와 기술, 그리고 사회 변화의 선두에 광고는 존재해왔으며, 경제, 사회, 문화의 변화를 작동시키는, 보이지 않는 엔진으로서 역할을 수행해왔다.','2020.01.25','71','71.jpg',1,'공병훈 (지은이)','
Chapter 1 광고란 무엇인가 : 착각과 유혹, 그리고 설득의 힘
착각과 유혹의 힘, 광고
광고의 역할 : 욕구를 자극하여 수요를 창출하자
PR : 상호호혜적 쌍뱡향 커뮤니케이션의 관계
선전 : 주의 · 주장을 널리 알리기 위한 활동
미디어 : 정보와 데이터 전달, 그리고 저장 도구');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N5','젊은 생각, 오래된 지혜를 만나다','여문책',17500,15750,0,'판매중',null,null,'2020년 우리 사회의 주요 키워드 중 하나가 바로 청년이다. 헌정사상 처음으로 만 18세에게도 선거권이 주어지는 올해는 여러모로 우리 정치사에서 중요한 한 해로 기록될 것이다. 이에 발맞추기라도 하듯 청년-청춘의 대명사라 할 수 있는 20대 젊은이의 단단한 사유의 결정체가 <젊은 생각, 오래된 지혜를 만나다>라는 책으로 높디높은 세상의 문턱에 도전장을 내밀었다.

그 주인공인 나호선은 스스로를 "변방의 경계인"이라 소개한다. 남들이 다 "서울로, 서울로"를 외칠 때 홀로 씩씩하게 부산행을 택했다. "바다가 좋아서" 그리고 "어머니를 어머니의 굴레에서 해방하고자 하는 자립심"이 작용한 결과였다. 아르바이트와 주경야독으로 부산대학교 정치외교학과 석사과정을 마친 그는 병역의 의무를 다하기 위해 2020년 새봄에 군 입대를 앞두고 있다.

저자는 말한다. "20대에게는 기회를 잡는 것 자체가 하늘의 별따기입니다. 순박한 사람들에게 행운이 돌아가는 세상을 꿈꾸며, 지식과 용기를 전염시키고자 이 책을 썼습니다. 이 책은 우물을 바다로 알고 살던 한 청년이 펴낸 배움의 결실이자 자유롭게 읽고 분방하게 쓰기 위해 한 청춘이 지불한 젊음의 가격입니다."','2020.01.10','72','72.jpg',1,'나호선 (지은이)','1부 평등의 얼굴

1장 잃어버린 꿈이 있었다: 카를 마르크스·프리드리히 엥겔스, 『공산당 선언』
유물론자들의 실패한 유령
자유주의의 사생아, 부르주아의 반항아
누구를 위한 혁명이었나
자본주의의 무채색들
자본주의의 골격, 사회주의의 영혼');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N5','카레로 보는 인도 문화','AK(에이케이)커뮤니케이션즈',13800,12420,0,'판매중',null,null,'인도 카레는 언제 어디서 어떻게 생겨났을까? 인도에서는 어떤 카레를 먹을까? 인도 역사 연구의 일인자가 카레라이스의 기원을 찾으며, 각지의 특색 넘치는 요리를 맛보고, 역사와 문화 이야기를 들려준다. 인도 각 고장의 버라이어티한 아름다운 요리 사진도 다수 수록하였다.','2020.01.11','73','73.jpg',1,'가라시마 노보루 (지은이)','제1장 인도에서 카레라이스를 주문하면
제2장 카레의 어원과 카레의 성립
제3장 유학 생활과 카레──마드라스대학원 기숙사의 식당밥
제4장 카레를 좋아하게 되다──마이소르에서 가족과 함께 체재
제5장 무굴 왕조의 궁정 요리──중앙아시아와 페르시아의 전통

');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N5','소크라테스의 변명·파이돈·크리톤·향연','스타북스',12000,10800,0,'판매중',null,null,'소크라테스는 일반적으로 생각하는 철학자들과는 길을 달리한다. 사색에 몰두하거나 저술 활동을 하는 것이 아니라 아테네 거리로 나가 그가 누구이든 가리지 않고 철학적 질문을 던지고 대화를 나누었다. 상대에게 질문을 하여 무지를 깨닫게 하고 진리를 알게 했다.

그의 대화법은 진리의 분만을 도와준다는 뜻에서 산파술이라고 말하기도 한다. 소크라테스는 지(知)와 덕(德)의 일치를 주장했고 덕을 실행하는 것은 인간으로서 완전함을 이루고 가족, 재산, 명예 등 사람들이 집착하는 그 어떤 것보다 위에 있어야 했다. 심지어 죽음도 그것을 막을 수 없고 그리하여 인간 영혼의 본질에 가까이 갈 수 있는 것이다. 소크라테스 이전에는 세계가 어떻게 구성되었는지 자연 철학에 대한 관심이 높았으나 소크라테스는 ‘어떻게 사는 것이 옳은가’라는 화두로 인간이 중심이 되는 철학적 과제에 몰두한다.','2020.01.06','74','74.jpg',1,'플라톤 (지은이)','
머리말: ‘악법도 법이다’, ‘너 자신을 알라’로 알려진 위대한 사상가

소크라테스의 변명
파이돈
크리톤
향연

');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N1','노벰버 로드','네버모어',15000,13500,0,'판매중',null,null,'주요 범죄문학상을 휩쓴 루 버니의 신작으로, 존 F. 케네디의 암살사건을 배경으로 사랑과 성장 그리고 구원의 이야기를 스릴러 장르에 담아냈다. 존 F. 케네디의 죽음은 미국 전역을 충격과 슬픔에 잠기게 했다. 당시 미국 국민들이 충격에 빠져 슬퍼했던 이유가 어쩌면 자신들의 불확실한 미래에 대한 두려움일지도 모른다고 생각한 루 버니는 과거를 뒤로 한 채 새로운 내일을 위해 서쪽으로 향하는 두 사람의 이야기를 써냈다.

1963년 11월 22일, 대통령 존 F. 케네디가 암살당한다. 뉴올리언스의 마피아 보스 카를로스 마르첼로의 심복인 프랭크 기드리는 소식을 듣는 순간 자신이 암살 계획의 일부분이었다는 사실을 깨닫는다. 사건의 관련 인물들이 차례차례 제거되자 살아남기 위해 본능적으로 도망을 치는 기드리. 라스베이거스를 향해 가던 그는 차 고장으로 곤란에 처한 샬럿을 만나게 된다.

오클라호마의 작은 마을 출신인 샬럿은 무책임한 알코올 중독자 남편에게서 도망쳐 두 딸과 개를 데리고 LA로 향하는 중이었다. 여행 중인 단란한 4인 가족처럼 보이는 것이 도망치는 데 더 유리할 거라고 판단한 기드리는 샬럿에게 라스베이거스까지 태워주겠다는 제안을 한다. 하지만 카를로스 조직의 최고 암살자 바로네에게 꼬리를 잡히고 마는데...
','2020.01.02','52','52.jpg',1,'루 버니 (지은이)','1963
1 ∼ 33
2003년
에필로그
감사의 말');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N1','바스커빌 가의 개','자화상',6500,5850,0,'판매중',null,null,'셜록 홈즈 시리즈 중
가장 미스터리한 작품
‘바스커빌가의 개’

나는 바로 옆에 있는 홈즈의 얼굴을 바라보았다. 창백해지기는 했지만 그의 얼굴은 생기를 띠고 있었으며, 눈은 달빛을 받아 반짝이고 있었다. 그런데 갑자기 그 눈이 둥그레지며 앞을 노려보더니 놀라움에 입이 떡 벌어졌다. 레스트레이드는 공포를 못 이기고 비명을 지르더니 땅에 얼굴을 박았다. 나는 마비된 손으로 권총을 손에 움켜쥔 채 벌떡 일어났다. 안개 속에서 튀어나온 끔찍한 형상 앞에서 내 마음은 얼어붙었다. 그것은 석탄처럼 새까만 사냥개였는데, 그런 개는 지금까지 한 번도 본 적이 없었다. 쩍 벌린 입에서는 불길이 뿜어져 나왔고, 두 눈은 휘황한 빛으로 번쩍거렸다. 주둥이와 목덜미와 턱은 타오르는 불길에 휩싸여 있었다. 꿈을 꾸는 듯 뒤죽박죽이 된 머리로는 안개의 벽 속에서 튀어나온 저 시커먼 몸뚱이와 무시무시한 머','2019.12.30','53','53.jpg',1,'아서 코난 도일 (지은이)','끊어진 세 가닥의 실
바스커빌 저택
메리핏 저택의 스태플턴 남매
왓슨 박사의 첫 번째 보고서
왓슨 박사의 두 번째 보고서-황야의 불빛-
왓슨 박사의 일기장
바위산 위의 사내
황야에서의 죽음
그물망 좁히기
바스커빌 가의 개
사건에 대한 회상

작품 해설
작가 연보');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N1','내 이웃의 살인마 ','황금가지',13800,12420,0,'판매중',null,null,'살인마에 관한 색다르고 흥미로운 크라임 단편 앤솔러지 『내 이웃의 살인마』가 황금가지에서 출간되었다. 추리 미스터리에서 호러, 오컬트, 판타지까지 장르를 넘나들며 8인의 작가들이 펼쳐보이는 살인마에 관한 단편소설집. 연쇄살인마를 쫓는 펜션 주인, 갑자기 연쇄살인마와 맞닥뜨려 스무고개 게임을 통해 목숨을 부지해야 하는 청년, 시골 마을에서 벌어지는 기이한 죽음들, 한밤중에 만나게 된 기억을 잃은 여자와 의문의 운전자, 대학시절 절친의 육아 스트레스가 불러온 참극과 수상한 여자, 신선과 호랑이의 살인마를 붙잡기 위한 활약, 밤마다 세탁기 안에서 들려오는 기이한 소리와 위층에 사는 미청년, 유튜버 애인이 살인마일지 모른다는 의문을 품은 사내 등 잔인하거나 강렬한 살인 묘사보다는 살인마라는 소재를 다양한 시각에서 바라보며 흥미롭게 이야기를 풀어낸다.','2019.12.26','54','54.jpg',1,'김태민,박부용,해도연,이마음,정예진,엄성용,묵독,배명은 (지은이)','
혼자 온 손님 7
악마의 장난 49
앞뜰과 뒷동산에 119
손가락 트렁크 151
미영 181
귀매 215
세탁기가 있는 반지하 255
연출자 X 311

');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N1','심리죄 : 교화장','한즈미디어(한스미디어)',14800,13320,0,'판매중',null,null,'11억 회 재생된 인기 웹드라마 <심리죄> 원작소설. 천재적인 프로파일링 실력으로 경찰을 도와 사건을 해결해온 대학원생 팡무는 연쇄살인마에게 스승을 잃은 뒤 경찰이 되어 범죄사건 연구를 계속한다. J시에서 현장이 마치 연극의 한 장면처럼 조작된 살인사건이 연이어 일어나자, 팡무는 프로파일링을 통해 이들 사건이 서로 관련되어 있으며 동일한 범죄 집단에 의해 저질러졌다는 사실을 알게 된다.

이들은 대체 왜 살인을 저질렀을까? 또 살인 자체보다 살인 현장을 공들여 꾸미는 데에 더욱 집착하는 이유는 무엇일까? 팡무는 이들의 살인을 막고 타인의 인생을 조작하려 든 자들을 체포할 수 있을 것인가?','2020.01.06','55','55.jpg',1,'레이미 (지은이)','제1장 고아원
제2장 재회
제3장 연민
제4장 천사당
제5장 뤄자하이의 이야기
제6장 방향
제7장 재판
제8장 지하 미궁');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N2','나의 문구 여행기','뜨인돌',18800,16920,0,'판매중',null,null,'문구 브랜드 아날로그 키퍼 문경연의 문구 여행기. 여느 20대들과 마찬가지로 취업, 학자금 대출, 아르바이트 등으로 치열한 일상을 보내던 작가가 자신이 제일 좋아하는 문구를 보러 불쑥 떠난 문구 여행의 기록이다.

하고 싶고 좋아하는 일과 현실 사이에서 갈등하던 작가는 문구 여행을 하면서 문구를 너무나 좋아하는 자신을 깨닫고, 그 마음을 제대로 표현하고 인정하는 용기를 낸다. 그리고 한때는 부끄럽고 누군가는 한심하다고 생각할지도 모른다고 여겼던, 문방구 주인이 되겠다는 꿈을 향한 첫 발걸음을 뗀다.

말하자면, 좋아하는 것을 좋아할 수 있는 용기를 낸 것이다. 작가는 그런 자신의 여행을 결론을 내리거나 확신을 얻는 여행이 아니라, 좋아하는 것을 어디까지 좋아할 수 있는지 실험한 여행이라고 정의한다.

이 책에는 미국, 유럽, 일본, 중국까지 7개 도시 27곳의 문방구와 문구 이야기가 아름답게 펼쳐진다. 작가가 여행에서 만난 문구 사진들이 풍성하게 수록되어 있으며, 문구 여행 중에 쓴 일기와 메모 등 작가의 손 글씨로 가득한 기록도 책 속에 그대로 실었다. 문구 덕후이자 문방구 주인이 떠난 여행인 만큼 여행에 필요한 실용적인 정보도 가득하다.
','2020.01.17','56','56.jpg',1,'문경연 (지은이)','1부 : 나를 찾는 여행
0. 여행의 시작
1. 파리. 문구 여행 워밍업
2. 베를린, 기록광을 위한 도시
3. 바르셀로나, 평화
4. 런던, 행복과 불안의 변덕
5. 뉴욕, 나의 취향을 정의하다

* 아날로그 키퍼의 시작');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N2','어린이 기자 상담실','샘터사',13000,11700,0,'판매중',null,null,'어린이들이 만들고, 어른들이 읽는 세상에서 가장 젊은(?) 「가메오카 어린이 신문」의 인기 코너는 단연 어른들의 고민을 어린이 기자들이 상담해 주는 어린이 기자 상담실이다. 어른들이 만들고 어린이들이 읽는 보통의 어린이 신문과는 정반대의 신문이라서일까, 가메오카 어린이 신문의 코너는 어른들의 사고방식으로는 무거웠던 고민을 한순간에 가볍게 만들어 주는 덕분에 어른들의 크고 작은 고민 상담이 연일 쇄도한다.

어린이 기자들의 고민 상담은 어떤 점이 다를까? 볼로냐 국제도서전 라가치상 특별상 수상 작가 요시타케 신스케의 일러스트와 함께 여기 그 해결책을 제시한다.','2020.01.15','57','57.jpg',1,'가메오카 어린이 신문 (지은이)','1장 연애, 사랑, 결혼…… 너무 어려워요!
? 여자친구가 결혼을 빨리 하자고 보채서 고민입니다 12
? 아이돌을 너무 좋아해서 현실 남자들에게 관심이 가지 않아요 14
? 친구가 좋아하는 사람을 좋아하게 됐어요 16
? 연애한다는 게 대체 뭘까요? 18
? 연애와 사랑은 다른 건가요? 20


');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N2','사랑의 목격','허밍버드',12500,11250,0,'판매중',null,null,'2015년, 독립출판물 <사랑의 몽타주>를 통해 품절과 재입고를 거듭 반복하며 최유수 열풍을 불러온 작가 최유수. 평생을 사랑에 대해 탐구하고 증거하고 싶다는 그는 <사랑의 목격>을 통해 손에 잡히지 않는 사랑을 언어로 실체화해 나간다.

<사랑의 목격>은 실체 없는 사랑을 언어로 감각하고 담아낸 책이다. 깊이 있는 시선과 담백하면서도 정제된 문체, 독보적인 감성으로 독자들의 큰 사랑을 받은 저자는 사랑의 전 과정을 그윽이 바라보면서 사랑에 대해 끊임없이 질문을 던지고 자신만의 정의를 내린다. 사랑의 모습을 언어로 감각하고 문장으로 실체화함으로써 사랑이라는 존재 자체에 한 걸음 다가서려는 저자의 작은 시도다. "앞으로 5년 동안은 사랑에 대한 글을 쓰기 어려울 것 같다"고 말할 만큼 저자는 지나온 시간만큼이나 더욱 깊어진 완성형의 문장을 선보인다.

사랑의 본질에 다가가고자 하는 최유수표 질문과 정의는 독자로 하여금 각자의 사랑을 발견하고, 돌아보고, 자신만의 답을 찾고, 사랑을 대하는 태도를 정립하도록 하는 통로가 되어 준다. 섬세한 언어와 깊이 있는 고찰이 돋보이는 글은 곧 가벼운 사랑이 넘쳐나는 시대에 최유수의 사랑을 읽어야 하는 이유가 된다','2020.01.13','58','58.jpg',1,'최유수 (지은이)','[1부 사랑은 문장이 된다]
믿음
우리는 나란히 누워서
양면의 고백
너의 눈으로
사랑의 원형
앞모습과 뒷모습
꿈에서 만나요
나와 너 사이
사유');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N2','숨고 싶은 사람들을 위하여','웨일북',12000,10800,0,'판매중',null,null,'세상에는 두 종류의 삼백쓰가 있다. 성공한 삼백쓰와 실패한 삼백쓰. 김봉철은 전자다. 삼백쓰로서 마땅히 갖춰야 할 신체와 정신, 폐쇄적인 인간관계와 한없이 낮은 자존감을 온몸으로 발산하는 삼백쓰의 모범이다.

영어 발음이 부끄러워 빅맥이나 메리 크리스마스조차 말하지 못하는 소심한 성격에, 모임 자리에서는 늘 투명 인간 취급을 당하고, 동료와 이웃조차 외면하는 불쌍한 히키코모리. 그가 기댈 곳은 가족뿐이지만 그마저도 수상한 과거가 발목을 붙잡는다.

문제작 <30대 백수 쓰레기의 일기>가 처음 세상에 나왔을 때, 사람들은 그를 전설이라 불렀다. 그럴듯한 모양새도 갖추지 못한 책에 열광했다. 그렇다. 그의 글은 시종 웃기며, 마음 한구석을 불편하게 한다. 그리고 마침내 슬프다. 청춘을 엉망으로 보내는 젊은이의 지질한 초상 앞에서 독자는 모두 이유 있는 울음을 운다.

불우한 환경과 청년 세대의 좌절이 개인의 기질과 맞닿아 끝없는 한심함으로 이어지지만, 김봉철은 자신의 상처를 끌어안고 조금씩 나아가려 한다. 연민하거나 동정하거나 울거나 웃거나 그러거나 말거나, 김봉철은 김봉철의 삶을 산다.','2020.01.11','59','59.jpg',1,'김봉철 (지은이)','1장
내 이름은 봉철, 삼백쓰라고 해

나이 서른여섯에 백수로 산다는 것
천 원의 행복
메리 크리스마스를 말하지 못하는 병
초바 딸바 같은 건 죽어도 말할 수 없다
손톱을 물어뜯는 버릇
몇 살까지 이불에 오줌을 싸야 정상일까?
졸아붙은 라면을 끓인다
엄마의 옛날이야기
사람 눈 잘 보는 법');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N2','존재만으로 빛나는','피어오름',13500,12150,0,'판매중',null,null,'태희 에세이. 타인의 모습을 통해 나를 돌아볼 수 있도록, 나의 모습을 통해 타인을 비출 수 있도록, 나라는 존재의 근간에 대해, 현재의 나를 둘러싼 모든 관계와 그 감정에 대해 이야기한다. 쑥스럽거나 불편할 수 있지만 나라는 존재를 이야기하기 위해 빼놓을 수 없는 가족이라는 이름과 우리가 살아가며 자의적 타의적으로 맺어야 하는 나를 둘러싼 다양한 인연. 그 안에서 느끼는 다양한 감정의 이유를 전한다.

관계에 서툰 세상의 모든 나에게, 힘든 순간에도 행복한 순간에도 머쓱한 표정을 지어야 했던 세상의 모든 어른들에게, 가까운 이들의 소중함을 몰랐던 세상의 모든 아들과 딸들에게, 나의 사랑이 옳은 줄만 알았던 세상의 모든 엄마 아빠들에게 전하는 이야기.

때로는 미워했고 때로는 한없이 미안했던, 그러나 실은 존재만으로 감사한 내 사람들을 위한 편지. 어느 페이지를 펼쳐도 좋다. 분명 그 페이지가 그 순간의 당신의 마음을 대변해줄 테니.','2020.01.23','60','60.jpg',1,'태희 (지은이)','1부 관계에 서툰 그대를 위한, 우리의 모든 순간들

의외로 큰일에 담대한 사람
존중받는 느낌에 대하여
당신은 거절을 할 줄 알아야 한다
공감 능력이 떨어지는 사람이 불편한 이유
힘들었던 날을 보낸 사람들의 보이지 않는 따뜻함
타인의 흠을 찾아내는 사람은 스스로에게만 관대하다
');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N3','재무제표 모르면 주식투자 절대로 하지마라 ','베가북스',19800,17820,0,'판매중',null,null,'2016년 첫 출간 이후, 독자들에게 큰 사랑을 받으며 10쇄를 돌파한 『재무제표 모르면 주식투자 절대로 하지마라』가 ‘최신 개정판’으로 돌아왔다. 개정판에는 각종 사례들을 현재의 시장 분석에 활용할 수 있는 최신 자료로 업데이트하였으며, 달라진 법 규정이나 제도 등을 반영하였다.

주식 투자자라면 반드시 짚고 넘어가야 할 재무제표 지식을 실은 ‘체크 포인트’ 와 실제 사례로 연습할 수 있는 ‘사례 실습’ 코너를 실었다. 또한 초판에서 언급했던 회사들이 그 뒤로 실제로 어떻게 되었는지 의미 있는 사례 일부에 대해 ‘저자 후기’를 더하였다.

다양한 환경에 따라 변화무쌍하게 등락하는 주식시장에서 재무제표가 왜 수익률에 큰 도움이 되는지, 어떻게 손실을 줄일 수 있는지, 그리고 어떻게 수익을 내는지, 투자자를 위한 재무제표 독해 비기를 알려준다. 복잡한 분석과 어려운 용어를 쓰지 않으면서도, 처음부터 끝까지 ‘투자를 위한 재무제표’라는 중심을 잃지 않는다. 이제 재무제표는 당신의 돈을 지킬 안전벨트가 될 것이다.
','2020.01.10','61','61.jpg',1,'사경인 (지은이)','
1부 재무제표와 주식투자
재무제표가 정말 수익률에 도움이 될까?
왜 회계사들은 수익률이 그 모양일까?
‘묻지마 투자’는 제발 그만 하자!
재무제표로 지켜낸 후배의 결혼자금
매출액이 3배나 늘었는데 회사는 왜 망했을까?');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N3','소셜임팩트','한국경제신문',16000,14400,0,'판매중',null,null,'‘소셜임팩트(사회적 평판)’는 구글에서 검색결과가 약 17억 건이 나올 정도로 폭발적으로 회자되는 단어다. 두 가지 의미로 구성되는데 첫째, ‘조직, 지역, 세계에 긍정적 기여할 것’, 둘째는 ‘지속가능성이 있을 것’이다. 긍정적 영향이 장기적이고 지속적으로 유지되어야 하는 것이다. 이러한 개념은 UN을 중심으로 정립된 글로벌 어젠다 SDGs(지속가능한 발전)과 궤를 같이하고 있다.

SDGs의 행동기간은 2030년까지로 유럽과 선진국을 중심으로 ‘유익한 기업, 목적을 가진 기업’이 될 것을 요구하며 비즈니스의 메가트렌드로 자리 잡았다. 이에 이 책은 ‘소셜임팩트’의 관점에서 본 오늘날 소비자의 유형과 특징을 산업별로 분석하고 국내외 사회적 신뢰브랜드의 예시를 통해 향후 기업과 브랜드가 ‘지속가능하고 긍정적인’ 영향력을 어떻게 발현하고 소비자에게 전달할지 방안을 제시하고자 한다. 아울러 소비자 1만 명이 선택한 48개 산업별 ‘사회적 신뢰 브랜드’를 소개하여 소비자들이 어느 브랜드(기업)의 소셜임팩트를 실제로 체감하고 있는지 확인할 수 있다.','2020.01.13','62','62.jpg',1,'이상일,최승범,박창수 (지은이)','1부 의미/ 전 지구적 충격, ‘소셜임팩트’

1장 부인할 수 없을 정도로 선해져라
더 나은 세상을 노래하는 소셜임팩트/ 세계적으로 확산되는 ‘임팩트 투자’/ 지구의 위기, 그리고 자본주의의 위기/ 망가진 지구 중심에서 사회개선을 외치다

2장 당신이 잠든 사이에도 세상은 변한다
');
Insert into BOOKSTORE.BOOK (H_CODE,L_CODE,B_NAME,B_COMPANY,B_PRICE,SALE_PRICE,BUY_NUM,STATUS,ST1,ST2,CONTENT,CREATED,B_CODE,B_IMAGE,B_TYPE,WRITER_NAME,CONTENTS) values ('N','N3','투자는 워런 버핏처럼','에이지21',14000,12600,0,'판매중',null,null,'버핏이 부의 원천으로 삼은 법칙을 일곱 가지로 정리했다. 버핏의 투자 사례를 알 수 있는 사료들은 각종 인터뷰와 주주서한에 흩어져 있고, 버핏의 투자 방식도 조금씩 바뀌어 왔기 때문에 초보자가 버핏의 투자 방식을 공부하기가 쉽지 않다. 사례도 방대할 뿐 아니라 책마다 내용도 조금씩 다르다. 이 책에 자주 인용된 버핏의 자서전 <스노볼>만해도 1,500페이지가 넘는다. 그런 의미에서 이 책은 버핏을 처음 접하는 일반 투자자에게 좋은 길잡이 역할을 한다.
','2020.01.15','63','63.jpg',1,'구와바라 데루야 (지은이)','
들어가며
추천의 글 -홍춘욱
추천의 글 -김성일
추천의 글 -이기원
법칙1. 세상을 바라보고 판단하지 않는다
<역발상이 부를 낳는다>
법칙2. 성공하면 그 밖의 다른 것은 하지 않는다
<절제가 부를 낳는다>
법칙3. 웬만한 스트라이크는 그냥 흘려보낸다
<기다림이 부를 낳는다>');
REM INSERTING into BOOKSTORE.CART
SET DEFINE OFF;
Insert into BOOKSTORE.CART (P_NUM,B_TYPE,B_CODE,PRODUCTS_COUNT,WDATE,PRICE,MEMBER_ID,SALE_PRICE,B_NAME) values (1,1,'6',1,'2020/01/15',12000,'test1',10800,'잔을 부딪치는 것이 도움이 될 거야');
REM INSERTING into BOOKSTORE.COMMENTS
SET DEFINE OFF;
Insert into BOOKSTORE.COMMENTS (REVIEW_NUM,Q_NUM,REQUEST_NUM,MEMBER_ID,CONTENT,PASSWORD,WRITER_NAME,C_IDX) values (null,2,null,'admin','댓글 수정합니다','admin','관리자','12');
Insert into BOOKSTORE.COMMENTS (REVIEW_NUM,Q_NUM,REQUEST_NUM,MEMBER_ID,CONTENT,PASSWORD,WRITER_NAME,C_IDX) values (null,14,null,'admin','댓글 수정합니다','admin','관리자','15');
Insert into BOOKSTORE.COMMENTS (REVIEW_NUM,Q_NUM,REQUEST_NUM,MEMBER_ID,CONTENT,PASSWORD,WRITER_NAME,C_IDX) values (null,1,null,'admin','댓글 수정합니다','admin','관리자','4');
Insert into BOOKSTORE.COMMENTS (REVIEW_NUM,Q_NUM,REQUEST_NUM,MEMBER_ID,CONTENT,PASSWORD,WRITER_NAME,C_IDX) values (null,8,null,'test1','댓글 수정합니다~~','1111','test1','53');
Insert into BOOKSTORE.COMMENTS (REVIEW_NUM,Q_NUM,REQUEST_NUM,MEMBER_ID,CONTENT,PASSWORD,WRITER_NAME,C_IDX) values (null,null,70,'bbangaro','와앜!!!!!!!!!!','1004','김서나','135');
Insert into BOOKSTORE.COMMENTS (REVIEW_NUM,Q_NUM,REQUEST_NUM,MEMBER_ID,CONTENT,PASSWORD,WRITER_NAME,C_IDX) values (null,null,26,'suna','java','1004','김서나','69');
Insert into BOOKSTORE.COMMENTS (REVIEW_NUM,Q_NUM,REQUEST_NUM,MEMBER_ID,CONTENT,PASSWORD,WRITER_NAME,C_IDX) values (null,8,null,'test1','댓글 수정합니다','1111','test1','27');
Insert into BOOKSTORE.COMMENTS (REVIEW_NUM,Q_NUM,REQUEST_NUM,MEMBER_ID,CONTENT,PASSWORD,WRITER_NAME,C_IDX) values (null,null,69,'bbangaro','1989','1004','김서나','98');
Insert into BOOKSTORE.COMMENTS (REVIEW_NUM,Q_NUM,REQUEST_NUM,MEMBER_ID,CONTENT,PASSWORD,WRITER_NAME,C_IDX) values (null,null,70,'bbangaro','춥다','1004','김서나','43');
Insert into BOOKSTORE.COMMENTS (REVIEW_NUM,Q_NUM,REQUEST_NUM,MEMBER_ID,CONTENT,PASSWORD,WRITER_NAME,C_IDX) values (null,null,72,'bbangaro','입력','1004','김서나','136');
Insert into BOOKSTORE.COMMENTS (REVIEW_NUM,Q_NUM,REQUEST_NUM,MEMBER_ID,CONTENT,PASSWORD,WRITER_NAME,C_IDX) values (null,null,1,'bbangaro','왜 답글 안달아주세요 ㅡㅡ','1004','김서나','1');
Insert into BOOKSTORE.COMMENTS (REVIEW_NUM,Q_NUM,REQUEST_NUM,MEMBER_ID,CONTENT,PASSWORD,WRITER_NAME,C_IDX) values (null,null,72,'bbangaro','ㅗㅗㅗ기믕주노ㅗㅗ','1004','김서나','139');
Insert into BOOKSTORE.COMMENTS (REVIEW_NUM,Q_NUM,REQUEST_NUM,MEMBER_ID,CONTENT,PASSWORD,WRITER_NAME,C_IDX) values (null,null,1,'admin','답변이 늦어 죄송합니다. 입고예정 없습니다','admin','관리자','16');
Insert into BOOKSTORE.COMMENTS (REVIEW_NUM,Q_NUM,REQUEST_NUM,MEMBER_ID,CONTENT,PASSWORD,WRITER_NAME,C_IDX) values (null,1,null,'test1','댓글 수정합니다','1111','test1','14');
REM INSERTING into BOOKSTORE.E_BOOK
SET DEFINE OFF;
REM INSERTING into BOOKSTORE.HIGH_CATEGORY
SET DEFINE OFF;
Insert into BOOKSTORE.HIGH_CATEGORY (H_NAME,H_CODE) values ('국내','K');
Insert into BOOKSTORE.HIGH_CATEGORY (H_NAME,H_CODE) values ('외국','O');
Insert into BOOKSTORE.HIGH_CATEGORY (H_NAME,H_CODE) values ('신간','N');
Insert into BOOKSTORE.HIGH_CATEGORY (H_NAME,H_CODE) values ('베스트셀러','B');
Insert into BOOKSTORE.HIGH_CATEGORY (H_NAME,H_CODE) values ('e북','E');
Insert into BOOKSTORE.HIGH_CATEGORY (H_NAME,H_CODE) values ('오디오북','A');
REM INSERTING into BOOKSTORE.LOW_CATEGORY
SET DEFINE OFF;
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('소설','K1','K');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('시/에세이','K2','K');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('경제/경영','K3','K');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('자기계발','K4','K');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('인문','K5','K');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('역사/문화','K6','K');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('소설','O1','O');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('시/에세이','O2','O');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('경제/경영','O3','O');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('자기계발','O4','O');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('인문','O5','O');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('역사/문화','O6','O');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('소설','N1','N');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('시/에세이','N2','N');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('경제/경영','N3','N');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('자기계발','N4','N');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('인문','N5','N');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('역사/문화','N6','N');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('소설','B1','B');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('시/에세이','B2','B');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('경제/경영','B3','B');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('자기계발','B4','B');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('인문','B5','B');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('역사/문화','B6','B');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('소설','E1','E');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('시/에세이','E2','E');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('경제/경영','E3','E');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('자기계발','E4','E');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('인문','E5','E');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('역사/문화','E6','E');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('소설','A1','A');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('시/에세이','A2','A');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('경제/경영','A3','A');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('자기계발','A4','A');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('인문','A5','A');
Insert into BOOKSTORE.LOW_CATEGORY (L_NAME,L_CODE,H_CODE) values ('역사/문화','A6','A');
REM INSERTING into BOOKSTORE.MEMBER
SET DEFINE OFF;
Insert into BOOKSTORE.MEMBER (MEMBER_ID,USERNAME,PASSWORD,EMAIL,ZIPCODE,ADDRESS1,ADDRESS2,MOBILEPHONE,REGDATE,U_STATUS) values ('soh445','신환탁','1234','soh445@naver.com','08325','서울 구로구 구일로2길 2','1206호','01091359118','2020/01/09',1);
Insert into BOOKSTORE.MEMBER (MEMBER_ID,USERNAME,PASSWORD,EMAIL,ZIPCODE,ADDRESS1,ADDRESS2,MOBILEPHONE,REGDATE,U_STATUS) values ('test1','test1','1111','test@test.com','12345','서울시','111','010-1111-1111','2020/01/08',1);
Insert into BOOKSTORE.MEMBER (MEMBER_ID,USERNAME,PASSWORD,EMAIL,ZIPCODE,ADDRESS1,ADDRESS2,MOBILEPHONE,REGDATE,U_STATUS) values ('hh12','이현희','1234','hh@naver.com','06267','서울 강남구 강남대로 238-3','111','01011111111','2020/01/13',1);
Insert into BOOKSTORE.MEMBER (MEMBER_ID,USERNAME,PASSWORD,EMAIL,ZIPCODE,ADDRESS1,ADDRESS2,MOBILEPHONE,REGDATE,U_STATUS) values ('soh112','신환탁','1234','soh445@naver.com','06120','서울 강남구 강남대로 476','1234','01091359118','2020/01/15',1);
Insert into BOOKSTORE.MEMBER (MEMBER_ID,USERNAME,PASSWORD,EMAIL,ZIPCODE,ADDRESS1,ADDRESS2,MOBILEPHONE,REGDATE,U_STATUS) values ('bbangaro','김서나','1004','suna@suna','15831','경기도 수원시','내집','010-5047-7022','2020/01/08',1);
Insert into BOOKSTORE.MEMBER (MEMBER_ID,USERNAME,PASSWORD,EMAIL,ZIPCODE,ADDRESS1,ADDRESS2,MOBILEPHONE,REGDATE,U_STATUS) values ('admin','관리자','admin','admin@admin.com','00000','서울시','000','000','2020/01/10',0);
Insert into BOOKSTORE.MEMBER (MEMBER_ID,USERNAME,PASSWORD,EMAIL,ZIPCODE,ADDRESS1,ADDRESS2,MOBILEPHONE,REGDATE,U_STATUS) values ('suna','서나','1004','suna@suna','06313','서울 강남구 논현로 4','비트캠프','01050477022','2020/01/13',1);
REM INSERTING into BOOKSTORE.NOTICE
SET DEFINE OFF;
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (19,'232323','232323','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (20,'sadsag','gsfsdf','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (6,'테스트2','테스트내용입니다','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (7,'111','111','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (8,'111','111','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (9,'222','222','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (10,'333','333','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (11,'333','333','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (12,'333','333','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (13,'222','222','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (84,'테스트 이미지 여러개','여러개 이미지','20/01/15','010.jpg',1);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (21,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (22,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (23,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (24,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (25,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (26,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (27,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (28,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (29,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (30,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (31,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (32,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (33,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (34,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (35,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (36,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (37,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (38,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (39,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (40,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (41,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (42,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (43,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (44,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (45,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (46,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (47,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (48,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (49,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (50,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (51,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (52,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (53,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (54,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (55,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (56,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (57,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (58,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (59,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (60,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (61,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (62,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (63,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (64,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (65,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (66,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (67,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (68,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (69,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (70,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (71,'테스트3','테스트내용','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (83,'ㅣㅣ이이잉','1231321321','20/01/15','8.jpg',1);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (85,'다시 테스트 여러개 이미지','으응','20/01/15','75.jpg',1);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (86,'여러개 파일 디비','여러개 파일 디비','20/01/15','null70.jpg71.jpg72.jpg',1);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (87,'여러개 파일 디비','여러개 파일 디비','20/01/15','null6.jpg9.jpg010.jpg',1);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (88,'여러개 파일 디비','여러개 파일 디비','20/01/15','06.jpg6.jpg9.jpg010.jpg',1);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (90,'마일리지 사용안내','ㅇㅇ','20/01/15','1.jpg,02.jpg,2.jpg,03.jpg,',1);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (14,'wewew','23232','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (15,'2323','232323','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (16,'qwqw','qeqe','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (17,'qwqw','qeqe','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (18,'qwqw','qeqe','20/01/09',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (82,'마일리지 사용안내','현재 마일리지 잔액은 2월1일을 기준으로 모두 소멸 예정이니 이점 참고하여 모두 사용해 주시길 바랍니다.','20/01/14',null,null);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (89,'자르기 테스트','자르기 테스트','20/01/15','2.jpg,03.jpg,06.jpg,6.jpg,',1);
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE,UPLOAD,B_TYPE) values (92,'cdsd','asda','20/01/15','5.jpg,06.jpg,09.jpg,9.jpg,',1);
REM INSERTING into BOOKSTORE.ORDERS
SET DEFINE OFF;
REM INSERTING into BOOKSTORE.QNA
SET DEFINE OFF;
Insert into BOOKSTORE.QNA (Q_NUM,MEMBER_ID,USERNAME,PASSWORD,SUBJECT,CATEGORY,UPLOAD,B_CODE,B_TYPE,REGDATE) values (5,'test1','test1','1111','테스트','결제/결제수단','펭수.png','4',1,to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.QNA (Q_NUM,MEMBER_ID,USERNAME,PASSWORD,SUBJECT,CATEGORY,UPLOAD,B_CODE,B_TYPE,REGDATE) values (7,'test1','test1','1111','테스트','반품/교환','ㅎㅎㄴㅁ.jpg','4',1,to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.QNA (Q_NUM,MEMBER_ID,USERNAME,PASSWORD,SUBJECT,CATEGORY,UPLOAD,B_CODE,B_TYPE,REGDATE) values (9,'test1','test1','1111','테스트','주문/취소','800x0.jpg','4',1,to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.QNA (Q_NUM,MEMBER_ID,USERNAME,PASSWORD,SUBJECT,CATEGORY,UPLOAD,B_CODE,B_TYPE,REGDATE) values (11,'test1','test1','1111','테스트','결제/결제수단','ㅎㅎㄴㅁ.jpg','4',1,to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.QNA (Q_NUM,MEMBER_ID,USERNAME,PASSWORD,SUBJECT,CATEGORY,UPLOAD,B_CODE,B_TYPE,REGDATE) values (14,'admin','관리자','admin','테스트','배송','800x0.jpg','4',1,to_date('2020/01/13','YYYY/MM/DD'));
Insert into BOOKSTORE.QNA (Q_NUM,MEMBER_ID,USERNAME,PASSWORD,SUBJECT,CATEGORY,UPLOAD,B_CODE,B_TYPE,REGDATE) values (8,'test1','test1','1111','테스트','결제/결제수단','800x0.jpg','4',1,to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.QNA (Q_NUM,MEMBER_ID,USERNAME,PASSWORD,SUBJECT,CATEGORY,UPLOAD,B_CODE,B_TYPE,REGDATE) values (4,'test1','test1','1111','테스트','반품/교환','ㅎㅎㄴㅁ1.jpg','4',1,to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.QNA (Q_NUM,MEMBER_ID,USERNAME,PASSWORD,SUBJECT,CATEGORY,UPLOAD,B_CODE,B_TYPE,REGDATE) values (2,'test1','test1','1111','수정 테스트','주문/취소','설레는시간_배경화면.jpg','4',1,to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.QNA (Q_NUM,MEMBER_ID,USERNAME,PASSWORD,SUBJECT,CATEGORY,UPLOAD,B_CODE,B_TYPE,REGDATE) values (1,'test1','test1','1111','테스트','배송','1.jpg','4',1,to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.QNA (Q_NUM,MEMBER_ID,USERNAME,PASSWORD,SUBJECT,CATEGORY,UPLOAD,B_CODE,B_TYPE,REGDATE) values (13,'hh12','이현희','1234','결제 오류 문제 해결해주세요!!','배송','ㅎㅎㄴㅁ.jpg','4',1,to_date('2020/01/13','YYYY/MM/DD'));
Insert into BOOKSTORE.QNA (Q_NUM,MEMBER_ID,USERNAME,PASSWORD,SUBJECT,CATEGORY,UPLOAD,B_CODE,B_TYPE,REGDATE) values (6,'test1','test1','1111','테스트','주문/취소','펭수.png','4',1,to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.QNA (Q_NUM,MEMBER_ID,USERNAME,PASSWORD,SUBJECT,CATEGORY,UPLOAD,B_CODE,B_TYPE,REGDATE) values (10,'test1','test1','1111','테스트','반품/교환','800x0.jpg','4',1,to_date('2020/01/10','YYYY/MM/DD'));
REM INSERTING into BOOKSTORE.REQUEST
SET DEFINE OFF;
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (17,'bbangaro','버즈 화보집 있나요?','1004','ㅂㅈ.jpg',to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (23,'bbangaro','잠 깨는 책','1004','네6.jpg',to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (15,'bbangaro','헤어스타일링 책','1004','김무스.jpg',to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (16,'bbangaro','힘들어','1004','나무늛.jpg',to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (24,'bbangaro','길벗은 취급 안하나여','1004','sp5.jpg',to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (25,'bbangaro','니혼고 스터디 관련 책','1004','sp4.jpg',to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (26,'bbangaro','자바의 정석 내려주세요 ㅜ','1004','sp7.jpg',to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (41,'bbangaro','외..','1004','다운로드.jfif',to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (64,'bbangaro','오늘은 너무 춥다','1004','default.gif',to_date('2020/01/13','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (72,'bbangaro','이러케','1004','일어나코딩해야지.jpg',to_date('2020/01/15','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (66,'bbangaro','오늘은 너무 춥다','1004','sp4.jpg',to_date('2020/01/13','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (1,'bbangaro','BTS잡지 언제 입고 되나요?','1004','bts.jpg',to_date('2020/01/08','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (67,'bbangaro','오늘은 너무 춥다','1004','default.gif',to_date('2020/01/13','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (70,'suna','세션받기 테스트','1004','default.gif',to_date('2020/01/13','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (19,'bbangaro','죽겠어요','1004','죽겠어요1.jpg',to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (20,'bbangaro','꼰대 퇴치법','1004','네.jpg',to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (21,'bbangaro','싫어하는 사람 처치하는 법','1004','네2.jpg',to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (69,'test1','test','1004','default.gif',to_date('2020/01/13','YYYY/MM/DD'));
REM INSERTING into BOOKSTORE.REVIEW
SET DEFINE OFF;
Insert into BOOKSTORE.REVIEW (REVIEW_NUM,MEMBER_ID,SUBJECT,UPLOAD,B_CODE,ORDERID,B_TYPE,PARENTNO) values (1,'soh445','굿',null,'1',null,1,0);
Insert into BOOKSTORE.REVIEW (REVIEW_NUM,MEMBER_ID,SUBJECT,UPLOAD,B_CODE,ORDERID,B_TYPE,PARENTNO) values (32,'soh112','123','1000001241.jpg','1',null,1,0);
Insert into BOOKSTORE.REVIEW (REVIEW_NUM,MEMBER_ID,SUBJECT,UPLOAD,B_CODE,ORDERID,B_TYPE,PARENTNO) values (2,'soh445','증언들',null,'1',null,1,0);
Insert into BOOKSTORE.REVIEW (REVIEW_NUM,MEMBER_ID,SUBJECT,UPLOAD,B_CODE,ORDERID,B_TYPE,PARENTNO) values (3,'soh445','증언들들들',null,'1',null,1,0);
Insert into BOOKSTORE.REVIEW (REVIEW_NUM,MEMBER_ID,SUBJECT,UPLOAD,B_CODE,ORDERID,B_TYPE,PARENTNO) values (4,'soh445','수상작치고는..',null,'1',null,1,2);
Insert into BOOKSTORE.REVIEW (REVIEW_NUM,MEMBER_ID,SUBJECT,UPLOAD,B_CODE,ORDERID,B_TYPE,PARENTNO) values (5,'soh445','증언들4',null,'1',null,1,3);
Insert into BOOKSTORE.REVIEW (REVIEW_NUM,MEMBER_ID,SUBJECT,UPLOAD,B_CODE,ORDERID,B_TYPE,PARENTNO) values (53,'soh112','아오아오아ㅘ러ㅏㅣㄹ','1000001032.jpg','1',null,1,0);
Insert into BOOKSTORE.REVIEW (REVIEW_NUM,MEMBER_ID,SUBJECT,UPLOAD,B_CODE,ORDERID,B_TYPE,PARENTNO) values (6,'soh445','전 재미있게',null,'1',null,1,4);
Insert into BOOKSTORE.REVIEW (REVIEW_NUM,MEMBER_ID,SUBJECT,UPLOAD,B_CODE,ORDERID,B_TYPE,PARENTNO) values (33,'soh112','123','10000012411.jpg','1',null,1,0);
Insert into BOOKSTORE.REVIEW (REVIEW_NUM,MEMBER_ID,SUBJECT,UPLOAD,B_CODE,ORDERID,B_TYPE,PARENTNO) values (54,'soh112','ㄹㅇㄴㄹ','10000013582.jpg','1',null,1,0);
Insert into BOOKSTORE.REVIEW (REVIEW_NUM,MEMBER_ID,SUBJECT,UPLOAD,B_CODE,ORDERID,B_TYPE,PARENTNO) values (36,'soh112','제목4123','10000010872.jpg','1',null,1,0);
Insert into BOOKSTORE.REVIEW (REVIEW_NUM,MEMBER_ID,SUBJECT,UPLOAD,B_CODE,ORDERID,B_TYPE,PARENTNO) values (28,'soh112','123','10000006993.jpg','1',null,1,0);
Insert into BOOKSTORE.REVIEW (REVIEW_NUM,MEMBER_ID,SUBJECT,UPLOAD,B_CODE,ORDERID,B_TYPE,PARENTNO) values (52,'soh112','아오아오','100000062814.jpg','1',null,1,0);
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
