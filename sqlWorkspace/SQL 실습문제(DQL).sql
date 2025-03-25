-- [24/9/9 과제] SQL 실습문제 (DQL)

-- 1. EMPLOYEE 테이블에서 사번, 사원명, 급여를 연결해서 조회
SELECT EMP_ID || EMP_NAME || SALARY 
FROM EMPLOYEE;

-- 2. EMPLOYEE 테이블에서 사원명, 급여를 리터럴과 연결해서 조회
SELECT EMP_ID || '/' || EMP_NAME || '/' || SALARY AS "사번/사원명/급여"
FROM EMPLOYEE;

-- 3. EMPLOYEE 테이블에서 재직 중(ENT_YN 컬럼 값이 'N')인 직원들의 사번, 이름, 입사일 조회 
SELECT EMP_ID , EMP_NAME , HIRE_DATE 
FROM EMPLOYEE
WHERE ENT_YN = 'N';

-- 4. EMPLOYEE 테이블에서 연봉이 5000이상인 직원의 직원명, 급여, 연봉, 입사일 조회
SELECT EMP_NAME , SALARY , SALARY * 12 AS 연봉, HIRE_DATE 
FROM EMPLOYEE
WHERE SALARY *12 >= 50000000;

-- 5. EMPLOYEE 테이블에서 전화번호 처음 3자리가 010이 아닌 사원의 이름, 전화번호 조회
SELECT EMP_NAME , PHONE
FROM EMPLOYEE
WHERE PHONE NOT LIKE '010%';

-- 6. DEPARTMENT 테이블에서 해외영업부에 대한 모든 컬럼 조회
SELECT *
FROM DEPARTMENT
WHERE DEPT_TITLE LIKE '%해외영업%';

-- 7. EMPLOYEE 테이블에서 BONUS로 오름차순 정렬
SELECT *
FROM EMPLOYEE
ORDER BY BONUS ASC;

-- 8. EMPLOYEE 테이블에서 BONUS로 내림차순 정렬(단, BONUS 값이 일치할 경우 그때는 SALARY 가지고 오름차순정렬)
SELECT *
FROM EMPLOYEE
ORDER BY BONUS DESC, SALARY ASC;

-- 9. EMPLOYEE 테이블에서 연봉별 내림차순으로 정렬된 사원의 사원명, 연봉 조회
SELECT EMP_NAME , SALARY * 12 AS 연봉
FROM EMPLOYEE
ORDER BY SALARY * 12 DESC;
