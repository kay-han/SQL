SELECT ENAME, SAL
FROM EMPLOYEES
WHERE SAL <= 1500;

SELECT ENAME, HIREDATE, JOB
FROM EMPLOYEES
WHERE HIREDATE > '1991-04-25';

SELECT ENAME, JOB
FROM EMPLOYEES
WHERE JOB <> 'SALESMAN';
