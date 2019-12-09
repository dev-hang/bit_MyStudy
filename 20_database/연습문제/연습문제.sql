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


--1. 전체 영화 목록 중에서 대여 기간이 3일인 영화의 번호, 제목, 대여료와 대여기간을 보고싶다면?
SELECT FILM_ID, TITLE, RENTAL_RATE, RENTAL_DURATION 
  FROM FILM
WHERE RENTAL_DURATION = 3;

--2. 1번 가게의 손님의 고객 번호, 이름과 메일 리스트를 뽑아서 이름 순으로 정렬해보면?
SELECT C.CUSTOMER_ID, C.FIRST_NAME, C.EMAIL
  FROM CUSTOMER C, STORE S
 WHERE S.STORE_ID = 1
 ORDER BY C.FIRST_NAME;

--3. 대여기간이 3, 4, 5일을 제외한 영화 리스트를 정렬해보자. (영화 번호, 제목, 대여료, 대여기간 찾기)
SELECT FILM_ID, TITLE, RENTAL_RATE, RENTAL_DURATION
  FROM FILM 
 WHERE RENTAL_DURATION NOT IN (3, 4, 5);

