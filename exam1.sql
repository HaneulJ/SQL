SELECT * FROM emp;

SELECT empno, ename FROM emp WHERE empno = 7839;

SELECT *  FROM emp WHERE sal > 2000;



SELECT hiredate, DATE_FORMAT(hiredate, '%Y') FROM emp;

SELECT * FROM emp WHERE DATE_FORMAT(hiredate, '%Y') = '1982';

SELECT CURDATE(); --현재 날짜

SELECT CURTIME();

SELECT NOW();

SELECT DATE_FORMAT(NOW(), '%Y%m%d');

SELECT DATE_FORMAT(NOW(), '%Y-%m-%d');

SELECT DATE_FORMAT(NOW(), '%Y년 %m월 %d일');

SELECT DATE_FORMAT(NOW(), '%Y');

SELECT DATE_FORMAT(NOW(), '%m');

SELECT DATE_FORMAT(NOW(), '%d');

SELECT DATE_FORMAT(NOW(), '%H:%M');  -- M: 달을 이름으로

SELECT DATE_FORMAT(NOW(), '%H:%i:%S'); -- i로 써야 분(시간)이 나옴