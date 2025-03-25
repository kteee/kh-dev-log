-- 세미플젝 주요기능 SQL

-- <MEMBER>

-- 회원가입
INSERT INTO MEMBER(
    NO
    , ID
    , PWD
    , NICK
) 
VALUES(
    SEQ_MEMBER.NEXTVAL
    , ?
    , ?
    , ?
)
;

-- 로그인
SELECT 
    NO
    , ID
    , PWD
    , NICK
    , DEL_YN
    , ENROLL_DATE
    , MODIFY_DATE
FROM MEMBER
WHERE ID = ?
AND PWD = ?
AND DEL_YN = 'N'
;

-- 회원정보 수정 (비밀번호, 닉네임)
UPDATE MEMBER
SET MODIFY_DATE = SYSDATE
    , PWD = ?
    , NICK = ?
WHERE NO = ? 
;

-- 회원탈퇴
UPDATE MEMBER
SET DEL_YN = 'Y'
WHERE NO = ?
AND PWD = ?
;

-- 아이디 중복 검사
SELECT *
FROM MEMBER
WHERE ID = ?
;


-- <BOARD>

-- 게시글 작성
INSERT INTO BOARD 
(
    NO
    , TITLE
    , CONTENT
    , CATEGORY_NO
    , WRITER_NO
)
VALUES
(
    SEQ_BOARD.NEXTVAL
    , ?
    , ?
    , ?
    , ?
)
;


-- 게시글 목록 조회
SELECT 
    B.NO
    , B.TITLE
    , B.CONTENT
    , B.CATEGORY_NO
    , C.NAME        AS CATEGORY_NAME
    , B.WRITER_NO
    , M.NICK        AS WRITER_NICK
    , B.HIT
    , B.CREATE_DATE
    , B.DEL_YN
FROM BOARD B
JOIN MEMBER M ON (B.WRITER_NO = M.NO)
JOIN CATEGORY C ON (B.CATEGORY_NO = C.NO)
WHERE B.DEL_YN='N'
ORDER BY NO DESC
;

-- 게시글 작성
INSERT INTO BOARD
(
    NO
    , TITLE
    , CONTENT
    , CATEGORY_NO
    , WRITER_NO
)
VALUES
(
    SEQ_BOARD.NEXTVAL
    , '제목ZZZ'
    , '내용ㅎㅎ'
    , '1'
    , 10
);


-- 게시글 첨부파일 추가
INSERT ALL
INTO BOARD_ATTACHMENT (NO,REF_NO,CHANGE_NAME) VALUES((SELECT GET_BAROD_ATTACHMENT_NO FROM DUAL), SEQ_BOARD.CURRVAL, ?)
;

-- 첨부파일 시퀀스 값 얻기
SELECT GET_BAROD_ATTACHMENT_NO
FROM DUAL
;

-- 게시글 상세조회
SELECT * 
FROM BOARD
WHERE NO = ?
AND DEL_YN = 'N'
;


COMMIT;


-- NOTICE

-- 공지사항 작성
INSERT INTO NOTICE
(
    NO
    , TITLE
    , CONTENT
    , WRITER_NO
)
VALUES 
(
    SEQ_NOTICE.NEXTVAL
    , ?
    , ?
    , ?
)
;

-- 공지사항 목록 조회
SELECT 
    A.NO
    , A.TITLE
    , A.CONTENT
    , A.WRITER_NO
    , B.NICK       AS WRITER_NICK
    , A.HIT
    , A.CREATE_DATE
    , A.DEL_YN
FROM NOTICE A
JOIN ADMIN B ON (A.WRITER_NO = B.NO)
WHERE A.DEL_YN = 'N'
ORDER BY A.NO DESC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY -- 페이징 처리 
;

-- 공지사항 목록 전체 개수
SELECT COUNT(*)
FROM NOTICE
WHERE DEL_YN = 'N'
;

-- 공지사항 상세 조회
SELECT 
    A.NO
    , A.TITLE
    , A.CONTENT
    , A.WRITER_NO
    , B.NICK       AS WRITER_NICK
    , A.HIT
    , A.CREATE_DATE
    , A.DEL_YN
FROM NOTICE A
JOIN ADMIN B ON (A.WRITER_NO = B.NO)
WHERE A.NO = ?
AND A.DEL_YN = 'N'
;

-- 관리자 로그인
SELECT *
FROM ADMIN
WHERE ID = 'master'
AND PWD = '1234'
AND DEL_YN = 'N'
;

-- 공지사항 다중삭제
UPDATE NOTICE
SET DEL_YN = 'Y'
WHERE NO IN (111,112,113)
;

-- 공지사항 수정
UPDATE NOTICE
SET TITLE = ?
    , CONTETNT = ?
WHERE NO = ? 
AND DEL_YN = 'N'
AND WRITER_NO = ?
;

-- 공지사항 댓글 목록 조회
SELECT 
    N.NO
    ,N.CONTENT
    ,N.REF_NO
    ,N.WRITER_NO
    ,N.CREATE_DATE
    ,N.DEL_YN
    ,M.NICK
FROM NOTICE_REPLY N
JOIN MEMBER M ON (N.WRITER_NO = M.NO)
WHERE N.REF_NO = ?
AND N.DEL_YN = 'N'
;


COMMIT;
ROLLBACK;