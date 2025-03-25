-- BOOK 테이블/시퀀스
DROP SEQUENCE SEQ_BOOK;
DROP TABLE BOOK CASCADE CONSTRAINTS;

CREATE TABLE BOOK 
(   NO                  NUMBER      PRIMARY KEY
    , TITLE             VARCHAR2(500)
    , PRICE             NUMBER
    , WRITER            VARCHAR2(100)
    , PUBLISHED_DATE    TIMESTAMP
    , DEL_YN            CHAR(1)     DEFAULT 'N'
);

CREATE SEQUENCE SEQ_BOOK NOCACHE NOCYCLE;

-- 도서 등록
INSERT INTO BOOK 
(
    NO
    , TITLE
    , PRICE
    , WRITER
    , PUBLISHED_DATE
)
VALUES
(
    SEQ_BOOK.NEXTVAL
    , ?
    , ?
    , ?
    , ?
)
;

SELECT * FROM BOOK;

-- 도서 목록 조회
SELECT 
    NO
    , TITLE
    , PRICE
    , WRITER
    , PUBLISHED_DATE
    , DEL_YN
FROM BOOK
WHERE DEL_YN = 'N'
ORDER BY NO DESC
;

-- 도서 상세 조회
SELECT 
    NO
    , TITLE
    , PRICE
    , WRITER
    , PUBLISHED_DATE
    , DEL_YN
FROM BOOK
WHERE NO = ?
AND DEL_YN = 'N'
;

-- 도서 삭제
UPDATE BOOK
SET DEL_YN = 'Y'
WHERE NO = ?
;

-------------------------------------------------------------------

-- SNACK 테이블/시퀀스
DROP SEQUENCE SEQ_SNACK;
DROP TABLE SNACK CASCADE CONSTRAINTS;

CREATE SEQUENCE SEQ_SNACK NOCACHE NOCYCLE;

CREATE TABLE SNACK (
    NO                  NUMBER              PRIMARY KEY
    , NAME              VARCHAR2(1000)      NOT NULL
    , PRICE             NUMBER              NOT NULL
    , BRAND             VARCHAR2(1000)      NOT NULL
    , EXPIRATION_DATE    TIMESTAMP  
);


-- 과자 등록
INSERT INTO SNACK 
(
    NO
    , NAME
    , PRICE
    , BRAND
    , EXPIRATION_DATE
) 
VALUES
(
    SEQ_SNACK.NEXTVAL
    , '새우깡'
    , 2000
    , '농심'
    , '2025-01-01'
)
;

-- 과자 상세조회
SELECT 
    NO
    , NAME
    , PRICE
    , BRAND
    , EXPIRATION_DATE
FROM SNACK
WHERE NO = ?
;

-- 과자 목록 조회
SELECT 
    NO
    , NAME
    , PRICE
    , BRAND
    , EXPIRATION_DATE
FROM SNACK
;

-- 과자 삭제
DELETE FROM SNACK
WHERE NO = ?
;

-------------------------------------------------------------------

-- 게시판 테이블/시퀀스
DROP TABLE BOARD CASCADE CONSTRAINTS;
CREATE TABLE BOARD (
    NO          NUMBER  PRIMARY KEY
    , TITLE     VARCHAR2(1000)
    , WRITER    VARCHAR2(1000)
);

DROP SEQUENCE SEQ_BOARD;
CREATE SEQUENCE SEQ_BOARD NOCACHE NOCYCLE;



INSERT INTO BOARD(
    NO
    , TITLE
    , WRITER
)
VALUES 
(
    SEQ_BOARD.NEXTVAL
    , '감바스 먹고싶다'
    , '얍얍얍'
)
;


-------------------------------------------------------------------

-- 유튜브 테이블/시퀀스
CREATE TABLE YOUTUBE (
    NO              NUMBER          PRIMARY KEY
    , LINK          VARCHAR2(2000)
    , TITLE         VARCHAR2(2000)
    , WRITER        VARCHAR2(500)
    , VIEWS         NUMBER
    , ENROLL_DATE   TIMESTAMP
);

CREATE SEQUENCE SEQ_YOUTUBE NOCACHE NOCYCLE;

INSERT INTO YOUTUBE (
    NO
    , LINK
    , TITLE
    , WRITER
    , VIEWS
    , ENROLL_DATE
)
VALUES
(   
    SEQ_YOUTUBE.NEXTVAL
    , 'https://www.youtube.com/watch?v=W4_VPwDYRk8'
    , '오리온 젤리밥 만드는 과정 (젤리공장)'
    , '오리온'
    , 354
    , '2024-05-19'
)
;

COMMIT;


SELECT 
    NO
    , LINK
    , 'https://img.youtube.com/vi/' || SUBSTR(LINK, 33) || '/0.jpg' AS SUMNAIL
    , TITLE
    , WRITER
    , VIEWS
    , ENROLL_DATE
FROM YOUTUBE
;


-- 유튜브 카테고리 테이블/시퀀스
CREATE TABLE YOUTUBE_CATEGORY (
    NO        NUMBER  PRIMARY KEY
    , NAME    VARCHAR(500)
);

CREATE SEQUENCE SEQ_YOUTUBE_CATEGORY NOCACHE NOCYCLE;

INSERT INTO YOUTUBE_CATEGORY (
    NO
    , NAME
)
VALUES
(
    SEQ_YOUTUBE_CATEGORY.NEXTVAL
    , 'New to you'
)
;

COMMIT;