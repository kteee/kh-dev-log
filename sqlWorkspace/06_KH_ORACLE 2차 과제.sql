-- # "SEQ_BOARD" , "SEQ_CATEGORY" 시퀀스 삭제
DROP SEQUENCE SEQ_BOARD;
DROP SEQUENCE SEQ_CATEGORY

-- # "SEQ_BOARD" , "SEQ_CATEGORY" 시퀀스 생성 (캐싱 하지 않도록. 최대값에 도달 후 처음으로 돌아오지 않도록.)
-- # BOARD 테이블 삭제 (외래키 제약조건도 함께 삭제)
-- # BOARD 테이블 생성 (아래 조건 참고)
/*
    NO              숫자타입                    기본키
    , TITLE         가변 문자열 최대 100글자     NULL값 허용하지 않음
    , CONTENT       가변 문자열 최대 4000글자    NULL값 허용하지 않음
    , ENROLL_DATE   시간타입                    기본값은 현재시각
    , DEL_YN        고정 문자열 최대 1글자       Y또는N 둘 중 하나만 입력 가능 , 기본값은 N
    , CATEGORY_NO   숫자타입          
*/

-- # BOARD 테이블의 각 컬럼별로 COMMENT 작성 (문구는 자유롭게 작성)
-- # CATEGORY 테이블 삭제 (외래키 제약조건도 함께 삭제)
-- # CATEGORY 테이블 생성 (아래 조건 참고)
/*
    NO          숫자타입                  기본키
    , NAME      가변 문자열 최대 100글자     중복불허, NULL불허
*/

-- # CATEGORY 테이블의 각 컬럼별로 COMMENT 작성 (문구는 자유롭게 작성)
-- # 테이블에 외래키 추가 (BOARD 테이블의 CATEGORY_NO 컬럼이 CATEGORY 테이블의 기본키를 참조하도록)
-- # 카테고리 5개 등록하기 ("NO"컬럼은 시퀀스 사용)
/*
    1 : JAVA
    2 : ORACLE
    3 : HTML
    4 : CSS
    5 : JavaScript
*/

-- # 트랜잭션 처리(변경사항 저장)
-- # 작성하기(NO컬럼은 시퀀스 사용 , 외래키 주의)
-- # 수정하기(제목수정 , NO칼럼 이용하여 행 식별하기)
-- # 수정하기(내용)
-- # NO칼럼 이용하여 삭제하기(UPDATE 쿼리로 DEL_YN 컬럼 이용하여 처리할 것)
-- # 목록조회 (결과집합 출력헤더에 "카테고리이름" 나오도록),(카테고리가 없는 글도 나오도록),(최신글 먼저)
-- # 검색하기(제목+내용) //제목이나 내용에 해당 글자가 포함되면 조회
-- # 트랜잭션 처리(변경사항 되돌리기)

