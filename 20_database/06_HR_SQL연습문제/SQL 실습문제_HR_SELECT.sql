/* ** �ǽ����� : HR����(DB)���� �䱸���� �ذ� **********
-- ���(employee_id)�� 100�� ���� ���� ��ü ����
-- ����(salary)�� 15000 �̻��� ������ ��� ���� ����
-- ������ 15000 �̻��� ����� ���, �̸�(LAST_NAME), �Ի���(hire_date), ���޿� ���� ����
-- ������ 10000 ������ ����� ���, �̸�(LAST_NAME), �Ի���, ���޿� ���� ����
---- (�޿��� ���� �������)
-- �̸�(first_name)�� john�� ����� ��� ���� ��ȸ
-- �̸�(first_name)�� john�� ����� �� ���ΰ�?
-- 2008�⿡ �Ի��� ����� ���, ����('first_name last_name'), ���޿� ���� ��ȸ
---- ���� ��¿�) 'Steven King'
-- ���޿��� 20000~30000 ������ ���� ���, ����(last_name first_name), ���޿� ���� ��ȸ
-- ������ID(MANAGER_ID)�� ���� ��� ���� ��ȸ
-- ����(job_id)�ڵ� 'IT_PROG'���� ���� ���� ���޿��� ��
-- ������ �ִ� ���޿� �˻�
-- ������ �ִ� ���޿� �˻��ϰ�, �ִ� ���޿��� 10000�̻��� ���� ��ȸ
-- ������ ��ձ޿� �̻��� ���� ��ȸ
--------
-- ������ �ִ� ���޿��� �޴� ������ ���, ����, ���޿�, ����(����) �ڵ� ��ȸ
-- �μ��� �ִ� ���޿��� �޴� ������ ���, ����, ���޿�, �μ��ڵ�, �μ��� ���� ��ȸ
-- �μ��� �ο���, �޿��հ�, ��ձ޿�, ���� ���� �޿�, ���� ���� �޿�
-- �������� �Ŵ��� �̸��� �Բ� ��ȸ(���, ����, �μ��ڵ�, �Ŵ������, �Ŵ�������)
**********************************************************/
-- ���(employee_id)�� 100�� ���� ���� ��ü ����
SELECT * FROM EMPLOYEES WHERE EMPLOYEE_ID = 100;

-- ����(salary)�� 15000 �̻��� ������ ��� ���� ����
SELECT * FROM EMPLOYEES WHERE SALARY >= 15000;

-- ������ 15000 �̻��� ����� ���, �̸�(LAST_NAME), �Ի���(hire_date), ���޿� ���� ����
SELECT EMPLOYEE_ID, LAST_NAME, HIRE_DATE, SALARY
  FROM EMPLOYEES WHERE SALARY >= 15000; 

-- ������ 10000 ������ ����� ���, �̸�(LAST_NAME), �Ի���, ���޿� ���� ����
---- (�޿��� ���� �������)
SELECT EMPLOYEE_ID, LAST_NAME, HIRE_DATE, SALARY
  FROM EMPLOYEES WHERE SALARY <= 10000
ORDER BY SALARY DESC;

-- �̸�(first_name)�� john�� ����� ��� ���� ��ȸ
SELECT * FROM EMPLOYEES WHERE FIRST_NAME = INITCAP('JOHN');
SELECT * FROM EMPLOYEES WHERE UPPER(FIRST_NAME) = UPPER('JOHN');

-- �̸�(first_name)�� john�� ����� �� ���ΰ�?
SELECT COUNT(*) FROM EMPLOYEES WHERE  FIRST_NAME = INITCAP('JOHN');

-- 2008�⿡ �Ի��� ����� ���, ����('first_name last_name'), ���޿� ���� ��ȸ
---- ���� ��¿�) 'Steven King'
SELECT EMPLOYEE_ID, FIRST_NAME || ' ' || LAST_NAME AS FULLNAME, SALARY 
  FROM EMPLOYEES WHERE TO_CHAR(HIRE_DATE, 'YYYY') = '2008';
  
SELECT EMPLOYEE_ID, FIRST_NAME || ' ' || LAST_NAME AS FULLNAME, SALARY 
  FROM EMPLOYEES 
WHERE HIRE_DATE BETWEEN TO_DATE('2008/01/01', 'YYYY/MM/DD')
                                             AND TO_DATE('2008/12/31', 'YYYY/MM/DD');  

-- ���޿��� 20000~30000 ������ ���� ���, ����(last_name first_name), ���޿� ���� ��ȸ
SELECT EMPLOYEE_ID, FIRST_NAME || ' ' || LAST_NAME AS FULLNAME, SALARY 
  FROM EMPLOYEES WHERE SALARY BETWEEN 20000 AND 30000;

-- ������ID(MANAGER_ID)�� ���� ��� ���� ��ȸ
SELECT * FROM EMPLOYEES WHERE MANAGER_ID IS NULL;

-- ����(job_id)�ڵ� 'IT_PROG'���� ���� ���� ���޿��� ��
SELECT MAX(SALARY) FROM EMPLOYEES WHERE JOB_ID = 'IT_PROG';

-- ������ �ִ� ���޿� �˻�
SELECT JOB_ID, MAX(SALARY) FROM EMPLOYEES GROUP BY JOB_ID;

-- ������ �ִ� ���޿� �˻��ϰ�, �ִ� ���޿��� 10000�̻��� ���� ��ȸ
SELECT DISTINCT E.JOB_ID, (SELECT MAX(SALARY) FROM EMPLOYEES WHERE JOB_ID = E.JOB_ID) MAX
  FROM EMPLOYEES E
WHERE (SELECT MAX(SALARY) FROM EMPLOYEES WHERE JOB_ID = E.JOB_ID) >= 10000;

SELECT JOB_ID, MAX(SALARY) MAX_SALARY FROM EMPLOYEES
GROUP BY JOB_ID
HAVING MAX(SALARY) >= 10000 --HAVING������ ��Ī ��� ����
ORDER BY MAX_SALARY;

SELECT *
  FROM (SELECT JOB_ID, MAX(SALARY) MAX_SALARY
          FROM employees
         GROUP BY JOB_ID
       ) A
 WHERE MAX_SALARY >= 10000
 ORDER BY MAX_SALARY
;    
-- ������ ��ձ޿� �̻��� ���� ��ȸ
SELECT E.*, (SELECT AVG(SALARY) FROM EMPLOYEES WHERE JOB_ID = E.JOB_ID) AVG 
  FROM EMPLOYEES E
WHERE E.SALARY >= (SELECT AVG(SALARY) FROM EMPLOYEES WHERE JOB_ID = E.JOB_ID);

SELECT E.EMPLOYEE_ID, E.FIRST_NAME, E.SALARY, E.JOB_ID, A.*
  FROM EMPLOYEES E, (SELECT JOB_ID, AVG(SALARY) AVG_SALARY FROM EMPLOYEES GROUP BY JOB_ID) A
WHERE E.JOB_ID = A.JOB_ID
    AND SALARY >= A.AVG_SALARY
;

----------------------------
-- ������ �ִ� ���޿��� �޴� ������ ���, ����, ���޿�, ����(����) �ڵ�, ������ ��ȸ
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

-- �μ��� �ִ� ���޿��� �޴� ������ ���, ����, ���޿�, �μ��ڵ�, �μ��� ���� ��ȸ
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

-- �μ��� �ο���, �޿��հ�, ��ձ޿�, ���� ���� �޿�, ���� ���� �޿�
SELECT DEPARTMENT_ID, COUNT(*), SUM(SALARY), ROUND(AVG(SALARY)), MAX(SALARY), MIN(SALARY)
  FROM EMPLOYEES GROUP BY DEPARTMENT_ID;

-- �������� �Ŵ��� �̸��� �Բ� ��ȸ(���, ����, �μ��ڵ�, �Ŵ������, �Ŵ�������)
SELECT E.EMPLOYEE_ID, E.FIRST_NAME, E.DEPARTMENT_ID, E.MANAGER_ID,
                (SELECT FIRST_NAME FROM EMPLOYEES WHERE EMPLOYEE_ID = E.MANAGER_ID) MANAGER_NAME
FROM EMPLOYEES E;
--------
--JOIN��(SELF JOIN��) ���� ���̺��� ����
SELECT E.EMPLOYEE_ID, E.FIRST_NAME, E.MANAGER_ID, M.EMPLOYEE_ID AS M_ID, M.FIRST_NAME M_FNAME
  FROM EMPLOYEES E, EMPLOYEES M
WHERE E.MANAGER_ID = M.EMPLOYEE_ID
;
