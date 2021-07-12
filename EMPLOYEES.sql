CREATE TABLE EMPLOYEES
(
	EMPNO		INT NOT	NULL PRIMARY KEY,
	ENAME		CHAR(10),
	JOB			CHAR(9),
	MGR			INT,
	HIREDATE	DATE,
	SAL			INT,
	COMM		INT,
	DEPTNO		INT NOT NULL
);

INSERT INTO EMPLOYEES VALUES (7839, 'DOE', 'PRESIDENT', NULL, '18-APR-1990', 5000, NULL, 10);

INSERT INTO EMPLOYEES VALUES (7698, 'KIM', 'MANAGER', 7839, '11-MAY-1998', 2850, NULL, 30);
INSERT INTO EMPLOYEES VALUES (7782, 'BLAKE', 'MANAGER', 7839, '2-FEB-2000', 2450, NULL, 10);
INSERT INTO EMPLOYEES VALUES (7566, 'PUNJA', 'MANAGER', 7839, '24-NOV-1996', 2990, NULL, 20);

INSERT INTO EMPLOYEES VALUES (7499,'ALLEN','SALESMAN',7698,'20-FEB-1981',1600,300,30);
INSERT INTO EMPLOYEES VALUES (7844,'TURNER','SALESMAN',7698,'8-SEP-1981',1500,0,30);
INSERT INTO EMPLOYEES VALUES (7900,'JAMES','CLERK',7698,'3-DEC-1981',950,NULL,30);
INSERT INTO EMPLOYEES VALUES (7521,'WARD','SALESMAN',7698,'22-FEB-1981',1250,500,30);
INSERT INTO EMPLOYEES VALUES (7902,'FORD','ANALYST',7566,'3-DEC-1981',3000,NULL,20);

INSERT INTO EMPLOYEES VALUES (7654, 'LEE', 'SALESMAN', 7698, '28-SEP-1995', 1330, 1400, 30);


SELECT * FROM EMPLOYEES;
