SELECT * FROM EMPLOYEES;

SELECT ENAME, JOB, SAL FROM EMPLOYEES;

SELECT DISTINCT JOB, MGR FROM EMPLOYEES;

SELECT JOB, MGR	FROM EMPLOYEES;

SELECT DISTINCT DEPTNO, COMM FROM EMPLOYEES;

SELECT ENAME, SAL, DEPTNO FROM EMPLOYEES WHERE DEPTNO= 30;

SELECT JOB, ENAME FROM EMPLOYEES ORDER BY JOB, ENAME ASC;

SELECT TOP 1 SAL FROM EMPLOYEES;

SELECT * FROM EMPLOYEES;

SELECT ENAME, SAL FROM EMPLOYEES WHERE JOB = 'MANAGER' AND DEPTNO = 30;

SELECT ENAME, JOB	FROM EMPLOYEES WHERE JOB = 'MANAGER' OR DEPTNO = 30;

SELECT ENAME, JOB, DEPTNO FROM EMPLOYEES WHERE NOT JOB='MANAGER' AND NOT DEPTNO = 10;

SELECT ENAME, JOB FROM EMPLOYEES WHERE NOT JOB = 'PRESIDENT';

SELECT ENAME, SAL
FROM EMPLOYEES
WHERE SAL NOT BETWEEN 1500 AND 3000;

SELECT ENAME, JOB FROM EMPLOYEES WHERE EMPNO NOT IN (7902, 7900, 7839, 7200);

SELECT ENAME, JOB, COMM
FROM EMPLOYEES
WHERE COMM IS NOT NULL;

SELECT ENAME
FROM EMPLOYEES
WHERE ENAME LIKE '%AR%';