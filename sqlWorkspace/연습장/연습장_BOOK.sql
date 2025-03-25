-- 도서 관리 프로그램

-- TABLE
DROP TABLE BOOK CASCADE CONSTRAINTS;
CREATE TABLE BOOK (
    NO                  NUMBER          PRIMARY KEY
    , TITLE             VARCHAR2(100)   NOT NULL
    , GENRE             VARCHAR2(100)
    , AUTHOR            VARCHAR2(100)
    , PRICE             NUMBER          NOT NULL
    , RENTAL_YN         CHAR(1)         DEFAULT 'Y' CHECK ( RENTAL_YN IN ('Y', 'N') )  
    , PUBLICATION_DATE  TIMESTAMP       DEFAULT SYSDATE
    , MODIFY_DATE       TIMESTAMP
    , DEL_YN            CHAR(1)         DEFAULT 'N' CHECK ( DEL_YN IN ('Y', 'N') )  
);

-- SEQUENCE
DROP SEQUENCE SEQ_BOOK;
CREATE SEQUENCE SEQ_BOOK NOCYCLE NOCACHE;

-- 작성하기
INSERT INTO BOOK (
    NO
    , TITLE
    , GENRE
    , AUTHOR
    , PRICE
    ) 
VALUES (
    SEQ_BOOK.NEXTVAL
    , ?
    , ?
    , ?
    , ?
);

-- 가격 수정하기
UPDATE BOOK
SET
    PRICE = ?
WHERE NO = ? 
AND DEL_YN = 'N' ;
    
-- 렌탈여부 수정하기 (대여하기)
UPDATE BOOK
SET
    RENTAL_YN = 'N'
WHERE NO = ?
AND DEL_YN = 'N' ;
    
-- 렌탈여부 수정하기 (반납하기)
UPDATE BOOK
SET
    RENTAL_YN = 'Y'
WHERE NO = ? 
AND DEL_YN = 'N' ;

-- 삭제하기
UPDATE BOOK
SET DEL_YN = 'Y'
WHERE NO = ? ;

-- 상세조회
SELECT * 
FROM BOOK
WHERE NO = ? 
AND DEL_YN = 'N' ;

-- 목록조회 (최신순)
SELECT NO
    , TITLE
    , GENRE
    , AUTHOR
    , PRICE
    , CASE 
        WHEN (RENTAL_YN = 'Y') THEN '대여가능' 
        WHEN (RENTAL_YN = 'N') THEN '대여불가'
        END AS 대여가능여부
    , PUBLICATION_DATE
    , MODIFY_DATE
    , DEL_YN
FROM BOOK
WHERE DEL_YN = 'N'
ORDER BY NO DESC
;

-- 도서 검색 (출판일)
SELECT * 
FROM BOOK
WHERE PUBLICATION_DATE = '2024/09/23';

-- 도서 검색 (제목)
SELECT *
FROM BOOK
WHERE TITLE LIKE '%' || ? || '%' 
AND DEL_YN = 'N' ;

-- 도서 검색 (장르)
SELECT *
FROM BOOK
WHERE GENRE LIKE '%' || ? || '%'
AND DEL_YN = 'N';

-- 도서 검색 (저자)
SELECT *
FROM BOOK
WHERE AUTHOR LIKE '%' || ? || '%'
AND DEL_YN = 'N';