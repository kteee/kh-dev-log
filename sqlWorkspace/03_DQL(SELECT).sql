-- DQL(SELECT)
-- DATA QUERY LANGUAGE

/* [문법]
    <전체 컬럼 조회하기>
    SELECT *
    FROM 테이블명;
    
    <특정 컬럼 조회하기>
    SELECT 컬럼, 컬럼, ... 
    FROM 테이블명;
    
    - SELECT 절에는 "컬럼", "값(리터럴)" 작성 가능
    - SELECT 절에서 연산자 사용 가능
    
    - 출력 헤더 별칭 지정 :
      -> AS 별칭 (띄어쓰기 불가)
      -> 띄어쓰기 쓰고 싶으면 AS "직원 연봉" (쌍따옴표 추가)
      -> AS는 생략 가능
*/

SELECT *
FROM EMPLOYEE;

SELECT EMP_NAME , PHONE , SALARY
FROM EMPLOYEE;

SELECT 10
FROM EMPLOYEE;

SELECT SALARY * 12 "직원 연봉"
FROM EMPLOYEE;

/* 
    DISTINCT         
    - 중복 값을 한번씩만 표시 
    - SELECT 절에 한번만 작성 가능
    - 여러개 컬럼 작성 가능 (모든 컬럼이 동일해야 중복으로 판단)
*/

SELECT DISTINCT DEPT_CODE 
FROM EMPLOYEE;

SELECT DISTINCT JOB_CODE
FROM EMPLOYEE;

SELECT DISTINCT DEPT_CODE , JOB_CODE
FROM EMPLOYEE;

/* 
    연결 연산자 (||)
    - 여러 컬럼 또는 리터럴을 연결
*/

SELECT 1 || 'ABC'
FROM EMPLOYEE;

SELECT '4', '*', '3', '=', 4*3
FROM EMPLOYEE;

SELECT EMP_NAME || '의 월급은 ' || SALARY || '원 입니다.' AS "직원 연봉"
FROM EMPLOYEE;

/*
    WHERE절 
    [문법] 
    SELECT 컬럼, 컬럼, ...
    FROM 테이블명
    WHERE 조건식;
*/

-- EMPLOYEE 테이블에서 부서 코드가 D9와 일치하는 사원들의 모든 컬럼 정보 조회
SELECT * 
FROM EMPLOYEE
WHERE DEPT_CODE = 'D9';

-- EMPLOYEE 테이블에서 부서코드가 D9가 아닌 직원들의 직원명, 부서코드, 급여 조회
SELECT EMP_ID, EMP_NAME, DEPT_CODE
FROM EMPLOYEE
WHERE DEPT_CODE != 'D9';

-- EMPLOYEE 테이블에서 연봉이 5천만원 이상인 직원들의 직원명, 부서코드, 급여 조회
SELECT EMP_NAME, DEPT_CODE, SALARY
FROM EMPLOYEE
WHERE SALARY * 12 >= 50000000;

/*
    논리연산자
    - AND, OR 
*/

-- EMPLOYEE 테이블에서 부서 코드가 D6이면서 직급코드가 J3인 사원의 모든컬럼 조회
SELECT *
FROM EMPLOYEE
WHERE DEPT_CODE = 'D6' AND JOB_CODE = 'J3';

-- EMPLOYEE 테이블에서 급여가 350만원 이상 600만원 이하를 받는 직원의 모든컬럼 조회
SELECT *
FROM EMPLOYEE
WHERE SALARY >= 3500000 AND SALARY <= 6000000;

/*
    BETWEEN A AND B 
    [문법]
    WHERE 비교대상컬럼 BETWEEN 하한값 AND 상한값
*/

-- EMPLOYEE 테이블에서 급여가 350만원 이상 600만원 이하를 받는 직원의 모든컬럼 조회
SELECT *
FROM EMPLOYEE
WHERE SALARY BETWEEN 3500000 AND 6000000;

/*
    LIKE 연산자
    [문법]
    WHERE 비교대상칼럼 LIKE '특정 패턴';
            
    - 비교하려는 칼럼 값이 지정된 특정 패턴에 만족할 경우 TRUE를 리턴한다.
    - 특정 패턴에는 '%', '_'를 와일드카드로 사용할 수 있다.
    - NOT 붙이면 해당하지 않는 행 조회
      '%' : 0글자 이상
      ex) 비교대상칼럼 LIKE '문자%'  => 비교대상칼럼 값 중에 '문자'로 시작하는 모든 행을 조회한다.
          비교대상칼럼 LIKE '%문자'  => 비교대상칼럼 값 중에 '문자'로 끝나는 모든 행을 조회한다.
          비교대상칼럼 LIKE '%문자%' => 비교대상칼럼 값 중에 '문자'가 포함되어 있는 모든 행을 조회한다.
                
      '_' : 1글자
      ex) 비교대상칼럼 LIKE '_문자'  => 비교대상칼럼 값 중에 '문자'앞에 무조건 한 글자가 오는 모든 행을 조회한다.
          비교대상칼럼 LIKE '__문자' => 비교대상칼럼 값 중에 '문자'앞에 무조건 두 글자가 오는 모든 행을 조회한다.
*/

-- EMPLOYEE 테이블에서 성이 전 씨인 사원의 사원명, 급여 조회
SELECT EMP_NAME, SALARY
FROM EMPLOYEE
WHERE EMP_NAME LIKE '전%';

-- EMPLOYEE 테이블에서 이름 중에 '하'가 포함된 사원의 모든컬럼 조회
SELECT *
FROM EMPLOYEE
WHERE EMP_NAME LIKE '%하%';

-- EMPLOYEE 테이블에서 전화번호 4번째 자리가 9로 시작하는 사원의 모든컬럼 조회
SELECT *
FROM EMPLOYEE
WHERE PHONE LIKE '___9%';

/*
    ESCAPE 문자
    _ 또는 % 문자를 쓰고 싶다면 해당 문자 앞에 ESCAPE 문자 추가 
    특수문자는 _ 나 % 를 제외하고 아무거나 상관없이 사용 가능
*/

-- EMPLOYEE 테이블에서 이메일 중 _ 앞 글자가 3자리인 이메일 주소를 가진 사원의 모든컬럼 조회
SELECT *
FROM EMPLOYEE
WHERE EMAIL LIKE '___\_%' ESCAPE '\';

-- EMPLOYEE 테이블에서 김씨 성이 아닌 사원의 모든컬럼 조회
SELECT *
FROM EMPLOYEE
WHERE EMP_NAME NOT LIKE '김%';

/*
    IS NULL / IS NOT NULL
    - 컬럼 값이 NULL / NOT NULL 인 행 조회
*/

SELECT *
FROM EMPLOYEE
WHERE DEPT_CODE IS NULL;

/*
    IN
    - WHERE 비교대상칼럼 IN (값1, 값2, 값3, ...); 
    - 값 여러개를 한번에 비교
*/

SELECT *
FROM EMPLOYEE
WHERE DEPT_CODE = 'D1' OR DEPT_CODE = 'D2' OR DEPT_CODE = 'D3';

SELECT *
FROM EMPLOYEE
WHERE DEPT_CODE IN('D1', 'D2', 'D3');

/*
    <연산자 우선순위>
    0. ()
    1. 산술 연산자
    2. 연결 연산자
    3. 비교 연산자
    4. IS NULL, LIKE, IN
    5. BETWEEN AND
    6. 논리 연산자 - NOT
    7. 논리 연산자 - AND
    8. 논리 연산자 - OR
*/

/*
    ORDER BY
    [문법]
    SELECT 칼럼, 칼럼, ..., 칼럼
    FROM 테이블명
    WHERE 조건식
    ORDER BY 정렬시키고자 하는 칼럼명|별칭|칼럼 순번 [ASC|DESC] [NULLS FIRST | NULLS LAST];  
    
    - SELECT 문에서 가장 마지막에 기입하는 구문으로 실행 또한 가장 마지막에 진행된다.
    - ASC : 오름차순으로 정렬한다. (ASC 또는 DESC 생략 시 기본값)
    - DESC : 내림차순으로 정렬한다.
    - NULLS FIRST : 정렬하고자 하는 칼럼 값에 NULL이 있는 경우 해당 데이터 값을 맨 앞으로 정렬한다.
    - NULLS LAST : 정렬하고자 하는 칼럼 값에 NULL이 있는 경우 해당 데이터 값을 맨 뒤로 정렬한다.
*/

SELECT * 
FROM EMPLOYEE
ORDER BY SALARY ASC , EMP_NAME DESC ;
-- ORDER BY 디폴트는 ASC 라서 ASC 안써도 오름차순으로 정렬됨
