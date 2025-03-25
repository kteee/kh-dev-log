
---------------- JOIN 실습 문제 ----------------
-- 1. DEPARTMENT 테이블과 LOCATION 테이블의 조인하여 부서 코드, 부서명, 지역 코드, 지역명을 조회
SELECT D.DEPT_ID        AS 부서코드
    , D.DEPT_TITLE      AS 부서명
    , D.LOCATION_ID     AS 지역코드
    , L.LOCAL_NAME      AS 지역명
FROM DEPARTMENT D
JOIN LOCATION L ON ( D.LOCATION_ID = L.LOCAL_CODE );

-- 2. EMPLOYEE 테이블과 DEPARTMENT 테이블을 조인해서 보너스를 받는 사원들의 사번, 사원명, 보너스, 부서명을 조회
SELECT E.EMP_ID         AS 사번
    , E.EMP_NAME        AS 사원명
    , E.BONUS           AS 보너스
    , D.DEPT_TITLE      AS 부서명
FROM EMPLOYEE E 
JOIN DEPARTMENT D ON ( E.DEPT_CODE = D.DEPT_ID )
WHERE BONUS IS NOT NULL;

-- 3. EMPLOYEE 테이블과 DEPARTMENT 테이블을 조인해서 인사관리부가 아닌 사원들의 사원명, 부서명, 급여를 조회
SELECT E.EMP_NAME       AS 사원명
    , D.DEPT_TITLE      AS 부서명
    , E.SALARY          AS 급여
FROM EMPLOYEE E
JOIN DEPARTMENT D ON (E.DEPT_CODE = D.DEPT_ID)
WHERE D.DEPT_TITLE != '인사관리부';

-- 4. EMPLOYEE 테이블, DEPARTMENT 테이블, LOCATION 테이블의 조인해서 사번, 사원명, 부서명, 지역명 조회
SELECT E.EMP_ID         AS 사번
    , E.EMP_NAME        AS 사원명
    , D.DEPT_TITLE      AS 부서명
    , L.LOCAL_NAME      AS 지역명
FROM EMPLOYEE E 
JOIN DEPARTMENT D ON ( E.DEPT_CODE = D.DEPT_ID )
JOIN LOCATION L ON ( D.LOCATION_ID = L.LOCAL_CODE );

-- 5. 사번, 사원명, 부서명, 지역명, 국가명 조회
SELECT E.EMP_NO         AS 사번
    , E.EMP_NAME        AS 사원명
    , D.DEPT_TITLE      AS 부서명
    , L.LOCAL_NAME      AS 지역명
    , N.NATIONAL_NAME   AS 국가명
FROM EMPLOYEE E
JOIN DEPARTMENT D ON ( E.DEPT_CODE = D.DEPT_ID )
JOIN LOCATION L ON ( D.LOCATION_ID = L.LOCAL_CODE )
JOIN NATIONAL N ON ( L.NATIONAL_CODE = N.NATIONAL_CODE );

-- 6. 사번, 사원명, 부서명, 지역명, 국가명, 급여 등급 조회
SELECT E.EMP_NO         AS 사번
    , E.EMP_NAME        AS 사원명
    , D.DEPT_TITLE      AS 부서명
    , L.LOCAL_NAME      AS 지역명
    , N.NATIONAL_NAME   AS 국가명
    , S.SAL_LEVEL       AS 급여등급
FROM EMPLOYEE E
JOIN DEPARTMENT D ON ( E.DEPT_CODE = D.DEPT_ID )
JOIN LOCATION L ON ( D.LOCATION_ID = L.LOCAL_CODE )
JOIN NATIONAL N ON ( L.NATIONAL_CODE = N.NATIONAL_CODE )
JOIN SAL_GRADE S ON ( E.SALARY >= MIN_SAL AND E.SALARY <= MAX_SAL);


------------------------- 종합 실습 문제 -------------------------
-- 1. 직급이 대리이면서 ASIA 지역에서 근무하는 직원들의 사번, 사원명, 직급명, 부서명, 근무지역, 급여를 조회하세요.
SELECT E.EMP_ID         AS 사번
    , E.EMP_NAME        AS 사원명
    , J.JOB_NAME        AS 직급명
    , D.DEPT_TITLE      AS 부서명
    , L.LOCAL_NAME      AS 근무지역
    , E.SALARY          AS 급여
FROM EMPLOYEE E
JOIN JOB J ON ( E.JOB_CODE = J.JOB_CODE )
JOIN DEPARTMENT D ON ( E.DEPT_CODE = D.DEPT_ID )
JOIN LOCATION L ON ( D.LOCATION_ID = L.LOCAL_CODE )
WHERE JOB_NAME = '대리';

-- 2. 70년대생 이면서 여자이고, 성이 전 씨인 직원들의 사원명, 주민번호, 부서명, 직급명을 조회하세요.
SELECT E.EMP_NAME       AS 사원명
    , E.EMP_NO          AS 주민번호
    , D.DEPT_TITLE      AS 부서명
    , J.JOB_NAME        AS 직급명
FROM EMPLOYEE E
JOIN DEPARTMENT D ON ( E.DEPT_CODE = D.DEPT_ID )
JOIN JOB J ON ( E.JOB_CODE = J.JOB_CODE )
WHERE E.EMP_NO LIKE '7%'
    AND SUBSTR(E.EMP_NO, 8, 1) = 2
    AND E.EMP_NAME LIKE '전%';

-- 3. 보너스를 받는 직원들의 사원명, 보너스, 연봉, 부서명, 근무지역을 조회하세요.
-- 단, 부서 코드가 없는 사원도 출력될 수 있게
SELECT EMP_NAME     AS 사원명
    , BONUS         AS 보너스
    , SALARY * 12   AS 연봉
    , NVL(DEPT_TITLE, '없음')    AS 부서명
    , NVL(LOCAL_NAME, '없음')    AS 근무지역
FROM EMPLOYEE E
LEFT JOIN DEPARTMENT D ON ( E.DEPT_CODE = D.DEPT_ID )
LEFT JOIN LOCATION L ON ( D.LOCATION_ID = L.LOCAL_CODE )
WHERE BONUS IS NOT NULL;

-- 4. 한국과 일본에서 근무하는 직원들의 사원명, 부서명, 근무지역, 근무 국가를 조회하세요.
SELECT E.EMP_NAME       AS 사원명
    , D.DEPT_TITLE      AS 부서명
    , L.LOCAL_NAME      AS 근무지역
    , N.NATIONAL_NAME   AS 근무국가
FROM EMPLOYEE E
JOIN DEPARTMENT D ON ( E.DEPT_CODE = D.DEPT_ID )
JOIN LOCATION L ON ( D.LOCATION_ID = L.LOCAL_CODE )
JOIN NATIONAL N ON ( L.NATIONAL_CODE = N.NATIONAL_CODE )
WHERE N.NATIONAL_NAME = '한국' OR N.NATIONAL_NAME = '일본';

-- 5. 각 부서별 평균 급여를 조회하여 부서명, 평균 급여(정수 처리)를 조회하세요.
-- 단, 부서 배치가 안된 사원들의 평균도 같이 나오게
SELECT NVL(DEPT_TITLE, '부서없음')  AS 부서명
    , FLOOR(AVG(NVL(SALARY, 0)))   AS 평균급여
FROM DEPARTMENT D
RIGHT JOIN EMPLOYEE E ON ( D.DEPT_ID = E.DEPT_CODE )
GROUP BY DEPT_TITLE;

-- 6. 각 부서별 총 급여의 합이 1000만원 이상인 부서명, 급여의 합을 조회하시오.
SELECT DEPT_TITLE           AS 부서명
    , SUM(NVL(SALARY, 0))   AS 급여의합
FROM DEPARTMENT D
JOIN EMPLOYEE E ON ( D.DEPT_ID = E.DEPT_CODE )
GROUP BY DEPT_TITLE
HAVING SUM(SALARY) >= 10000000;

-- 7. 사번, 사원명, 직급명, 급여 등급, 구분을 조회 
--    이때 구분에 해당하는 값은 아래와 같이 조회 되도록 하시오.
--    급여 등급이 S1, S2인 경우 '고급'
--    급여 등급이 S3, S4인 경우 '중급'
--    급여 등급이 S5, S6인 경우 '초급'
SELECT EMP_ID       AS 사번
    , EMP_NAME      AS 사원명
    , JOB_NAME      AS 직급명
    , SAL_LEVEL     AS 급여등급
    , CASE 
        WHEN SAL_LEVEL = 'S1' OR SAL_LEVEL = 'S2' THEN '고급' 
        WHEN SAL_LEVEL = 'S3' OR SAL_LEVEL = 'S4' THEN '중급' 
        WHEN SAL_LEVEL = 'S5' OR SAL_LEVEL = 'S6' THEN '초급' 
    END AS 구분
FROM EMPLOYEE E
JOIN JOB J ON ( E.JOB_CODE = J.JOB_CODE )
JOIN SAL_GRADE S ON ( E.SALARY BETWEEN S.MIN_SAL AND S.MAX_SAL );

-- 8. 보너스를 받지 않는 직원들 중 직급 코드가 J4 또는 J7인 직원들의 사원명, 직급명, 급여를 조회하시오.
SELECT EMP_NAME AS 사원명
    , JOB_NAME  AS 직급명
    , SALARY    AS 급여
FROM EMPLOYEE E
JOIN JOB J ON ( E.JOB_CODE = J.JOB_CODE )
WHERE E.BONUS IS NULL
    AND (J.JOB_CODE = 'J4' OR J.JOB_CODE = 'J7');

-- 9. 부서가 있는 직원들의 사원명, 직급명, 부서명, 근무 지역을 조회하시오.
SELECT EMP_NAME     AS 사원명
    , JOB_NAME      AS 직급명
    , DEPT_TITLE    AS 부서명
    , LOCAL_NAME    AS 근무지역
FROM EMPLOYEE E
JOIN JOB J ON ( E.JOB_CODE = J.JOB_CODE )
JOIN DEPARTMENT D ON ( E.DEPT_CODE = D.DEPT_ID )
JOIN LOCATION L ON ( D.LOCATION_ID = L.LOCAL_CODE )
WHERE E.DEPT_CODE IS NOT NULL;

-- 10. 해외영업팀에 근무하는 직원들의 사원명, 직급명, 부서 코드, 부서명을 조회하시오
SELECT EMP_NAME     AS 사원명
    , JOB_NAME      AS 직급명
    , DEPT_CODE     AS 부서코드
    , DEPT_TITLE    AS 부서명
FROM EMPLOYEE E
JOIN JOB J ON ( E.JOB_CODE = J.JOB_CODE )
JOIN DEPARTMENT D ON ( E.DEPT_CODE = D.DEPT_ID )
WHERE D.DEPT_TITLE LIKE '%해외영업%';

-- 11. 이름에 '형'자가 들어있는 직원들의 사번, 사원명, 직급명을 조회하시오.
SELECT EMP_ID   AS 사번
    , EMP_NAME  AS 사원명
    , JOB_NAME  AS 직급명
FROM EMPLOYEE E
JOIN JOB J ON ( E.JOB_CODE = J.JOB_CODE )
WHERE E.EMP_NAME LIKE '%형%';


