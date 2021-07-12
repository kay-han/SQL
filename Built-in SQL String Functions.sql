SELECT ENAME + '  '+JOB AS ENAME_____JOB
FROM EMPLOYEES;

SELECT UPPER(ENAME) AS ENU, LOWER(ENAME) AS ENL
FROM EMPLOYEES;

SELECT SUBSTRING(JOB, 1,5) AS JOB
FROM EMPLOYEES;

SELECT SUBSTRING(ENAME, 1, 3) AS NAME
FROM EMPLOYEES;

SELECT ENAME, LEN(ENAME) AS LENGTH
FROM EMPLOYEES;


/* 
REPLACE A NULL WITH A VALUE 
*/
SELECT COMM, ISNULL(COMM,5) AS NewCommission
FROM EMPLOYEES;


/*
Replace, Replicate, and Reverse Strings Built-in Functions
*/
SELECT REPLACE ('SQAL Course', 'Course', 'Tutorial') AS RESULT;

SELECT REPLICATE('SQL ', 5) AS RESULT;

SELECT REVERSE('SQL COURSE') AS RESULT;

/*
STUFF() function deletes a part of a string and then inserts another part into the string, starting at a specified position.
ex) Delete 3 characters from a string, starting in position 1, and then insert "DATABASE" in position 1;
*/
SELECT STUFF('SQL COURSE', 1 ,3, 'DATABASE') AS RESULT;
SELECT STUFF('SQL COURSE', 1 ,3, 'HTML') AS RESULT;
SELECT STUFF('SQL Course', 1 ,3, 'Python') AS RESULT;