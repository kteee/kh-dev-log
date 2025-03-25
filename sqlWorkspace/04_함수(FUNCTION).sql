-- 함수(FUNCTION)

/*
    함수
    - 칼럼값을 읽어서 계산 결과를 반환한다.
    - 단일행 함수 : N개의 값을 읽어서 N개의 결과를 리턴한다. (매 행 함수 실행 -> 결과 반환)
    - 그룹 함수 : N개의 값을 읽어서 1개의 결과를 리턴한다. (하나의 그룹별로 함수 실행 -> 결과 반환)
    - SELECT 절에 단일행 함수와 그룹 함수를 함께 사용하지 못한다. (결과 행의 개수가 다르기 때문에)
    - 함수를 기술할 수 있는 위치는 SELECT, WHERE, ORDER BY, GROUP BY, HAVING 절에 기술할 수 있다.
*/

 -------------------------- [단일행함수] --------------------------

/*  <문자 관련 함수> 
    1) LENGTH / LENGTHB
      - LENGTH(칼럼|'문자값') : 글자 수 반환
      - LENGTHB(칼럼|'문자값') : 글자의 바이트 수 반환
        한글 한 글자 -> 3BYTE
        영문자, 숫자, 특수문자 한 글자 -> 1BYTE
        
    * DUAL 테이블
      - SYS 사용자가 소유하는 테이블
      - SYS 사용자가 소유하지만 모든 사용자가 접근이 가능하다.
      - 한 행, 한 칼럼을 가지고 있는 더미(DUMMY) 테이블이다.
      - 사용자가 함수(계산)를 사용할 때 임시로 사용하는 테이블이다.
*/

-- SELECT 문법을 지키기 위하여 FROM 뒤에 무조건 테이블을 넣어야함
-- 임의의 테이블을 넣게되면 해당 테이블이 가진 행만큼 결과가 조회됨
SELECT LENGTH('ABC') 
FROM EMPLOYEE;

-- 그래서 DUAL 테이블을 이용 -> 하나의 행으로 결과값을 조회할 수 있음
SELECT LENGTHB('ABC') 
FROM DUAL;

SELECT EMP_NAME, EMAIL, LENGTH(EMAIL) AS 이메일글자수
FROM EMPLOYEE;

/*
    2) INSTR
      - INSTR(칼럼|'문자값', '검색할 문자값' [, POSITION[, OCCURRENCE]])
        POSITION : 시작지점 (n : 앞에서 n번째 자리부터 오른쪽으로 탐색, -n : 뒤에서 n번째 자리부터 왼쪽으로 탐색) 
        OCCURRENCE : n번째 검색단어
      - 지정한 위치부터 지정된 숫자 번째로 나타나는 문자의 시작 위치를 반환한다.
*/

SELECT EMP_NAME, EMAIL, INSTR(EMAIL, '@') AS "@위치"
FROM EMPLOYEE;

SELECT INSTR('AABAACAABBAA', 'B') FROM DUAL; -- 앞에서부터 탐색, 1번째 B의 위치값 찾기
SELECT INSTR('AABAACAABBAA', 'B', 2) FROM DUAL; -- 앞에서부터 탐색, 1번째 B의 위치값 찾기
SELECT INSTR('AABAACAABBAA', 'B', 2, 2) FROM DUAL; -- 앞에서 2번째 자리부터 탐색, 2번째 B의 위치값 찾기
SELECT INSTR('AABAACAABBAA', 'B', -1) FROM DUAL; -- 뒤에서부터 탐색, 1번째 B의 위치값 찾기
SELECT INSTR('AABAACAABBAA', 'B', -3, 3) FROM DUAL; -- 뒤에서 3번째 자리부터 탐색, 3번째 B의 위치값 찾기
SELECT INSTR('HELLOWORLD', 'WORLD', 1, 1) FROM DUAL; -- WORLD를 탐색하여 탐색 결과의 시작 위치 반환

SELECT EMAIL,
       INSTR(EMAIL, '@'), -- @ 위치를 찾기
       INSTR(EMAIL, 's', 1, 2)  -- 2번째 s의 위치를 찾기(왼쪽에서 찾도록 매개값 지정)
FROM EMPLOYEE;

/* 
    3) LPAD / RPAD
      - LPAD/RPAD(칼럼|'문자값', 칸 길이, [, '덧붙이려고 하는 문자'])
      - 제시된 칼럼|'문자값'에 임의의 문자를 왼쪽 또는 오른쪽에 덧붙여 최종 N 길이 만큼의 문자열을 반환한다.
      - 문자에 대해 통일감 있게 표시하고자 할 때 사용한다.
*/

-- 20만큼의 길이 중 EMAIL 값은 오른쪽으로 정렬하고 공백을 왼쪽으로 채운다.
SELECT LPAD(EMAIL, 20)
FROM EMPLOYEE;

-- 20만큼의 길이 중 EMAIL 값은 오른쪽으로 정렬하고 '#'을 왼쪽으로 채운다.
SELECT LPAD(EMAIL, 20, '#')
FROM EMPLOYEE;

-- 20만큼의 길이 중 EMAIL 값은 왼쪽으로 정렬하고 공백을 오른쪽으로 채운다.
SELECT RPAD(EMAIL, 20)
FROM EMPLOYEE;

-- 20만큼의 길이 중 EMAIL 값은 왼쪽으로 정렬하고 '$'을 오른쪽으로 채운다.
SELECT RPAD(EMAIL, 20, '$')
FROM EMPLOYEE;

-- 영어 길이는 1칸, 한글 길이는 2칸으로 취급
SELECT LPAD(EMP_ID, 5, '0') AS 사번, EMP_NAME
FROM EMPLOYEE;

SELECT LPAD(EMP_ID, 7, '용') AS 사번, EMP_NAME
FROM EMPLOYEE;

/*
    4) LTRIM / RTRIM
      - LTRIM/RTRIM(칼럼|'문자값' [, '제거하고자 하는 문자'])
      - 문자열의 왼쪽 혹은 오른쪽에서 제거하고자 하는 문자들을 찾아서 제거한 결과를 반환한다.
      - 제거하고자 하는 문자값을 생략 시 기본값으로 공백을 제거한다.
      * 왼쪽 혹은 오른쪽 시작지점부터 탐색하여 제거하고자 하는 문자중 하나에 해당하면 제거 
      * 제거하고자 하는 문자가 아닌 문자를 만날 때까지 제거
*/

-- LTRIM/RTRIM은 제거하고자 하는 문자값 여러개 설정 가능
SELECT LTRIM('   KH') FROM DUAL;
SELECT LTRIM('0001234560', '0') FROM DUAL;
SELECT LTRIM(' 123123KH', '312 ') FROM DUAL;
SELECT RTRIM('KH   ') FROM DUAL;
SELECT RTRIM('00012300004560000', '0' ) FROM DUAL;
SELECT RTRIM(LTRIM('   KH   ')) FROM DUAL;

/*
    5) TRIM
      - TRIM([[LEADING|TRAILING|BOTH] '제거하고자 하는 문자값' FROM] 칼럼|'문자값')
      - 문자값 앞/뒤/양쪽에 있는 지정한 문자를 제거한 나머지를 반환한다. 
      - 제거하고자 하는 문자값을 생략 시 기본적으로 양쪽에 있는 공백을 제거한다. 
      * 왼쪽 혹은 오른쪽 혹은 양쪽 시작지점부터 탐색하여 제거하고자 하는 문자에 해당하면 제거 
      * 제거하고자 하는 문자가 아닌 문자를 만날 때까지 제거
*/

-- TRIM은 제거하고자 하는 문자값 하나만 설정 가능
SELECT TRIM('   KH   ') FROM DUAL;
SELECT TRIM('Z' FROM 'ZZZKHZZZ') FROM DUAL;
SELECT TRIM(BOTH 'Z' FROM 'ZZZKHZZZ') FROM DUAL;
SELECT TRIM(LEADING 'Z' FROM 'ZZZKHZZZ') FROM DUAL;
SELECT TRIM(TRAILING 'Z' FROM 'ZZZKHZZZ') FROM DUAL;

/*
    6) SUBSTR
      - SUBSTR(칼럼|'문자값', POSITION[, LENGTH])
      - POSITION : 시작지점 (n : 앞에서 n번째 자리, -n : 뒤에서 n번째 자리) 
      - LENGTH : 반환길이 (미지정 시 POSITION부터 문자열 끝까지 반환)
      - 문자데이터에서 지정한 위치부터 지정한 개수만큼의 문자열을 추출해서 반환한다.
*/

SELECT SUBSTR('SHOWMETHEMONEY', 7) FROM DUAL;
SELECT SUBSTR('SHOWMETHEMONEY', 5, 2) FROM DUAL;
SELECT SUBSTR('SHOWMETHEMONEY', -8, 3) FROM DUAL;
SELECT SUBSTR('김수한무거북이와두루미삼천갑자동방삭', 2, 5) FROM DUAL;

-- EMPLOYEE 테이블에서 주민번호에 성별을 나타내는 부분만 잘라서 조회 (사원명, 성별코드)
SELECT EMP_NAME AS 사원명, SUBSTR(EMP_NO, 8, 1) AS 성별코드
FROM EMPLOYEE;

-- EMPLOYEE 테이블에서 여자 사원만 조회 (사원명, 성별코드)
SELECT EMP_NAME AS 사원명, SUBSTR(EMP_NO, 8, 1) AS 성별코드
FROM EMPLOYEE
WHERE SUBSTR(EMP_NO, 8, 1) = 2;

-- EMPLOYEE 테이블에서 주민등록번호 첫 번째 자리부터 성별까지를 추출한 결과값 오른쪽에 * 문자를 채워서 조회
-- 991212-2****** 형태로 출력
SELECT RPAD(SUBSTR(EMP_NO, 1, 8), 14, '*') AS 주민등록번호
FROM EMPLOYEE;

-- EMPLOYEE 테이블에서 사원명, 이메일, 아이디(이메일에서 '@' 앞의 문자 값만 출력)를 조회
SELECT EMP_NAME, EMAIL, SUBSTR(EMAIL, 1, INSTR(EMAIL, '@') - 1) AS 아이디
FROM EMPLOYEE;

/*
    7) LOWER / UPPER / INITCAP
      - LOWER/UPPER/INITCAP(컬럼|'문자값')
      - LOWER : 모두 소문자로 변경한다.
      - UPPER : 모두 대문자로 변경한다.
      - INITCAP : 단어 앞 글자마다 대문자로 변경한다.
*/

SELECT LOWER('Welcome To My World!') FROM DUAL;
SELECT UPPER('Welcome To My World!') FROM DUAL;
SELECT INITCAP('welcome to my world!') FROM DUAL;

/*
    8) CONCAT
        - CONCAT(칼럼|'문자값', 칼럼|'문자값')
        - 문자데이터 두 개를 전달받아서 하나로 합친 후 결과를 반환한다.
        * || 와 같은 역할 
        * 단, CONCAT은 두 개의 값만 전달받을 수 있다.
*/

SELECT CONCAT('가나다라', 'ABCD') FROM DUAL;
SELECT '가나다라' || 'ABCD' FROM DUAL;
SELECT CONCAT('가나다라', 'ABCD', '1234') FROM DUAL; -- 에러 발생 (CONCAT은 두 개의 문자데이터만 전달받을 수 있다.)
SELECT CONCAT(CONCAT('가나다라', 'ABCD'), '1234') FROM DUAL;
SELECT '가나다라' || 'ABCD' || '1234' FROM DUAL;

SELECT CONCAT(EMP_ID, EMP_NAME)
FROM EMPLOYEE;

/*
    9) REPLACE
      - REPLACE(칼럼|'문자값', 변경하려고 하는 문자, 변경하고자 하는 문자)
      - 칼럼 또는 문자값에서 "변경하려고 하는 문자"를 "변경하고자 하는 문자"로 변경해서 반환한다.
*/

SELECT REPLACE('서울시 강남구 역삼동', '역삼동', '삼성동') FROM DUAL;

-- EMPLOYEE 테이블에서 이메일의 C##KH.or.kr을 gmail.com 변경해서 조회
SELECT EMP_NAME, REPLACE(EMAIL, 'C##KH.or.kr', 'gmail.com')
FROM EMPLOYEE;


/* <숫자 관련 함수> 
    1) ABS
      - ABS(NUBER)
      - 절대값을 구하는 함수
*/

SELECT ABS(10.9) FROM DUAL;
SELECT ABS(-10.9) FROM DUAL;

/*
    2) MOD
      - MOD(NUMBER, NUMBER)
      - 두 수를 나눈 나머지를 반환해 주는 함수 (자바의 % 연산과 동일하다.)
*/

SELECT 10 % 3 FROM DUAL; -- 에러 발생 (오라클은 % 연산 사용 불가) 
SELECT MOD(10, 3) FROM DUAL;
SELECT MOD(-10, 3) FROM DUAL;
SELECT MOD(10, -3) FROM DUAL;
SELECT MOD(10.9, -3) FROM DUAL;
SELECT MOD(-10.9, 3) FROM DUAL;

/*
    3) ROUND
      - ROUND(NUMBER[, 위치])
      - 위치를 지정하여 반올림해주는 함수
      - 위치 : 기본값 0(.), 양수(소수점 기준으로 오른쪽)와 음수(소수점 기준으로 왼쪽)로 입력가능
*/

SELECT ROUND(123.456) FROM DUAL;
SELECT ROUND(123.567) FROM DUAL;
SELECT ROUND(123.456, 1) FROM DUAL;
SELECT ROUND(123.432, 1) FROM DUAL;
SELECT ROUND(123.456, -1) FROM DUAL;
SELECT ROUND(123.456, -2) FROM DUAL;
SELECT ROUND(123.456, -3) FROM DUAL;
SELECT ROUND(723.456, -3) FROM DUAL;

/*
    4) CEIL
      - CEIL(NUMBER)
      - 소수점 기준으로 올림해주는 함수
*/

SELECT CEIL(123.456, 2) FROM DUAL; -- 에러 발생 (소수점 위치 지정 불가)
SELECT CEIL(123.456) FROM DUAL;

/*
    5) FLOOR
      - FLOOR(NUMBER)
      - 소수점 기준으로 버림하는 함수
*/

SELECT FLOOR(123.456, 2) FROM DUAL; -- 에러 발생 (소수점 위치 지정 불가)
SELECT FLOOR(123.789) FROM DUAL;

/*
    6) TRUNC
      - TRUNC(NUMBER[, 위치])
      - 위치를 지정하여 버림이 가능한 함수
      - 위치 : 기본값 0(.), 양수(소수점 기준으로 오른쪽)와 음수(소수점 기준으로 왼쪽)로 입력가능
*/

SELECT TRUNC(123.456) FROM DUAL;
SELECT TRUNC(123.456, 1) FROM DUAL;
SELECT TRUNC(123.456, -1) FROM DUAL;


/* <날짜 관련 함수>
    1) SYSDATE
      - 시스템의 현재 날짜와 시간을 반환한다.
*/

SELECT SYSDATE FROM DUAL;

/* 
    2) MONTHS_BETWEEN
      - MONTHS_BETWEEN(DATE1, DATE2)
      - 입력받은 두 날짜 사이의 개월 수를 반환한다.
      - 결과값은 NUMBER 타입이다.
      * DATE1 - DATE2 값을 반환하기 때문에 DATE1에 더 큰 날짜(최근 날짜)를 넣어야 함
*/

-- EMPLOYEE 테이블에서 직원명, 입사일, 근무개월수 조회 (근무개월수는 소수점 버림)
SELECT EMP_NAME, HIRE_DATE, FLOOR(MONTHS_BETWEEN(SYSDATE, HIRE_DATE))
FROM EMPLOYEE;

/*
    3) ADD_MONTHS
      - ADD_MONTHS(DATE, NUMBER)
      - 특정 날짜에 입력받는 숫자만큼의 개월 수를 더한 날짜를 리턴한다.
      - 결과값은 DATE 타입이다.
*/

SELECT ADD_MONTHS(SYSDATE, 6) FROM DUAL;
SELECT ADD_MONTHS('2020/12/31', 2) FROM DUAL; -- 날짜 값은 ' ' 안에다 입력 (' ' 안하면 NUMBER 타입으로 인식)

/*
    4) NEXT_DAY
      - NEXT_DAY(DATE, 요일(문자|숫자))
      - 특정 날짜에서 구하려는 요일의 가장 가까운 날짜를 리턴한다.
      - 결과값은 DATE 타입이다.
*/

SELECT SYSDATE, NEXT_DAY(SYSDATE, '목요일') FROM DUAL;
SELECT SYSDATE, NEXT_DAY(SYSDATE, '화') FROM DUAL;
SELECT SYSDATE, NEXT_DAY(SYSDATE, 1) FROM DUAL; -- 1:일요일, 2:월요일, ..., 7:토요일
SELECT SYSDATE, NEXT_DAY(SYSDATE, 'SUNDAY') FROM DUAL; -- 에러 발생 (현재 언어가 KOREAN이기 때문에)
ALTER SESSION SET NLS_LANGUAGE = AMERICAN; -- 언어 변경
SELECT SYSDATE, NEXT_DAY(SYSDATE, 'SUNDAY') FROM DUAL;
SELECT SYSDATE, NEXT_DAY(SYSDATE, 'MON') FROM DUAL;
SELECT SYSDATE, NEXT_DAY(SYSDATE, 6) FROM DUAL;
SELECT SYSDATE, NEXT_DAY(SYSDATE, '목') FROM DUAL; -- 에러 발생 (현재 언어가 AMERICAN이기 때문에)
SELECT SYSDATE, NEXT_DAY(SYSDATE, '목요일') FROM DUAL; -- 에러 발생 (현재 언어가 AMERICAN이기 때문에)
ALTER SESSION SET NLS_LANGUAGE = KOREAN; -- 언어 변경

/*
    5) LAST_DAY
      - LAST_DAY(DATE)
      - 해당 월의 마지막 날짜를 반환한다.
      - 결과값은 DATE 타입이다.   
*/

SELECT LAST_DAY(SYSDATE) FROM DUAL;

-- EMPLOYEE 테이블에서 직원명, 입사일, 입사월의 마지막 날짜 조회
SELECT EMP_NAME, HIRE_DATE, LAST_DAY(HIRE_DATE)
FROM EMPLOYEE;

/*
    6) EXTRACT
      - EXTRACT(YEAR|MONTH|DAY FROM DATE);
      - 특정 날짜에서 연도, 월, 일 정보를 추출해서 반환한다.
        YEAR : 연도만 추출
        MONTH : 월만 추출
        DAY :  일만 추출
      - 결과값은 NUMBER 타입이다.
*/

-- EMPLOYEE 테이블에서 직원명, 입사연도, 입사월, 입사일 조회
SELECT 
    EMP_NAME
    , HIRE_DATE
    , EXTRACT(YEAR FROM HIRE_DATE) AS 연도
    , EXTRACT(MONTH FROM HIRE_DATE)
    , EXTRACT(DAY FROM HIRE_DATE)
FROM EMPLOYEE
ORDER BY HIRE_DATE;
-- ORDER BY EXTRACT(YEAR FROM HIRE_DATE);
-- ORDER BY "연도"; -- ORDER BY는 별칭 사용 가능
-- ORDER BY 3, 4, 5; -- 컬럼 번호를 이용하여 정렬 (3번째, 4번째, 5번째 컬럼 기준으로 오름차순 정렬)

/*
    7) 날짜포멧변경
    - ALTER SESSION SET NLS_DATE_FORMAT = '변경할 날짜 포맷';
*/

ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD HH:MI:SS';
ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY/MM/DD';

SELECT SYSDATE FROM DUAL;


/* <형변환 함수>
    1) TO_CHAR
      - TO_CHAR(날짜|숫자[, 포멧])
      - 날짜 또는 숫자 타입의 데이터를 문자 타입으로 변환해서 반환한다.
      - 결과값은 CHARACTER 타입이다.
*/

-- 숫자 -> 문자
SELECT TO_CHAR(1234) FROM DUAL;
-- 9 : 값이 없을 경우 소수점 이상은 공백으로 소수점 이하는 0으로 표시한다.
-- 0 : 값이 없을 경우 0으로 표시하며 숫자의 길이를 고정적으로 표시 할 때 주로 사용한다.
-- FM : 좌우 9로 치환된 소수점 이상의 공백 및 소수점 이하의 0 제거
SELECT TO_CHAR(1234, '999999') AS "9" FROM DUAL; -- 6칸의 공간을 확보, 오른쪽 정렬, 빈칸은 공백으로 채운다.
SELECT TO_CHAR(1234, '000000') AS "0" FROM DUAL; -- 6칸의 공간을 확보, 오른쪽 정렬, 빈칸은 0으로 채운다.
SELECT TO_CHAR(1234, 'L999999') AS L FROM DUAL; -- 현재 설정된 나라(LOCAL)의 화폐단위를 붙여서 출력, 빈칸은 채우지 않는다. 
SELECT TO_CHAR(1234, '$999999') AS "$" FROM DUAL; -- 달러 표시를 붙여서 출력, 빈칸은 공백으로 채운다.
SELECT TO_CHAR(1234, 'L9999.99') FROM DUAL; -- 소수점 표시 
SELECT TO_CHAR(1234, 'L999,999') AS 콤마 FROM DUAL; -- 자리수 구분 콤마

--EMPLOYEE 테이블에서 사원명, 급여 조회
SELECT EMP_NAME, TO_CHAR(SALARY, 'FML99,999,999')
FROM EMPLOYEE
ORDER BY SALARY;


-- 날짜 -> 문자
SELECT SYSDATE FROM DUAL;
-- 포맷에 한글, 영어키워드 등 쓰려면 " " 로 감싸줘야 함
SELECT TO_CHAR(SYSDATE, 'YYYY"year"MM"월"DD"일" DAY') FROM DUAL; 
SELECT TO_CHAR(SYSDATE, 'AM HH:MI:SS') FROM DUAL;
SELECT TO_CHAR(SYSDATE, 'PM HH24:MI:SS') FROM DUAL;
SELECT TO_CHAR(SYSDATE, 'MON DY, YYYY') FROM DUAL;
SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD(DY)') FROM DUAL;

-- 연도에 대한 포멧 ('Y', 'R')
SELECT TO_CHAR(SYSDATE, 'YYYY'),
       TO_CHAR(SYSDATE, 'RRRR'),
       TO_CHAR(SYSDATE, 'YY'),
       TO_CHAR(SYSDATE, 'RR'),
       TO_CHAR(SYSDATE, 'YEAR')
FROM DUAL;

-- 월에 대한 포멧
SELECT TO_CHAR(SYSDATE, 'MM'),
       TO_CHAR(SYSDATE, 'MON'),
       TO_CHAR(SYSDATE, 'MONTH'),
       TO_CHAR(SYSDATE, 'RM') -- 로마 기호
FROM DUAL;

-- 일에 대한 포멧
SELECT TO_CHAR(SYSDATE, 'DDD'), -- 1년을 기준으로 며칠째
       TO_CHAR(SYSDATE, 'DD'),  -- 1달을 기준으로 며칠째
       TO_CHAR(SYSDATE, 'D')    -- 1주를 기준으로 며칠째
FROM DUAL;

-- 요일에 대한 포멧
SELECT TO_CHAR(SYSDATE, 'DAY'), -- 월요일, 화요일, ...
       TO_CHAR(SYSDATE, 'DY') -- 월, 화, ...
FROM DUAL;

-- 날짜 언어 변경
ALTER SESSION SET NLS_LANGUAGE = AMERICAN;
ALTER SESSION SET NLS_LANGUAGE = KOREAN;

-- EMPLOYEE 테이블에서 직원명, 입사일 조회
-- 단, 입사일은 포멧을 지정해서 조회한다.(2021년 09월 28일(화))
SELECT EMP_NAME, TO_CHAR(HIRE_DATE, 'YYYY"년" MM"월" DD"일"(DY)')
FROM EMPLOYEE;

/*
    2) TO_DATE
      - TO_DATE(숫자|문자[, 포멧])
      - 숫자 또는 문자형 데이터를 '날짜 포멧'에 맞춘 날짜 타입으로 변환해서 반환한다.
      - 결과값은 DATE 타입이다.
      - 날짜 형식
        YYYY : 4자리 년도
        MM : 2자리 월
        DD : 2자리 일
        HH24 : 24시간 단위 시간
        MI : 분
        SS : 초
*/

-- 날짜 포멧 변경
ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD HH:MI:SS';
ALTER SESSION SET NLS_DATE_FORMAT = 'YY/MM/DD';

-- 숫자 -> 날짜
SELECT TO_DATE(20211014) FROM DUAL;
SELECT TO_DATE(20211014190830) FROM DUAL; -- 에러 발생 (형식 지정해야 함)
SELECT TO_DATE(20211014190830,'YYYYMMDD HH24MISS') FROM DUAL;I

-- 문자 -> 날짜
SELECT TO_DATE('20211014') FROM DUAL;
SELECT TO_DATE('20211014 190830') FROM DUAL; -- 에러 발생 (형식 지정해야 함)
SELECT TO_DATE('20211014 190830', 'YYYYMMDD HH24MISS') FROM DUAL;

-- YY와 RR 비교
SELECT TO_DATE('110923', 'YYMMDD') FROM DUAL;
SELECT TO_DATE('990923', 'YYMMDD') FROM DUAL; -- YY : 무조건 현재 세기

SELECT TO_DATE('110923', 'RRMMDD') FROM DUAL;
SELECT TO_DATE('990923', 'RRMMDD') FROM DUAL; -- RR : 해당 값이 50 이상이면 이전 세기, 50 미만이면 현재 세기 

-- EMPLOYEE 테이블에서 1998년 1월 1일 이후에 입사한 사원의 사번, 이름, 입사일 조회
SELECT EMP_ID, EMP_NAME, HIRE_DATE
FROM EMPLOYEE
WHERE HIRE_DATE >= TO_DATE('19980101','YYYYMMDD');
--WHERE HIRE_DATE > TO_DATE('980101', 'RRMMDD');
--WHERE HIRE_DATE > '980101';

/*
    3) TO_NUMBER
      - TO_NUMBER('문자값'[, 포멧])
      - 문자 타입의 데이터를 숫자 타입의 데이터로 변환해서 반환한다.
      - 결과값은 NUMBER 타입이다.
*/

SELECT TO_NUMBER('0123456789') FROM DUAL;
SELECT '123' + '456' FROM DUAL; -- 자동으로 숫자 타입으로 형변환 뒤 연산처리를 해준다.
SELECT '123' + '456A' FROM DUAL; -- 에러 발생(숫자 형태의 문자들만 자동형변환 된다.)
SELECT '10,000,000' + '500,000' FROM DUAL; -- 에러 발생
SELECT TO_NUMBER('10,000,000', '99,999,999') + TO_NUMBER('500,000', '999,999') FROM DUAL;

/* <NULL 처리 함수>
    1) NVL
      - NVL(컬럼, 컬럼값이 NULL일 경우 반환할 값)
      - NULL로 되어있는 컬럼의 값을 인자로 지정한 값으로 변경하여 반환한다.

    2) NVL2
      - NVL2(컬럼, 변경할 값 1, 변경할 값 2)
      - 컬럼 값이 NULL이 아니면 변경할 값 1, 컬럼 값이 NULL이면 변경할 값 2로 변경하여 반환한다.  
    
    3) NULLIF
      - NULLIF(비교대상 1, 비교대상 2)
      - 두 개의 값이 동일하면 NULL 반환, 두 개의 값이 동일하지 않으면 비교대상 1을 반환한다.
*/

SELECT EMP_NAME, BONUS, SALARY, SALARY * NVL2(BONUS, 0.1, 0) AS 보너스금액
FROM EMPLOYEE;

SELECT NULLIF('ZZZZ' , 'ZZZBBBBB')
FROM DUAL;

/* <선택함수>
    여러 가지 경우에 선택을 할 수 있는 기능을 제공하는 함수이다.
    
    1) DECODE
      - DECODE(칼럼|계산식, 조건값 1, 결과값 1, 조건값 2, 결과값 2, ..., 결과값)
      - 비교하고자 하는 값이 조건값과 일치할 경우 그에 해당하는 결과값을 반환해 주는 함수이다.

    2) CASE
      - CASE WHEN 조건식 1 THEN 결과값 1
             WHEN 조건식 2 THEN 결과값 2
             ...
             ELSE 결과값 N
        END
*/

-- EMPLOYEE 테이블에서 사원명, 주민번호, 성별(남/여) 조회
SELECT 
    EMP_NAME AS 사원명 
    , EMP_NO AS 주민번호 
    , CASE 
        WHEN SUBSTR(EMP_NO, 8, 1) = 1 THEN '남'
        WHEN SUBSTR(EMP_NO, 8, 1) = 2 THEN '여' 
     END AS 성별
FROM EMPLOYEE;

-- 급여에 따라 초급, 중급, 고급을 구분하여 사원명, 급여, 구분 출력하기
-- 300만원 미만 : 초급
-- 300만원 이상 500만원 미만 : 중급
-- 500만원 이상 800만원 미만 : 고급
-- 800만원 이상 : 특급
SELECT 
    EMP_NAME AS 사원명
    , SALARY AS 급여
    , CASE  
        WHEN SALARY < 3000000 THEN '초급'
        WHEN SALARY < 5000000 THEN '중급'
        WHEN SALARY < 8000000 THEN '고급'
        ELSE '특급'
      END AS 구분
FROM EMPLOYEE;


 -------------------------- [그룹함수] --------------------------
/*
    <그룹 함수>
    대량의 데이터들로 집계나 통계 같은 작업을 처리해야 하는 경우 사용되는 함수들이다.
    모든 그룹 함수는 NULL 값을 자동으로 제외하고 값이 있는 것들만 계산을 한다.
    따라서 AVG 함수를 사용할 때는 반드시 NVL() 함수와 함께 사용하는 것을 권장한다.
        
    1) SUM
      - SUM(NUMBER)
      - 해당 칼럼 값들의 총 합계를 반환한다.

    2) AVG
      - AVG(NUMBER)
      - 해당 컬럼 값들의 평균을 구해서 반환한다.      

*/

SELECT SUM(SALARY)
FROM EMPLOYEE;

-- 전체 사원의 평균 급여 조회
SELECT AVG(SALARY)
FROM EMPLOYEE;

-- 부서코드가 D1인 사원들의 평균 급여 조회 (소수점 아래는 버림)
SELECT '평균급여 : ' || FLOOR(AVG(SALARY)) AS 평균급여
FROM EMPLOYEE
WHERE DEPT_CODE = 'D1';

/*
    3) MIN / MAX
      - MIN/MAX(모든 타입 컬럼)
      - MIN : 해당 컬럼 값들 중에 가장 작은 값을 반환한다.
      - MAX : 해당 컬럼 값들 중에 가장 큰 값을 반환한다.
*/

-- 전체 사원 중 가장 적은 급여, 가장 큰 급여, 평균 급여 조회
SELECT MIN(SALARY), MAX(SALARY), AVG(SALARY) AS 평균급여
FROM EMPLOYEE;

/*
    4) COUNT
      - COUNT(*|컬럼명|DISTINCT 컬럼명)
      - 컬럼 또는 행의 개수를 세서 반환하는 함수이다.
      - COUNT(*) : 조회 결과에 해당하는 모든 행의 개수를 반환한다.
      - COUNT(컬럼명) : 제시한 컬럼 값이 NULL이 아닌 행의 개수를 반환한다.
      - COUNT(DISTINCT 컬럼명) 해당 컬럼 값의 중복을 제거한 행의 개수를 반환한다. 
*/

-- 직급코드가 J1인 사원 수 조회
SELECT COUNT(*)
FROM EMPLOYEE
WHERE JOB_CODE = 'J1';

-- 남자 사원 수 조회
SELECT COUNT(*)
FROM EMPLOYEE
WHERE SUBSTR(EMP_NO, 8, 1) = 1;

-- 전체 사원 보너스 평균 조회
SELECT AVG(NVL(BONUS, 0))
FROM EMPLOYEE;

