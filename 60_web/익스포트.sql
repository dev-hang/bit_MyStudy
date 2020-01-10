--------------------------------------------------------
--  파일이 생성됨 - 금요일-1월-10-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence BK_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BOOKSTORE"."BK_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence QNA_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BOOKSTORE"."QNA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 3 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REQ_BOARD
--------------------------------------------------------

   CREATE SEQUENCE  "BOOKSTORE"."REQ_BOARD"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQNOTICE
--------------------------------------------------------

   CREATE SEQUENCE  "BOOKSTORE"."SEQNOTICE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
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
	"MEMBER_SID" NUMBER, 
	"B_TYPE" NUMBER, 
	"B_CODE" VARCHAR2(100 BYTE), 
	"PRODUCTS_COUNT" VARCHAR2(20 BYTE), 
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
	"WDATE" VARCHAR2(50 BYTE)
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
	"SUBJECT" VARCHAR2(20 BYTE), 
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
	"USERNAME" VARCHAR2(20 BYTE), 
	"PASSWORD" VARCHAR2(20 BYTE), 
	"SUBJECT" VARCHAR2(50 BYTE), 
	"R_CONTENT" CLOB, 
	"UPLOAD" VARCHAR2(100 BYTE), 
	"B_CODE" VARCHAR2(100 BYTE), 
	"ORDERID" VARCHAR2(100 BYTE), 
	"B_TYPE" NUMBER
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
REM INSERTING into BOOKSTORE.CART
SET DEFINE OFF;
REM INSERTING into BOOKSTORE.COMMENTS
SET DEFINE OFF;
Insert into BOOKSTORE.COMMENTS (REVIEW_NUM,Q_NUM,REQUEST_NUM,MEMBER_ID,CONTENT,PASSWORD,WRITER_NAME,C_IDX) values (null,1,null,'admin','답글입니다','admin','관리자','1');
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
Insert into BOOKSTORE.MEMBER (MEMBER_ID,USERNAME,PASSWORD,EMAIL,ZIPCODE,ADDRESS1,ADDRESS2,MOBILEPHONE,REGDATE,U_STATUS) values ('bbangaro','김서나','1004','suna@suna','15831','경기도 수원시','내집','010-5047-7022','2020/01/08',1);
Insert into BOOKSTORE.MEMBER (MEMBER_ID,USERNAME,PASSWORD,EMAIL,ZIPCODE,ADDRESS1,ADDRESS2,MOBILEPHONE,REGDATE,U_STATUS) values ('admin','관리자','admin','admin@admin.com','00000','서울시','000','000','2020/01/10',0);
REM INSERTING into BOOKSTORE.NOTICE
SET DEFINE OFF;
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (19,'232323','232323','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (20,'sadsag','gsfsdf','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (6,'테스트2','테스트내용입니다','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (7,'111','111','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (8,'111','111','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (9,'222','222','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (10,'333','333','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (11,'333','333','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (12,'333','333','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (13,'222','222','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (21,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (22,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (23,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (24,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (25,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (26,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (27,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (28,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (29,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (30,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (31,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (32,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (33,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (34,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (35,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (36,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (37,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (38,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (39,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (40,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (41,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (42,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (43,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (44,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (45,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (46,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (47,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (48,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (49,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (50,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (51,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (52,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (53,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (54,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (55,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (56,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (57,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (58,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (59,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (60,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (61,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (62,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (63,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (64,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (65,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (66,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (67,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (68,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (69,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (70,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (71,'테스트3','테스트내용','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (14,'wewew','23232','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (15,'2323','232323','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (16,'qwqw','qeqe','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (17,'qwqw','qeqe','20/01/09');
Insert into BOOKSTORE.NOTICE (N_NUM,SUBJECT,CONTENT,WDATE) values (18,'qwqw','qeqe','20/01/09');
REM INSERTING into BOOKSTORE.ORDERS
SET DEFINE OFF;
REM INSERTING into BOOKSTORE.QNA
SET DEFINE OFF;
Insert into BOOKSTORE.QNA (Q_NUM,MEMBER_ID,USERNAME,PASSWORD,SUBJECT,CATEGORY,UPLOAD,B_CODE,B_TYPE,REGDATE) values (3,'test1','test1','1111','테스트','주문/취소','그라폴리오용2.jpg','4',1,to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.QNA (Q_NUM,MEMBER_ID,USERNAME,PASSWORD,SUBJECT,CATEGORY,UPLOAD,B_CODE,B_TYPE,REGDATE) values (5,'test1','test1','1111','테스트','결제/결제수단','펭수.png','4',1,to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.QNA (Q_NUM,MEMBER_ID,USERNAME,PASSWORD,SUBJECT,CATEGORY,UPLOAD,B_CODE,B_TYPE,REGDATE) values (7,'test1','test1','1111','테스트','반품/교환','ㅎㅎㄴㅁ.jpg','4',1,to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.QNA (Q_NUM,MEMBER_ID,USERNAME,PASSWORD,SUBJECT,CATEGORY,UPLOAD,B_CODE,B_TYPE,REGDATE) values (9,'test1','test1','1111','테스트','주문/취소','800x0.jpg','4',1,to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.QNA (Q_NUM,MEMBER_ID,USERNAME,PASSWORD,SUBJECT,CATEGORY,UPLOAD,B_CODE,B_TYPE,REGDATE) values (11,'test1','test1','1111','테스트','결제/결제수단','ㅎㅎㄴㅁ.jpg','4',1,to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.QNA (Q_NUM,MEMBER_ID,USERNAME,PASSWORD,SUBJECT,CATEGORY,UPLOAD,B_CODE,B_TYPE,REGDATE) values (8,'test1','test1','1111','테스트','결제/결제수단','800x0.jpg','4',1,to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.QNA (Q_NUM,MEMBER_ID,USERNAME,PASSWORD,SUBJECT,CATEGORY,UPLOAD,B_CODE,B_TYPE,REGDATE) values (4,'test1','test1','1111','테스트','반품/교환','ㅎㅎㄴㅁ1.jpg','4',1,to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.QNA (Q_NUM,MEMBER_ID,USERNAME,PASSWORD,SUBJECT,CATEGORY,UPLOAD,B_CODE,B_TYPE,REGDATE) values (2,'test1','test1','1111','테스트','배송','설레는시간_배경화면2.jpg','4',1,to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.QNA (Q_NUM,MEMBER_ID,USERNAME,PASSWORD,SUBJECT,CATEGORY,UPLOAD,B_CODE,B_TYPE,REGDATE) values (1,'test1','test1','1111','테스트','배송','1.jpg','4',1,to_date('2020/01/10','YYYY/MM/DD'));
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
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (1,'bbangaro','BTS잡지 언제 입고 되나요?','1004','bts.jpg',to_date('2020/01/08','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (19,'bbangaro','죽겠어요','1004','죽겠어요1.jpg',to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (20,'bbangaro','꼰대 퇴치법','1004','네.jpg',to_date('2020/01/10','YYYY/MM/DD'));
Insert into BOOKSTORE.REQUEST (REQUEST_NUM,MEMBER_ID,SUBJECT,PASSWORD,UPLOAD,REGDATE) values (21,'bbangaro','싫어하는 사람 처치하는 법','1004','네2.jpg',to_date('2020/01/10','YYYY/MM/DD'));
REM INSERTING into BOOKSTORE.REVIEW
SET DEFINE OFF;
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
  ALTER TABLE "BOOKSTORE"."CART" MODIFY ("MEMBER_SID" NOT NULL ENABLE);
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
  ALTER TABLE "BOOKSTORE"."REVIEW" MODIFY ("ORDERID" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."REVIEW" MODIFY ("B_CODE" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."REVIEW" MODIFY ("R_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."REVIEW" MODIFY ("SUBJECT" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."REVIEW" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "BOOKSTORE"."REVIEW" MODIFY ("USERNAME" NOT NULL ENABLE);
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
