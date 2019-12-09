/* ** 실습문제 : HR유저(DB)에서 요구사항 해결 **********
-- 사번(employee_id)이 100인 직원 정보 전체 보기
-- 월급(salary)이 15000 이상인 직원의 모든 정보 보기
-- 월급이 15000 이상인 사원의 사번, 이름(LAST_NAME), 입사일(hire_date), 월급여 정보 보기
-- 월급이 10000 이하인 사원의 사번, 이름(LAST_NAME), 입사일, 월급여 정보 보기
---- (급여가 많은 사람부터)
-- 이름(first_name)이 john인 사원의 모든 정보 조회
-- 이름(first_name)이 john인 사원은 몇 명인가?
-- 2008년에 입사한 사원의 사번, 성명('first_name last_name'), 월급여 정보 조회
---- 성명 출력예) 'Steven King'
-- 월급여가 20000~30000 구간인 직원 사번, 성명(last_name first_name), 월급여 정보 조회
-- 관리자ID(MANAGER_ID)가 없는 사람 정보 조회
-- 직종(job_id)코드 'IT_PROG'에서 가장 많은 월급여는 얼마
-- 직종별 최대 월급여 검색
-- 직종별 최대 월급여 검색하고, 최대 월급여가 10000이상인 직종 조회
-- 직종별 평균급여 이상인 직원 조회
--------
-- 직종별 최대 월급여를 받는 직원의 사번, 성명, 월급여, 직종(직무) 코드 조회
-- 부서별 최대 월급여를 받는 직원의 사번, 성명, 월급여, 부서코드, 부서명 정보 조회
-- 부서별 인원수, 급여합계, 평균급여, 가장 많은 급여, 가장 적은 급여
-- 직원들의 매니저 이름을 함께 조회(사번, 성명, 부서코드, 매니저사번, 매니저성명)
**********************************************************/
-- 사번(employee_id)이 100인 직원 정보 전체 보기
SELECT * FROM EMPLOYEES WHERE EMPLOYEE_ID = 100;

-- 월급(salary)이 15000 이상인 직원의 모든 정보 보기
SELECT * FROM EMPLOYEES WHERE SALARY >= 15000;

-- 월급이 15000 이상인 사원의 사번, 이름(LAST_NAME), 입사일(hire_date), 월급여 정보 보기
SELECT EMPLOYEE_ID, LAST_NAME, HIRE_DATE, SALARY
  FROM EMPLOYEES WHERE SALARY >= 15000; 

-- 월급이 10000 이하인 사원의 사번, 이름(LAST_NAME), 입사일, 월급여 정보 보기
---- (급여가 많은 사람부터)
SELECT EMPLOYEE_ID, LAST_NAME, HIRE_DATE, SALARY
  FROM EMPLOYEES WHERE SALARY <= 10000
ORDER BY SALARY DESC;

-- 이름(first_name)이 john인 사원의 모든 정보 조회
SELECT * FROM EMPLOYEES WHERE FIRST_NAME = INITCAP('JOHN');
SELECT * FROM EMPLOYEES WHERE UPPER(FIRST_NAME) = UPPER('JOHN');

-- 이름(first_name)이 john인 사원은 몇 명인가?
SELECT COUNT(*) FROM EMPLOYEES WHERE  FIRST_NAME = INITCAP('JOHN');

-- 2008년에 입사한 사원의 사번, 성명('first_name last_name'), 월급여 정보 조회
---- 성명 출력예) 'Steven King'
SELECT EMPLOYEE_ID, FIRST_NAME || ' ' || LAST_NAME AS FULLNAME, SALARY 
  FROM EMPLOYEES WHERE TO_CHAR(HIRE_DATE, 'YYYY') = '2008';
  
SELECT EMPLOYEE_ID, FIRST_NAME || ' ' || LAST_NAME AS FULLNAME, SALARY 
  FROM EMPLOYEES 
WHERE HIRE_DATE BETWEEN TO_DATE('2008/01/01', 'YYYY/MM/DD')
                                             AND TO_DATE('2008/12/31', 'YYYY/MM/DD');  

-- 월급여가 20000~30000 구간인 직원 사번, 성명(last_name first_name), 월급여 정보 조회
SELECT EMPLOYEE_ID, FIRST_NAME || ' ' || LAST_NAME AS FULLNAME, SALARY 
  FROM EMPLOYEES WHERE SALARY BETWEEN 20000 AND 30000;

-- 관리자ID(MANAGER_ID)가 없는 사람 정보 조회
SELECT * FROM EMPLOYEES WHERE MANAGER_ID IS NULL;

-- 직종(job_id)코드 'IT_PROG'에서 가장 많은 월급여는 얼마
SELECT MAX(SALARY) FROM EMPLOYEES WHERE JOB_ID = 'IT_PROG';

-- 직종별 최대 월급여 검색
SELECT JOB_ID, MAX(SALARY) FROM EMPLOYEES GROUP BY JOB_ID;

-- 직종별 최대 월급여 검색하고, 최대 월급여가 10000이상인 직종 조회
SELECT DISTINCT E.JOB_ID, (SELECT MAX(SALARY) FROM EMPLOYEES WHERE JOB_ID = E.JOB_ID) MAX
  FROM EMPLOYEES E
WHERE (SELECT MAX(SALARY) FROM EMPLOYEES WHERE JOB_ID = E.JOB_ID) >= 10000;

SELECT JOB_ID, MAX(SALARY) MAX_SALARY FROM EMPLOYEES
GROUP BY JOB_ID
HAVING MAX(SALARY) >= 10000 --HAVING절에는 별칭 사용 못함
ORDER BY MAX_SALARY;

SELECT *
  FROM (SELECT JOB_ID, MAX(SALARY) MAX_SALARY
          FROM employees
         GROUP BY JOB_ID
       ) A
 WHERE MAX_SALARY >= 10000
 ORDER BY MAX_SALARY
;    
-- 직종별 평균급여 이상인 직원 조회
SELECT E.*, (SELECT AVG(SALARY) FROM EMPLOYEES WHERE JOB_ID = E.JOB_ID) AVG 
  FROM EMPLOYEES E
WHERE E.SALARY >= (SELECT AVG(SALARY) FROM EMPLOYEES WHERE JOB_ID = E.JOB_ID);

SELECT E.EMPLOYEE_ID, E.FIRST_NAME, E.SALARY, E.JOB_ID, A.*
  FROM EMPLOYEES E, (SELECT JOB_ID, AVG(SALARY) AVG_SALARY FROM EMPLOYEES GROUP BY JOB_ID) A
WHERE E.JOB_ID = A.JOB_ID
    AND SALARY >= A.AVG_SALARY
;

----------------------------
-- 직종별 최대 월급여를 받는 직원의 사번, 성명, 월급여, 직종(직무) 코드, 직종명 조회
SELECT E.EMPLOYEE_ID, E.FIRST_NAME, E.SALARY, E.JOB_ID, J.JOB_TITLE,
               (SELECT MAX(SALARY) FROM EMPLOYEES WHERE JOB_ID = E.JOB_ID) MAX
  FROM EMPLOYEES E, JOBS J
WHERE E.JOB_ID = J.JOB_ID
     AND E.SALARY = (SELECT MAX(SALARY) FROM EMPLOYEES WHERE JOB_ID = E.JOB_ID);

SELECT E.EMPLOYEE_ID, E.FIRST_NAME, E.SALARY, E.JOB_ID,
               (SELECT JOB_TITLE FROM JOBS WHERE JOB_ID = E.JOB_ID) JOB_TITLE,
               (SELECT MAX(SALARY) FROM EMPLOYEES WHERE JOB_ID = E.JOB_ID) MAX             
  FROM EMPLOYEES E
WHERE E.SALARY = (SELECT MAX(SALARY) FROM EMPLOYEES WHERE JOB_ID = E.JOB_ID);

-- 부서별 최대 월급여를 받는 직원의 사번, 성명, 월급여, 부서코드, 부서명 정보 조회
SELECT E.EMPLOYEE_ID, E.FIRST_NAME, E.SALARY, E.DEPARTMENT_ID, D.DEPARTMENT_NAME,
               (SELECT MAX(SALARY) FROM EMPLOYEES WHERE DEPARTMENT_ID = E.DEPARTMENT_ID) MAX
  FROM EMPLOYEES E, DEPARTMENTS D
WHERE E.DEPARTMENT_ID = D.DEPARTMENT_ID
     AND E.SALARY = (SELECT MAX(SALARY) FROM EMPLOYEES WHERE DEPARTMENT_ID = E.DEPARTMENT_ID)
;

SELECT E.EMPLOYEE_ID, E.FIRST_NAME, E.SALARY, e.department_id
     , (SELECT department_name FROM DEPARTMENTS 
         WHERE department_id = e.department_id) AS DEPT_NAME
  FROM employees E
 WHERE E.SALARY = (SELECT MAX(SALARY) FROM EMPLOYEES
                     WHERE department_id = E.department_id)
;

-- 부서별 인원수, 급여합계, 평균급여, 가장 많은 급여, 가장 적은 급여
SELECT DEPARTMENT_ID, COUNT(*), SUM(SALARY), ROUND(AVG(SALARY)), MAX(SALARY), MIN(SALARY)
  FROM EMPLOYEES GROUP BY DEPARTMENT_ID;

-- 직원들의 매니저 이름을 함께 조회(사번, 성명, 부서코드, 매니저사번, 매니저성명)
SELECT E.EMPLOYEE_ID, E.FIRST_NAME, E.DEPARTMENT_ID, E.MANAGER_ID,
                (SELECT FIRST_NAME FROM EMPLOYEES WHERE EMPLOYEE_ID = E.MANAGER_ID) MANAGER_NAME
FROM EMPLOYEES E;
--------
--JOIN문(SELF JOIN문) 같은 테이블을 조인
SELECT E.EMPLOYEE_ID, E.FIRST_NAME, E.MANAGER_ID, M.EMPLOYEE_ID AS M_ID, M.FIRST_NAME M_FNAME
  FROM EMPLOYEES E, EMPLOYEES M
WHERE E.MANAGER_ID = M.EMPLOYEE_ID
;
