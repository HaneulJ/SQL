SELECT * 
FROM edu17db.emp;



SELECT *
FROM edu17db.emp
ORDER BY sal;



SELECT *
FROM edu17db.emp
ORDER BY sal DESC;



SELECT * 
FROM edu17db.emp
ORDER BY hiredate;



SELECT * 
FROM edu17db.emp
ORDER BY hiredate DESC;




SELECT * 
FROM edu17db.emp
WHERE deptno = 30;



SELECT ename, sal, deptno 
FROM edu17db.emp
WHERE empno = 7900;




SELECT ename, sal, deptno 
FROM edu17db.emp
WHERE ename = 'JONES';




SELECT ename, sal, deptno 
FROM edu17db.emp
WHERE ename = 'jones'; -- 대소문자 상관x




SELECT ename, sal, deptno 
FROM edu17db.emp
WHERE ename = 'J%'; -- "="연산 사용하면 J% 이라는 이름으로 인식



SELECT ename, sal, deptno 
FROM edu17db.emp
WHERE ename like 'J%';




SELECT ename, sal, deptno 
FROM edu17db.emp
WHERE ename LIKE '%O%'; -- 앞뒤에 뭐가 있든 O가 포함된 이름




SELECT ename, sal, deptno 
FROM edu17db.emp
WHERE ename LIKE '%O__'; -- "__" O가 꼭 포함되어있고 그 뒤에 반드시 2개의 문자가 있어야함





SELECT ename, sal, hiredate 
FROM edu17db.emp
WHERE date_format(hiredate, '%Y') = '1981';




SELECT ename, sal, date_format(hiredate, '%Y') 
FROM edu17db.emp
WHERE date_format(hiredate, '%Y') = '1981';




--별칭 추가하여 컬럼명 변경
SELECT ename 직원명, sal 급여, date_format(hiredate, '%Y') "입사 년도" -- (입사 년도)처럼 공백이 들어가 있을 때 반드시 "" 인용부호 안에!
FROM edu17db.emp
WHERE date_format(hiredate, '%Y') = '1981'; 



SELECT ename 직원명, job 직무, date_format(hiredate, '%Y') "입사 년도"
FROM edu17db.emp
WHERE date_format(hiredate, '%Y') = '1981'


AND job = 'manager';


SELECT ename 직원명, job 직무, date_format(hiredate, '%Y') "입사 년도", deptno "부서 번호"
FROM edu17db.emp
WHERE date_format(hiredate, '%Y') = '1981'
AND job = 'manager'
AND deptno = 20;




SELECT *
FROM edu17db.emp
WHERE deptno = 10
OR deptno = 20;




SELECT *
FROM edu17db.emp
WHERE deptno IN (10,20);




SELECT *
FROM edu17db.emp
WHERE sal >= 2000
AND sal <= 3000;



SELECT *
FROM edu17db.emp
WHERE sal BETWEEN 2000 AND 3000;




SELECT deptno, SUM(sal) 
FROM edu17db.emp
GROUP BY deptno; -- 그룹단위로 정보를 추출할 때




SELECT deptno, SUM(sal) -- deptno별로 월급의 합을 구하여~
FROM edu17db.emp
GROUP BY deptno
HAVING SUM(sal) > 10000;




SELECT deptno "부서번호", SUM(sal) "부서별 급여합"
FROM edu17db.emp
GROUP BY deptno;




SELECT deptno "부서번호", MAX(sal) "부서별 최대급여"
FROM edu17db.emp
GROUP BY deptno;




SELECT deptno "부서번호", job 직무, MAX(sal) "부서별 직무별 최대 급여"
FROM edu17db.emp
GROUP BY deptno, job;



SELECT job, COUNT(*)
FROM edu17db.emp
WHERE deptno = 30 -- 행의 데이터? 1차적으로 추리기
GROUP BY job;  -- 직무별로 구하기(몇 명의 직원이 있는지)




SELECT job, COUNT(*)
FROM edu17db.emp
WHERE deptno = 30 -- 행단위 조건 적용
GROUP BY job
HAVING COUNT(*) > 2;  -- 그룹단위 조건 적용




SELECT ename, sal 
FROM edu17db.emp
ORDER BY sal DESC;  -- 월급이 많은 순

 
 

SELECT ename, concat(sal, '원')  -- SELECT ename, sal||'원' 이건 지원X
FROM edu17db.emp
ORDER BY sal DESC;



SELECT ename, concat(format(sal, 0), '원')  -- sal이라는 
FROM edu17db.emp
ORDER BY sal DESC;



SELECT job
FROM edu17db.emp;



SELECT distinct job
FROM edu17db.emp;



SELECT ename
FROM edu17db.emp
WHERE date_format(hiredate, '%Y') = '1981';


SELECT ename
FROM edu17db.emp
WHERE deptno = 10;



SELECT ename
FROM edu17db.emp
WHERE date_format(hiredate, '%Y') = '1981'
UNION ALL -- 합집합
select ename
FROM edu17db.emp
WHERE deptno = 10;



SELECT ename
FROM edu17db.emp
WHERE date_format(hiredate, '%Y') = '1981'
UNION
SELECT ename
FROM edu17db.emp
WHERE deptno = 10;



SELECT ename
FROM edu17db.emp
WHERE date_format(hiredate, '%Y') = '1981'
INTERSECT -- 차집합 1981 - 10부서
SELECT ename
FROM edu17db.emp
WHERE deptno = 10;



SELECT ename
FROM edu17db.emp
WHERE date_format(hiredate, '%Y') = '1981'
EXCEPT
SELECT ename
FROM edu17db.emp
WHERE deptno = 10;



SELECT ename, '근무중'
FROM edu17db.emp;



SELECT ename, '근무중', 100, NOW()
FROM edu17db.emp;




SELECT ename, sal, sal*12 -- 월급, 연봉
FROM edu17db.emp;



SELECT *
FROM edu17db.emp
ORDER BY sal DESC
LIMIT 1;



SELECT *
FROM edu17db.emp
ORDER BY sal DESC
LIMIT 7;




SELECT *
FROM edu17db.emp
ORDER BY sal DESC
LIMIT 5 OFFSET 0; 




SELECT *
FROM edu17db.emp
ORDER BY sal DESC
LIMIT 3 OFFSET 3; 