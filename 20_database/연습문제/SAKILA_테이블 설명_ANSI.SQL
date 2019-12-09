DESC PAYMENT

/*

테이블 목록

1. 배우 테이블

2. 주소 테이블

3. 카테고리 테이블

4. 도시 테이블

5. 국가 테이블

6. 고객 테이블

7. 필름 테이블

8. 필름 배우 테이블

9. 필름 카테고리 테이블

10. 필름 설명 테이블

11. 재고 테이블

12. 언어 테이블

13. 지불 테이블

14. 대여 테이블

15. 직원 테이블

16. 상점 테이블


1. 배우테이블

	TABLE NAME : ACTOR

	설명 : 모든 배우에 대한 정보가 나열됩니다.

		ACTOR_ID		: 테이블에서 각 액터를 고유하게 식별하는 데 사용되는 대리 기본 키입니다.

		FIRST_NAME	: 배우의 이름입니다.

		LAST_NAME		: 배우의 성입니다.

		LAST_UPDATE	:	행이 생성되거나 가장 최근에 업데이트 된 시간입니다.

2. 주소 테이블

	TABLE NAME : ADDRESS

	설명 : 고객, 직원 및 상점에 대한 주소 정보가 있습니다.

	테이블 기본 키는 customer , staff 및 store 테이블에서 외래 키로 나타납니다.

		ADDRESS_ID	: 테이블의 각 주소를 고유하게 식별하는 데 사용되는 대리 기본 키입니다.

		ADDRESS 		:	address 의 첫 줄.

		ADDRESS2		: 주소의 선택적 두 번째 줄.

		DISTRICT		: 주소의 지역으로, 주,도, 현 등일 수 있습니다.

		CITY_ID 		: city 테이블을 가리키는 외래 키.

		POSTAL_CODE : 주소의 우편 번호 또는 우편 번호 (해당되는 경우).

		PHONE 			: 주소의 전화 번호입니다.

		LAST_UPDATE	: 행이 생성되거나 가장 최근에 업데이트 된 시간입니다.

3. 카테고리 테이블

	TABLE NAME : CATEGORY

	설명 : 영화에 할당 할 수있는 카테고리가 나열됩니다.

	카테고리 테이블은 film_category 테이블을 통해 film 테이블에 조인됩니다.

		CATEGORY_ID	: 테이블의 각 범주를 고유하게 식별하는 데 사용되는 대리 기본 키입니다.

		NAME				: 카테고리의 이름입니다.

		LAST_UPDATE	: 행이 생성되거나 가장 최근에 업데이트 된 시간입니다.

4. 도시 테이블

	TABLE NAME : CITY

	설명 : 도시 목록이 있습니다.

	ADDRESS 테이블에서 외래 키로 참조되며 외래 키를 사용하여 COUNTRY 테이블을 나타냅니다.

		CITY_ID			: 각 도시를 고유하게 식별하는 데 사용되는 대리 기본 키입니다.

		CITY				: 도시이름

		COUNTRY_ID	: 도시가 속한 국가를 식별하는 외래 키.

		LAST_UPDATE : 행이 생성되거나 가장 최근에 업데이트 된 시간입니다.

5. 국가 테이블

	TABLE NAME : COUNTRY

	설명 : 국가 목록이 포함되어 있습니다.

	COUNTRY 테이블은 CITY 테이블에서 외래 키로 참조됩니다.

		COUNTRY 테이블은 CITY 테이블에서 외래 키로 참조됩니다.

		COUNTRY_ID	: 각 국가를 고유하게 식별하는 데 사용되는 대리 기본 키입니다.

		COUNTRY			: 국가이름

		LAST_UPDATE	: 행이 생성되거나 가장 최근에 업데이트 된 시간입니다.

6. 고객 테이블

	TABLE NAME : CUSTOMER

	설명 : 모든 고객의 목록이 있습니다.

	PAYMENT 및 RENTAL 테이블에서 참조되며 외래 키를 사용하여 ADDRESS 및 STORE 테이블을 나타냅니다.

		CUSTOMER_ID	: 각 고객을 고유하게 식별하는 데 사용되는 대리 기본 키입니다.

		STORE_ID		: 고객의 “ 홈 스토어 ”를 식별하는 외래 키 . ” 고객이 상점에서만 임대하는 것이 아니라 일반적으로 쇼핑하는 상점입니다.

		FIRST_NAME	: 고객의 이름입니다.

		LAST_NAME		: 고객의 성입니다.

		EMAIL				: 고객의 이메일 주소입니다.

		ADDRESS_ID	: ADDRESS 테이블에서 고객의 주소를 식별하는 외래 키.

		ACTIVE			: 고객이 활성 고객인지 여부를 나타냅니다. 이것을 FALSE 설정하면 고객을 완전히 삭제하는 대신 사용할 수 있습니다. 대부분의 쿼리에는 WHERE active = TRUE 절이 있어야 WHERE active = TRUE .

		CREATE_DATE	: 고객이 시스템에 추가 된 날짜입니다. 이 날짜는 INSERT 동안 트리거를 사용하여 자동으로 설정됩니다.

		LAST_UPDATE	: 행이 생성되거나 가장 최근에 업데이트 된 시간입니다.

7. 필름 테이블

	TABLE NAME : FILM

	설명 : 매장에 재고가있는 모든 영화의 목록입니다. 각 필름의 실제 재고 사본이 inventory 표에 표시됩니다.

	LANGUAGE 테이블을 FILM_CATEGORY , FILM_ACTOR 및 INVENTORY 테이블에 의해 참조됩니다.

		FILM_ID								: 각 영화를 고유하게 식별하는 데 사용되는 대리 기본 키입니다.

		TITLE									: 영화의 제목입니다.

		DESCRIPTION						: 영화에 대한 간단한 설명 또는 줄거리 요약.

		RELEASE_YEAR					: 영화가 출시 된 연도입니다.

		LANGUAGE_ID						: LANGUAGE 테이블을 가리키는 외래 키. 영화의 언어를 식별합니다.

		ORIGINAL_LANGUAGE_ID	: LANGUAGE 테이블을 가리키는 외래 키. 영화의 원래 언어를 식별합니다. 영화가 새로운 언어로 더빙되었을 때 사용됩니다.

		RENTAL_DURATION				: 대여 기간 (일)입니다.

		RENTAL_RATE						: RENTAL_DURATION 열에 지정된 기간 동안 영화 대여 비용.

		LENGTH								: 필름의 상영시간 입니다.

		REPLACEMENT_COST			: 필름이 반송되지 않거나 손상된 상태로 반송 된 경우 고객에게 청구되는 금액입니다.

		RATING								: 영화에 지정된 등급. G , PG , PG-13 , R 또는 NC-17 중 하나 일 수 있습니다.

		SPECIAL_FEATURES			: DVD에 포함 된 일반적인 특수 기능을 나열합니다. Trailers , Commentaries , Deleted Scenes , Behind the Scenes Deleted Scenes 중 하나 이상일 수 있습니다.

		LAST_UPDATE						: 행이 생성되거나 가장 최근에 업데이트 된 시간입니다.

8. 필름 배우 테이블

	TABLE NAME : FILM_ACTOR

	설명 : 영화와 배우 간의 다 대다 관계를 지원하는 데 사용됩니다. 주어진 영화의 각 배우에 대해 배우와 영화를 나열하는 FILM_ACTOR 테이블에 한 행이 있습니다.

	FILM_ACTOR 테이블은 외래 키를 사용하는 FILM 및 ACTOR 테이블을 나타냅니다.

		ACTOR_ID		:	액터를 식별하는 외래 키.

		FILM_ID			: 영화를 식별하는 외래 키.

		LAST_UPDATE	: 행이 생성되거나 가장 최근에 업데이트 된 시간입니다.

9. 필름 카테고리 테이블

	TABLE NAME : FILM_CATEGORY

	설명 : 영화와 범주 간의 다 대다 관계를 지원하는 데 사용됩니다. 영화에 적용된 각 범주에 대해 FILM_CATEGORY 테이블에는 범주와 영화가 나열된 행이 하나씩 있습니다.

	FILM_CATEGORY 테이블은 외래 키를 사용하는 FILM 및 CATEGORY 테이블을 나타냅니다.

		FILM_ID			: 영화를 식별하는 외래 키.

		CATEGORY_ID	: CATEGORY_ID 식별하는 외래 키.

		LAST_UPDATE	: 행이 생성되거나 가장 최근에 업데이트 된 시간입니다.

10. 필름 설명 테이블

	TABLE NAME : FILM_TEXT

	설명 : 각 영화에 대한 설명 테이블

		FILM_ID			: 각 영화를 고유하게 식별하는 데 사용되는 대리 기본 키입니다.

		TITLE				: 영화의 제목입니다.

		DESCRIPTION	: 영화에 대한 간단한 설명 또는 줄거리 요약.

11. 재고 테이블

	TABLE NAME : INVENTORY

	설명 : 특정 상점에서 주어진 영화의 각 사본에 대해 하나의 행이 있습니다.

	INVENTORY 테이블은 외래 키를 사용하여 FILM 및 STORE 테이블을 나타내며 RENTAL 테이블에서 참조합니다.

		INVENTORY_ID	: inventory_id 각 항목을 고유하게 식별하는 데 사용되는 대리 기본 키입니다.

		FILM_ID				: 이 항목이 나타내는 필름을 가리키는 외래 키.

		STORE_ID			: 이 항목을 store_id 하는 상점을 가리키는 외래 키.

		LAST_UPDATE		: 행이 생성되거나 가장 최근에 업데이트 된 시간입니다.

12. 언어 테이블

	TABLE NAME : LANGUAGE

	설명 : 영화가 언어 및 원래 언어 값에 대해 가질 수있는 가능한 언어를 나열하는 조회 테이블입니다.

	LANGUAGE 테이블은 FILM 테이블에 의해 참조됩니다.

		LANGUAGE_ID	: 각 언어를 고유하게 식별하는 데 사용되는 대리 기본 키입니다.

		NAME				: 언어의 영어 이름입니다.

		LAST_UPDATE	: 행이 생성되거나 가장 최근에 업데이트 된 시간입니다.

13. 지불 테이블

	TABLE NAME : PAYMEN

	설명 : 고객이 지불 한 각 지불과 지불 금액 및 임대료 (해당되는 경우)와 같은 정보가 기록됩니다.

	PAYMENT 테이블은 CUSTOMER , RENTAL 및 STAFF 테이블을 나타냅니다.

  	PAYMENT_ID		:	각 지불을 고유하게 식별하는 데 사용되는 대리 기본 키.

		CUSTOMER_ID		:	결제 잔액이 적용되는 고객입니다. 이것은 customer 테이블에 대한 외래 키 참조입니다.

		STAFF_ID			:	지불을 처리 한 직원. staff 테이블에 대한 외래 키 참조입니다.

		RENTAL_ID			:	지불이 적용되는 임대. 일부 결제는 미결제 요금이며 렌탈과 직접 관련이 없을 수 있으므로 선택 사항입니다.

		AMOUNT				: 지불 금액

		PAYMENT_DATE	: 지불이 처리 된 날짜입니다.

		LAST_UPDATE		: 행이 생성되거나 가장 최근에 업데이트 된 시간입니다.

14. 대여 테이블

	TABLE NAME : PAYMENT

	설명 : 고객이 지불 한 각 지불과 지불 금액 및 임대료 (해당되는 경우)와 같은 정보가 기록됩니다.

	PAYMENT 테이블은 CUSTOMER , RENTAL 및 STAFF 테이블을 나타냅니다.

		PAYMENT_ID		: 각 지불을 고유하게 식별하는 데 사용되는 대리 기본 키.

		CUSTOMER_ID		: 결제 잔액이 적용되는 고객입니다. 이것은 customer 테이블에 대한 외래 키 참조입니다.

		STAFF_ID			: 지불을 처리 한 직원. staff 테이블에 대한 외래 키 참조입니다.

		RENTAL_ID			: 지불이 적용되는 임대. 일부 결제는 미결제 요금이며 렌탈과 직접 관련이 없을 수 있으므로 선택 사항입니다.

		AMOUNT				: 지불 금액

		PAYMENT_DATE	: 지불이 처리 된 날짜입니다.

		LAST_UPDATE		: 행이 생성되거나 가장 최근에 업데이트 된 시간입니다.

15. 직원 테이블

	TABLE NAME : STAFF

	설명 : 이메일 주소, 로그인 정보 및 사진에 대한 정보를 포함하여 모든 직원이 나열됩니다.

	STAFF 테이블은 외래 키를 사용하는 STORE 및 ADDRESS 테이블을 나타내며, RENTAL , PAYMENT 및 STORE 테이블이 참조합니다.

		STAFF_ID 		: 직원을 고유하게 식별하는 대리 기본 키입니다.

		FIRST_NAME 	: 직원의 이름입니다.

		LAST_NAME 	: 직원의 성입니다.

		ADDRESS_ID	: address 테이블의 직원 주소에 대한 외래 키.

		PICTURE 		: 직원의 사진이 포함 된 BLOB .

		EMAIL 			: 직원의 이메일 주소.

		STORE_ID 		: 직원의 “ 홈 스토어 ” . 직원은 다른 상점에서 일할 수 있지만 일반적으로 나열된 상점에 지정됩니다.

		ACTIVE 			: 현재 직원인지 여부. 직원이 행을 떠나면이 테이블에서 행이 삭제되지 않고 대신이 열이 FALSE 로 설정됩니다.

		USERNAME 		: 직원이 임대 시스템에 액세스하는 데 사용하는 사용자 이름입니다.

		PASSWORD 		: 직원이 임대 시스템에 액세스하기 위해 사용하는 비밀번호입니다. 비밀번호는 SHA1() 함수를 사용하여 해시로 저장해야합니다.

		LAST_UPDATE	: 행이 생성되거나 가장 최근에 업데이트 된 시간입니다.

16. 상점 테이블

	TABLE NAME : STORE

	설명 : 시스템의 모든 상점을 나열합니다. 모든 재고는 특정 상점에 지정되며 직원과 고객에게는 " 홈 상점 " 이 지정됩니다.

	STORE 테이블은 외래 키를 사용하는 STAFF 및 ADDRESS 테이블을 말하며 STAFF , CUSTOMER 및 INVENTORY 테이블에 의해 참조됩니다.

		STORE_ID					: 상점을 고유하게 식별하는 대리 기본 키입니다.

		MANAGER_STAFF_ID	: 이 상점의 관리자를 식별하는 외래 키입니다.

		ADDRESS_ID 				: 이 상점의 주소를 식별하는 외래 키.

		LAST_UPDATE 			: 행이 생성되거나 가장 최근에 업데이트 된 시간입니다.

*/

/*
실습문제

1. 전체 영화 목록 중에서 대여 기간이 3일인 영화의 번호, 제목, 대여료와 대여기간을 보고싶다면?

2. 1번 가게의 손님의 고객 번호, 이름과 메일 리스트를 뽑아서 이름 순으로 정렬해보면?

3. 대여기간이 3, 4, 5일을 제외한 영화 리스트를 정렬해보자. (영화 번호, 제목, 대여료, 대여기간 찾기)

4. 영화 설명에 ‘thrilling’이 있는 영화를 찾아보자! (영화 제목, 설명)

5. 다양한 테이블의 데이터(country, city, address)를 활용해서 한국 도시 주소 찾아보기

6. 중국을 배경으로 한 영화를 찾아 제목을 ‘China_Movie’로 변경하고 대여료가 낮은 순서대로 정렬하기 (영화 번호, 제목, 설명, 대여료)

7. 영화 등급의 종류에는 어떤 것이 있을까?

8. address 테이블에서 address2 컬럼 중 null값을 찾아보자

9. address 테이블에서 전체 행의 개수를, address2 컬럼에는 몇 개의 데이터(=행의 개수)가 들어가 있는지 구해 보자

10. film 테이블의 대여기간 컬럼에서 데이터의 개수(=행의 개수)와, 이 중 중복을 제거한 데이터의 개수를 구해 보자

11. film 테이블에서 모든 영화 상영시간의 합을 구하면? (+시간 단위로 나눈 값을 entire_hour로 새롭게 지정해주기)

12. Customer 테이블에서 활성여부(active)가 ‘1’인 손님들의 수를 가게 별로 나누어 결과 확인하기 (GROUP BY)

13. 영화 테이블에서 (1)각 영화 등급 별 영화 개수를 구한 후 ‘number’로 별칭을 지정하고, (2)결과가 180이상인 값을 (3)개수(number)를 기준으로 정렬하기 (GROUP BY/HAVING)

14. Customer 테이블에서 active 컬럼에 속한 데이터의 값에 따라 customer_id, first_name, last_name의 활성/비활성 여부를 나누어 표시하기 (active 값이 1일 경우 active, 0일 경우 inactive, Status로 별칭)

15. Film 테이블에서 대여 기간(rental_duration)에 속한 데이터의 값에 따라 title의 길이를 나누어 표시하기 (rental_duration이 3이하일 경우 ‘SHORT’, 4이상일 경우 ‘MEDIUM’, 6이상일 경우 'LONG', Duration으로 별칭)

16. country 테이블과 city 테이블을 country_id를 기준으로 결합해보자!
		(country_id, country, city_id, city 컬럼의 데이터를 선택해서, 각 국가에 속한 도시명을 한 눈에 확인하기)

17. film, film_category, category 테이블을 film_id와 category_id를 기준으로 결합해서 결과를 film_id로 오름차순 정렬해보자!
		(film_id, title, category_id, name 컬럼의 데이터 선택해서, 각 영화에 해당하는 장르를 한 테이블에서 확인하기)

18. rental, inventory 테이블을 inventory_id를 기준으로 LEFT JOIN을 활용해서 결합해보자!
		(rental_id, customer_id, film_id, inventory_id 컬럼의 데이터를 선택해서, 대여 기록 별 손님 번호/영화 번호/재고 번호를 한 눈에 확인하기)

19. rental, inventory 테이블을 inventory_id를 기준으로 RIGHT JOIN을 활용해서 결합해보자!
		(rental_id, customer_id, film_id, inventory_id 컬럼의 데이터를 선택해서, 재고 목록 별 손님 번호/영화 번호/대여 기록을 한 눈에 확인하기)

===============================

조인 활용 예제

===============================

1. "Comedy", "Sports", "Family" 카테고리에 포함되는 각각의 영화 수 구하기

2. 카테고리에 포함되는 각각의 영화 수가 70 이상인 카테고리 출력하기

3.특정 카테고리에 포함된 영화들의 렌탈 횟수 구해보기
	("Comedy", "Sports", "Family" 카테고리에 포함되는 영화들의 렌탈 횟수)

====================================================

복잡한 예제

1.film테이블에서 2006년이나 2007년에 출시되었으면서, PG등급이거나, G등급의 영화제목을 모두 알려주세요

2. film테이블에서 rating (등급)으로 그룹을 묶어서, 각 등급별 영화 갯수와 rating (등급), 각 그룹별 평균 rental_rate (렌탈 비용) 출력하되, 영화 갯수와 평균 렌탈 비용은 각각 total_films, avg_rental_rate 으로 출력하고, avg_rental_rate이 높은 순으로 출력하시오

*/


/*

해당 DMP 파일 import 하는 법

1. 데이타베이스에 해당 유저가 있어야 함..

	cmd 실행 후 sqlplus system/manager 실행하여 sql 접속
	
	CREATE TABLESPACE sakila DATAFILE 'C:\oraclexe\app\oracle\oradata\XE\sakila.dbf' SIZE  500M

	경로란 각 유저마다 다르지만. 오라클이 설치된 폴더에서 확장자가 dbf가 들어 있는 곳일 말함.



2.CREATE USER sakila IDENTIFIED BY sakila DEFAULT TABLESPACE sakila TEMPORARY TABLESPACE TEMP;

3. GRANT connect, resource, dba TO sakila;


cmd 실행 후.

imp userid=sakila/sakila file='해당위치\sakila_xe.dmp';


*/