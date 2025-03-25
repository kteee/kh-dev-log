
INSERT INTO REVIEW_BOARD (
    NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING, ENROLL_DATE, MODIFY_DATE, DEL_YN
) VALUES (
    SEQ_REVIEW_BOARD.NEXTVAL, -- 시퀀스 사용 (가정)
    1,  -- MEMBER_NO (가상의 사용자)
    5,  -- HOSPITAL_NO (가상의 병원)
    '정형외과',  -- 진료과
    TO_DATE('2024-03-05', 'YYYY-MM-DD'),  -- 방문 날짜
    '병원 진료 후기',  -- 제목
    '{
        "blocks": [
            {
                "key": "7g0jr",
                "text": "병원 시설이 깨끗하고 친절했어요!",
                "type": "header-two",
                "depth": 0,
                "inlineStyleRanges": [
                    {"offset": 0, "length": 22, "style": "BOLD"},
                    {"offset": 0, "length": 22, "style": "UNDERLINE"}
                ],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "9qa5n",
                "text": "",
                "type": "unstyled",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "d7tvs",
                "text": "의사 선생님이 친절하게 설명해 주셨어요.",
                "type": "unstyled",
                "depth": 0,
                "inlineStyleRanges": [
                    {"offset": 0, "length": 26, "style": "italic"}
                ],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "6ndb2",
                "text": "병원의 장점",
                "type": "unordered-list-item",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "broi0",
                "text": "1. 직원들이 친절함",
                "type": "ordered-list-item",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "afic",
                "text": "2. 대기시간이 짧음",
                "type": "ordered-list-item",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            }
        ],
        "entityMap": {}
    }',
    5,  -- 별점 (5점)
    SYSDATE,  -- 등록 날짜
    NULL,  -- 수정 날짜 없음
    'N'  -- 삭제 여부 (미삭제)
);



INSERT INTO REVIEW_BOARD (
    NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING, ENROLL_DATE, MODIFY_DATE, DEL_YN
) VALUES (
    SEQ_REVIEW_BOARD.NEXTVAL,
    2, 
    3,  
    '피부과',  
    TO_DATE('2024-02-20', 'YYYY-MM-DD'),  
    '피부과 진료 후기',  
    '{
        "blocks": [
            {
                "key": "1a2b3c",
                "text": "여드름 치료를 받았는데 효과가 좋아요!",
                "type": "header-two",
                "depth": 0,
                "inlineStyleRanges": [
                    {"offset": 0, "length": 22, "style": "BOLD"},
                    {"offset": 0, "length": 22, "style": "UNDERLINE"}
                ],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "4d5e6f",
                "text": "병원이 깔끔하고 의사 선생님도 친절했습니다.",
                "type": "unstyled",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "7g8h9i",
                "text": "추천 포인트",
                "type": "unordered-list-item",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "jk1lm2",
                "text": "1. 진료가 세심하고 꼼꼼함",
                "type": "ordered-list-item",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "n3op4q",
                "text": "2. 병원 내부가 깨끗하고 위생적임",
                "type": "ordered-list-item",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            }
        ],
        "entityMap": {}
    }',
    4,
    SYSDATE,
    NULL,
    'N'
);

INSERT INTO REVIEW_BOARD (
    NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING, ENROLL_DATE, MODIFY_DATE, DEL_YN
) VALUES (
    SEQ_REVIEW_BOARD.NEXTVAL,
    3,  
    7,  
    '내과',  
    TO_DATE('2024-01-15', 'YYYY-MM-DD'),  
    '감기 치료 후기',  
    '{
        "blocks": [
            {
                "key": "abc123",
                "text": "감기가 심했는데 빠르게 회복했어요!",
                "type": "header-two",
                "depth": 0,
                "inlineStyleRanges": [
                    {"offset": 0, "length": 25, "style": "BOLD"},
                    {"offset": 0, "length": 25, "style": "UNDERLINE"}
                ],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "def456",
                "text": "처방받은 약이 효과가 좋았고 설명도 잘 해주셨습니다.",
                "type": "unstyled",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "ghi789",
                "text": "장점",
                "type": "unordered-list-item",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "jkl012",
                "text": "1. 대기시간이 짧고 신속한 진료",
                "type": "ordered-list-item",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "mno345",
                "text": "2. 친절한 상담과 정확한 처방",
                "type": "ordered-list-item",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            }
        ],
        "entityMap": {}
    }',
    5,
    SYSDATE,
    NULL,
    'N'
);

INSERT INTO REVIEW_BOARD (
    NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING, ENROLL_DATE, MODIFY_DATE, DEL_YN
) VALUES (
    SEQ_REVIEW_BOARD.NEXTVAL,
    4,  
    2,  
    '치과',  
    TO_DATE('2024-03-01', 'YYYY-MM-DD'),  
    '치과 치료 후기',  
    '{
        "blocks": [
            {
                "key": "xyz987",
                "text": "충치 치료를 받았는데 통증 없이 잘 끝났어요!",
                "type": "header-two",
                "depth": 0,
                "inlineStyleRanges": [
                    {"offset": 0, "length": 30, "style": "BOLD"},
                    {"offset": 0, "length": 30, "style": "UNDERLINE"}
                ],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "uvw654",
                "text": "치과 의사 선생님께서 치료 과정을 친절하게 설명해주셨습니다.",
                "type": "unstyled",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "rst321",
                "text": "치과의 특징",
                "type": "unordered-list-item",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "opq567",
                "text": "1. 최신 장비를 사용한 치료",
                "type": "ordered-list-item",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "lmn890",
                "text": "2. 친절한 의료진과 청결한 환경",
                "type": "ordered-list-item",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            }
        ],
        "entityMap": {}
    }',
    5,
    SYSDATE,
    NULL,
    'N'
);


-------------------------
INSERT INTO NOTICE (
    NO, WRITER, TITLE, CONTENT, ENROLL_DATE, MODIFY_DATE, HIT, DEL_YN
) VALUES (
    SEQ_NOTICE.NEXTVAL,
    1,  
    '공지사항: 시스템 점검 안내',  
    '{
        "blocks": [
            {
                "key": "a1b2c3",
                "text": "시스템 점검 안내",
                "type": "header-two",
                "depth": 0,
                "inlineStyleRanges": [
                    {"offset": 0, "length": 11, "style": "BOLD"},
                    {"offset": 0, "length": 11, "style": "UNDERLINE"}
                ],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "d4e5f6",
                "text": "서비스의 안정성을 위해 아래 일정에 따라 점검이 진행됩니다.",
                "type": "unstyled",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "g7h8i9",
                "text": "점검 일정",
                "type": "unordered-list-item",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "j0k1l2",
                "text": "1. 날짜: 2024년 3월 10일",
                "type": "ordered-list-item",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "m3n4o5",
                "text": "2. 시간: 오전 2시 ~ 오전 6시",
                "type": "ordered-list-item",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            }
        ],
        "entityMap": {}
    }',
    SYSDATE,
    NULL,
    10,
    'N'
);

INSERT INTO NOTICE (
    NO, WRITER, TITLE, CONTENT, ENROLL_DATE, MODIFY_DATE, HIT, DEL_YN
) VALUES (
    SEQ_NOTICE.NEXTVAL,
    2,  
    '신규 서비스 출시 안내',  
    '{
        "blocks": [
            {
                "key": "p1q2r3",
                "text": "새로운 서비스가 출시되었습니다!",
                "type": "header-two",
                "depth": 0,
                "inlineStyleRanges": [
                    {"offset": 0, "length": 17, "style": "BOLD"},
                    {"offset": 0, "length": 17, "style": "UNDERLINE"}
                ],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "s4t5u6",
                "text": "더 나은 편의를 제공하기 위해 새로운 기능을 추가했습니다.",
                "type": "unstyled",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            }
        ],
        "entityMap": {}
    }',
    SYSDATE,
    NULL,
    25,
    'N'
);

INSERT INTO NOTICE (
    NO, WRITER, TITLE, CONTENT, ENROLL_DATE, MODIFY_DATE, HIT, DEL_YN
) VALUES (
    SEQ_NOTICE.NEXTVAL,
    3,  
    '이용 약관 변경 안내',  
    '{
        "blocks": [
            {
                "key": "v7w8x9",
                "text": "이용 약관이 변경되었습니다.",
                "type": "header-two",
                "depth": 0,
                "inlineStyleRanges": [
                    {"offset": 0, "length": 15, "style": "BOLD"},
                    {"offset": 0, "length": 15, "style": "UNDERLINE"}
                ],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "y0z1a2",
                "text": "변경된 약관은 2024년 4월 1일부터 적용됩니다.",
                "type": "unstyled",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            }
        ],
        "entityMap": {}
    }',
    SYSDATE,
    NULL,
    18,
    'N'
);

INSERT INTO NOTICE (
    NO, WRITER, TITLE, CONTENT, ENROLL_DATE, MODIFY_DATE, HIT, DEL_YN
) VALUES (
    SEQ_NOTICE.NEXTVAL,
    4,  
    '긴급 보안 업데이트 공지',  
    '{
        "blocks": [
            {
                "key": "b3c4d5",
                "text": "긴급 보안 업데이트 공지",
                "type": "header-two",
                "depth": 0,
                "inlineStyleRanges": [
                    {"offset": 0, "length": 13, "style": "BOLD"},
                    {"offset": 0, "length": 13, "style": "UNDERLINE"}
                ],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "e6f7g8",
                "text": "보안 강화를 위해 최신 업데이트를 적용해야 합니다.",
                "type": "unstyled",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            }
        ],
        "entityMap": {}
    }',
    SYSDATE,
    NULL,
    30,
    'N'
);




INSERT INTO REVIEW_BOARD (
    NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING, ENROLL_DATE, MODIFY_DATE, DEL_YN
) VALUES (
    SEQ_REVIEW_BOARD.NEXTVAL,
    2,  
    3,  
    '피부과',  
    TO_DATE('2024-02-20', 'YYYY-MM-DD'),  
    '여드름 치료 후기',  
    '{
        "blocks": [
            {
                "key": "abc123",
                "text": "여드름 치료 후 피부가 많이 좋아졌어요!",
                "type": "header-two",
                "depth": 0,
                "inlineStyleRanges": [
                    {"offset": 0, "length": 21, "style": "BOLD"},
                    {"offset": 0, "length": 21, "style": "UNDERLINE"}
                ],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "def456",
                "text": "의사 선생님께서 친절하게 상담해 주셨어요.",
                "type": "unstyled",
                "depth": 0,
                "inlineStyleRanges": [
                    {"offset": 0, "length": 20, "style": "italic"}
                ],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "ghi789",
                "text": "좋았던 점",
                "type": "unordered-list-item",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "jkl012",
                "text": "1. 피부 상태를 자세히 분석해 줌",
                "type": "ordered-list-item",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "mno345",
                "text": "2. 치료 후 관리 방법을 상세히 설명",
                "type": "ordered-list-item",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            }
        ],
        "entityMap": {}
    }',
    4,
    SYSDATE,
    NULL,
    'N'
);

INSERT INTO REVIEW_BOARD (
    NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING, ENROLL_DATE, MODIFY_DATE, DEL_YN
) VALUES (
    SEQ_REVIEW_BOARD.NEXTVAL,
    3,  
    7,  
    '내과',  
    TO_DATE('2024-01-15', 'YYYY-MM-DD'),  
    '감기 진료 후기',  
    '{
        "blocks": [
            {
                "key": "xyz987",
                "text": "감기가 심했는데 빠르게 회복했어요!",
                "type": "header-two",
                "depth": 0,
                "inlineStyleRanges": [
                    {"offset": 0, "length": 19, "style": "BOLD"},
                    {"offset": 0, "length": 19, "style": "UNDERLINE"}
                ],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "uvw654",
                "text": "처방받은 약이 효과가 좋아서 빨리 나았습니다.",
                "type": "unstyled",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "rst321",
                "text": "장점",
                "type": "unordered-list-item",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "opq567",
                "text": "1. 대기 시간이 짧고 진료가 신속함",
                "type": "ordered-list-item",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "lmn890",
                "text": "2. 친절한 상담과 정확한 진료",
                "type": "ordered-list-item",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            }
        ],
        "entityMap": {}
    }',
    5,
    SYSDATE,
    NULL,
    'N'
);


INSERT INTO BOARD_COMMENT (
    NO, MEMBER_NO, BOARD_NO, CONTENT, ENROLL_DATE, MODIFY_DATE, DEL_YN
) VALUES (
    SEQ_BOARD_COMMENT.NEXTVAL,
    1,  
    1,  
    '좋은 정보 감사합니다! 도움이 많이 됐어요.',
    SYSDATE,
    NULL,
    'N'
);

INSERT INTO BOARD_COMMENT (
    NO, MEMBER_NO, BOARD_NO, CONTENT, ENROLL_DATE, MODIFY_DATE, DEL_YN
) VALUES (
    SEQ_BOARD_COMMENT.NEXTVAL,
    2,  
    2,  
    '궁금한 점이 있었는데 덕분에 해결됐어요!',
    SYSDATE,
    NULL,
    'N'
);

INSERT INTO BOARD_COMMENT (
    NO, MEMBER_NO, BOARD_NO, CONTENT, ENROLL_DATE, MODIFY_DATE, DEL_YN
) VALUES (
    SEQ_BOARD_COMMENT.NEXTVAL,
    3,  
    3,  
    '정말 유용한 게시글이네요. 감사합니다!',
    SYSDATE,
    NULL,
    'N'
);

INSERT INTO BOARD_COMMENT (
    NO, MEMBER_NO, BOARD_NO, CONTENT, ENROLL_DATE, MODIFY_DATE, DEL_YN
) VALUES (
    SEQ_BOARD_COMMENT.NEXTVAL,
    4,  
    4,  
    '내용이 잘 정리되어 있어서 이해하기 쉬웠어요!',
    SYSDATE,
    NULL,
    'N'
);

INSERT INTO BOARD_COMMENT (
    NO, MEMBER_NO, BOARD_NO, CONTENT, ENROLL_DATE, MODIFY_DATE, DEL_YN
) VALUES (
    SEQ_BOARD_COMMENT.NEXTVAL,
    5,  
    5,  
    '좋은 의견 공유해주셔서 감사합니다. 공감합니다!',
    SYSDATE,
    NULL,
    'N'
);

INSERT INTO NOTICE (NO, WRITER, TITLE, CONTENT, ENROLL_DATE, MODIFY_DATE, HIT, DEL_YN) 
VALUES (
    SEQ_NOTICE.NEXTVAL,
    1,  
    '서비스 점검 안내',  
    '{
        "blocks": [
            {
                "key": "a1b2c3",
                "text": "서비스 점검 안내",
                "type": "header-two",
                "depth": 0,
                "inlineStyleRanges": [
                    {"offset": 0, "length": 10, "style": "BOLD"},
                    {"offset": 0, "length": 10, "style": "UNDERLINE"}
                ],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "d4e5f6",
                "text": "더 나은 서비스를 제공하기 위해 점검을 진행합니다.",
                "type": "unstyled",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "g7h8i9",
                "text": "점검 일정",
                "type": "unordered-list-item",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "j0k1l2",
                "text": "1. 날짜: 2024년 3월 15일",
                "type": "ordered-list-item",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "m3n4o5",
                "text": "2. 시간: 오전 1시 ~ 오전 5시",
                "type": "ordered-list-item",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            }
        ],
        "entityMap": {}
    }',
    SYSDATE,
    NULL,
    15,
    'N'
);

INSERT INTO NOTICE (NO, WRITER, TITLE, CONTENT, ENROLL_DATE, MODIFY_DATE, HIT, DEL_YN) 
VALUES (
    SEQ_NOTICE.NEXTVAL,
    2,  
    '신규 기능 업데이트 안내',  
    '{
        "blocks": [
            {
                "key": "p1q2r3",
                "text": "신규 기능이 추가되었습니다!",
                "type": "header-two",
                "depth": 0,
                "inlineStyleRanges": [
                    {"offset": 0, "length": 14, "style": "BOLD"},
                    {"offset": 0, "length": 14, "style": "UNDERLINE"}
                ],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "s4t5u6",
                "text": "더 편리한 이용을 위해 새로운 기능을 도입하였습니다.",
                "type": "unstyled",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "v7w8x9",
                "text": "추가된 기능",
                "type": "unordered-list-item",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "y0z1a2",
                "text": "1. 다크 모드 지원",
                "type": "ordered-list-item",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "b3c4d5",
                "text": "2. 자동 로그인 기능 추가",
                "type": "ordered-list-item",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            }
        ],
        "entityMap": {}
    }',
    SYSDATE,
    NULL,
    20,
    'N'
);

INSERT INTO NOTICE (NO, WRITER, TITLE, CONTENT, ENROLL_DATE, MODIFY_DATE, HIT, DEL_YN) 
VALUES (
    SEQ_NOTICE.NEXTVAL,
    3,  
    '이용 약관 변경 안내',  
    '{
        "blocks": [
            {
                "key": "e6f7g8",
                "text": "이용 약관이 변경됩니다.",
                "type": "header-two",
                "depth": 0,
                "inlineStyleRanges": [
                    {"offset": 0, "length": 13, "style": "BOLD"},
                    {"offset": 0, "length": 13, "style": "UNDERLINE"}
                ],
                "entityRanges": [],
                "data": {}
            },
            {
                "key": "h9i0j1",
                "text": "변경된 약관은 2024년 4월 1일부터 적용됩니다.",
                "type": "unstyled",
                "depth": 0,
                "inlineStyleRanges": [],
                "entityRanges": [],
                "data": {}
            }
        ],
        "entityMap": {}
    }',
    SYSDATE,
    NULL,
    18,
    'N'
);




INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 60, 124, '내과', '2024-12-18', '좋은 경험이었습니다', '{"blocks": [{"key": "6yopn", "text": "의사 선생님 설명이 상세해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 15, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 30, 177, '외과', '2024-04-04', '병원이 지저분해요', '{"blocks": [{"key": "f6fwp", "text": "병원 내 편의점이 있어 좋아요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 16, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 2);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 38, 101, '신경과', '2024-06-27', '너무 기다렸어요', '{"blocks": [{"key": "bfabc", "text": "치과 치료도 잘해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 10, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 5, 90, '내과', '2024-12-03', '병원이 지저분해요', '{"blocks": [{"key": "835w0", "text": "응급 처치가 신속했어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 1);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 32, 59, '소아과', '2024-11-21', '다시 방문하고 싶어요', '{"blocks": [{"key": "x6yec", "text": "진료가 빨라서 만족했어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 13, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 6, 134, '치과', '2024-12-07', '병원이 지저분해요', '{"blocks": [{"key": "ozcsl", "text": "입원 시설이 깔끔해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 11, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 13, 27, '안과', '2024-06-08', '좋은 경험이었습니다', '{"blocks": [{"key": "waozh", "text": "물리치료 시설이 좋아요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 3);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 43, 222, '소아과', '2025-02-22', '설명이 부족했어요', '{"blocks": [{"key": "16387", "text": "예약 시스템이 편리해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 3);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 57, 190, '피부과', '2024-09-27', '진료 만족', '{"blocks": [{"key": "ephet", "text": "이비인후과 선생님도 친절해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 15, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 9, 93, '내과', '2024-12-21', '병원이 지저분해요', '{"blocks": [{"key": "hatt3", "text": "진료비도 합리적이었어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 18, 152, '이비인후과', '2025-03-03', '진료가 별로였어요', '{"blocks": [{"key": "oujwm", "text": "물리치료 시설이 좋아요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 2, 220, '피부과', '2024-07-25', '추천합니다', '{"blocks": [{"key": "v4bxk", "text": "간호사분들도 너무 친절합니다", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 15, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 75, 4, '치과', '2024-10-20', '설명이 부족했어요', '{"blocks": [{"key": "svmaw", "text": "약 처방이 잘 맞았어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 13, 157, '안과', '2024-05-11', '설명이 부족했어요', '{"blocks": [{"key": "9ptmx", "text": "환자 대기실이 편안해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 53, 220, '재활의학과', '2025-01-10', '설명이 부족했어요', '{"blocks": [{"key": "riz7q", "text": "간호사분들도 너무 친절합니다", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 15, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 7, 116, '정형외과', '2024-08-15', '진료가 불친절해요', '{"blocks": [{"key": "n6czh", "text": "화장실도 깨끗해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 9, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 3);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 73, 121, '치과', '2024-11-25', '다시 방문하고 싶어요', '{"blocks": [{"key": "s3qi2", "text": "입원 병동이 쾌적해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 11, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 2);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 1, 133, '내과', '2024-08-23', '다시 방문하고 싶어요', '{"blocks": [{"key": "obb8y", "text": "직원들이 친절해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 9, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 21, 164, '신경과', '2024-04-27', '설명이 부족했어요', '{"blocks": [{"key": "acpnb", "text": "진료 상담이 친절해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 11, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 81, 30, '내과', '2024-09-05', '좋은 경험이었습니다', '{"blocks": [{"key": "c9wks", "text": "화장실도 깨끗해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 9, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 1);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 41, 64, '신경과', '2024-03-07', '진료 만족', '{"blocks": [{"key": "bxe3r", "text": "건강 검진 패키지가 좋아요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 14, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 27, 188, '외과', '2024-06-28', '설명이 부족했어요', '{"blocks": [{"key": "j0zv8", "text": "약 처방이 잘 맞았어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 30, 171, '피부과', '2024-04-03', '너무 기다렸어요', '{"blocks": [{"key": "di8m9", "text": "진료가 빨라서 만족했어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 13, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 60, 228, '재활의학과', '2025-02-13', '추천합니다', '{"blocks": [{"key": "oi0io", "text": "화장실도 깨끗해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 9, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 1);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 84, 164, '정형외과', '2024-04-29', '친절한 병원', '{"blocks": [{"key": "rmeq4", "text": "화장실도 깨끗해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 9, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 69, 19, '안과', '2024-07-22', '진료 만족', '{"blocks": [{"key": "vqaur", "text": "정말 훌륭한 병원이네요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 29, 173, '치과', '2024-10-31', '너무 기다렸어요', '{"blocks": [{"key": "x45va", "text": "진료 상담이 친절해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 11, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 86, 134, '정형외과', '2024-05-25', '진료가 불친절해요', '{"blocks": [{"key": "9jyw2", "text": "이비인후과 선생님도 친절해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 15, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 33, 116, '피부과', '2025-01-31', '병원이 지저분해요', '{"blocks": [{"key": "phhw6", "text": "처방전 설명을 잘해줘요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 87, 192, '신경과', '2025-02-13', '진료가 별로였어요', '{"blocks": [{"key": "n75jg", "text": "수술실이 깨끗하고 안전해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 14, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 34, 235, '안과', '2024-11-20', '너무 기다렸어요', '{"blocks": [{"key": "94wa3", "text": "처방전 설명을 잘해줘요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 5, 4, '재활의학과', '2024-04-12', '다시 방문하고 싶어요', '{"blocks": [{"key": "ubqtr", "text": "건강 검진 패키지가 좋아요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 14, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 3);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 73, 225, '재활의학과', '2025-02-13', '진료 만족', '{"blocks": [{"key": "kdniz", "text": "응급 처치가 신속했어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 2);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 4, 29, '치과', '2024-06-09', '좋은 경험이었습니다', '{"blocks": [{"key": "id7vt", "text": "의료 서비스가 만족스러워요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 14, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 48, 64, '피부과', '2025-01-16', '진료 만족', '{"blocks": [{"key": "w7hjx", "text": "정말 훌륭한 병원이네요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 1, 223, '재활의학과', '2024-07-28', '좋은 경험이었습니다', '{"blocks": [{"key": "roi5i", "text": "입원 병동이 쾌적해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 11, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 2);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 67, 67, '이비인후과', '2025-01-06', '설명이 부족했어요', '{"blocks": [{"key": "357bi", "text": "병원 내 동선이 편리해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 13, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 1);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 41, 46, '피부과', '2024-03-08', '설명이 부족했어요', '{"blocks": [{"key": "698v9", "text": "수술실이 깨끗하고 안전해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 14, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 25, 128, '재활의학과', '2024-07-22', '너무 기다렸어요', '{"blocks": [{"key": "4dlyx", "text": "처방전 설명을 잘해줘요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 20, 22, '신경과', '2025-01-29', '진료 만족', '{"blocks": [{"key": "w4pqm", "text": "병원 내 편의점이 있어 좋아요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 16, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 2);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 11, 70, '소아과', '2024-09-07', '좋은 경험이었습니다', '{"blocks": [{"key": "og3jg", "text": "진료 상담이 친절해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 11, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 71, 61, '내과', '2024-10-12', '친절한 병원', '{"blocks": [{"key": "5xkkj", "text": "직원들이 친절해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 9, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 34, 96, '신경과', '2025-01-02', '좋은 경험이었습니다', '{"blocks": [{"key": "uccfb", "text": "안녕하세요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 5, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 21, 70, '안과', '2024-03-17', '진료 만족', '{"blocks": [{"key": "ioumt", "text": "병원 내 동선이 편리해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 13, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 2);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 44, 8, '신경과', '2024-06-29', '진료가 불친절해요', '{"blocks": [{"key": "nz8ef", "text": "환자 대기실이 편안해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 1);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 51, 199, '안과', '2024-12-03', '너무 기다렸어요', '{"blocks": [{"key": "xr90a", "text": "건강 검진 패키지가 좋아요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 14, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 3);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 3, 116, '정형외과', '2024-11-17', '병원이 지저분해요', '{"blocks": [{"key": "6ljkz", "text": "간호사분들도 너무 친절합니다", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 15, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 19, 54, '재활의학과', '2024-11-29', '너무 기다렸어요', '{"blocks": [{"key": "8jzh7", "text": "진료 기록 관리가 잘 돼요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 14, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 81, 87, '외과', '2024-04-03', '설명이 부족했어요', '{"blocks": [{"key": "rdc72", "text": "의료진의 전문성이 뛰어나요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 14, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 2);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 97, 90, '외과', '2024-04-14', '너무 기다렸어요', '{"blocks": [{"key": "29a1t", "text": "의사 선생님 설명이 상세해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 15, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 2);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 60, 124, '내과', '2024-12-18', '좋은 경험이었습니다', '{"blocks": [{"key": "6yopn", "text": "의사 선생님 설명이 상세해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 15, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 30, 177, '외과', '2024-04-04', '병원이 지저분해요', '{"blocks": [{"key": "f6fwp", "text": "병원 내 편의점이 있어 좋아요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 16, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 2);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 38, 101, '신경과', '2024-06-27', '너무 기다렸어요', '{"blocks": [{"key": "bfabc", "text": "치과 치료도 잘해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 10, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 5, 90, '내과', '2024-12-03', '병원이 지저분해요', '{"blocks": [{"key": "835w0", "text": "응급 처치가 신속했어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 1);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 32, 59, '소아과', '2024-11-21', '다시 방문하고 싶어요', '{"blocks": [{"key": "x6yec", "text": "진료가 빨라서 만족했어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 13, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 6, 134, '치과', '2024-12-07', '병원이 지저분해요', '{"blocks": [{"key": "ozcsl", "text": "입원 시설이 깔끔해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 11, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 13, 27, '안과', '2024-06-08', '좋은 경험이었습니다', '{"blocks": [{"key": "waozh", "text": "물리치료 시설이 좋아요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 3);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 43, 222, '소아과', '2025-02-22', '설명이 부족했어요', '{"blocks": [{"key": "16387", "text": "예약 시스템이 편리해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 3);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 57, 190, '피부과', '2024-09-27', '진료 만족', '{"blocks": [{"key": "ephet", "text": "이비인후과 선생님도 친절해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 15, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 9, 93, '내과', '2024-12-21', '병원이 지저분해요', '{"blocks": [{"key": "hatt3", "text": "진료비도 합리적이었어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 18, 152, '이비인후과', '2025-03-03', '진료가 별로였어요', '{"blocks": [{"key": "oujwm", "text": "물리치료 시설이 좋아요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 2, 220, '피부과', '2024-07-25', '추천합니다', '{"blocks": [{"key": "v4bxk", "text": "간호사분들도 너무 친절합니다", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 15, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 75, 4, '치과', '2024-10-20', '설명이 부족했어요', '{"blocks": [{"key": "svmaw", "text": "약 처방이 잘 맞았어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 13, 157, '안과', '2024-05-11', '설명이 부족했어요', '{"blocks": [{"key": "9ptmx", "text": "환자 대기실이 편안해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 53, 220, '재활의학과', '2025-01-10', '설명이 부족했어요', '{"blocks": [{"key": "riz7q", "text": "간호사분들도 너무 친절합니다", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 15, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 7, 116, '정형외과', '2024-08-15', '진료가 불친절해요', '{"blocks": [{"key": "n6czh", "text": "화장실도 깨끗해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 9, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 3);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 73, 121, '치과', '2024-11-25', '다시 방문하고 싶어요', '{"blocks": [{"key": "s3qi2", "text": "입원 병동이 쾌적해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 11, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 2);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 1, 133, '내과', '2024-08-23', '다시 방문하고 싶어요', '{"blocks": [{"key": "obb8y", "text": "직원들이 친절해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 9, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 21, 164, '신경과', '2024-04-27', '설명이 부족했어요', '{"blocks": [{"key": "acpnb", "text": "진료 상담이 친절해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 11, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 81, 30, '내과', '2024-09-05', '좋은 경험이었습니다', '{"blocks": [{"key": "c9wks", "text": "화장실도 깨끗해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 9, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 1);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 41, 64, '신경과', '2024-03-07', '진료 만족', '{"blocks": [{"key": "bxe3r", "text": "건강 검진 패키지가 좋아요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 14, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 27, 188, '외과', '2024-06-28', '설명이 부족했어요', '{"blocks": [{"key": "j0zv8", "text": "약 처방이 잘 맞았어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 30, 171, '피부과', '2024-04-03', '너무 기다렸어요', '{"blocks": [{"key": "di8m9", "text": "진료가 빨라서 만족했어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 13, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 60, 228, '재활의학과', '2025-02-13', '추천합니다', '{"blocks": [{"key": "oi0io", "text": "화장실도 깨끗해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 9, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 1);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 84, 164, '정형외과', '2024-04-29', '친절한 병원', '{"blocks": [{"key": "rmeq4", "text": "화장실도 깨끗해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 9, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 69, 19, '안과', '2024-07-22', '진료 만족', '{"blocks": [{"key": "vqaur", "text": "정말 훌륭한 병원이네요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 29, 173, '치과', '2024-10-31', '너무 기다렸어요', '{"blocks": [{"key": "x45va", "text": "진료 상담이 친절해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 11, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 86, 134, '정형외과', '2024-05-25', '진료가 불친절해요', '{"blocks": [{"key": "9jyw2", "text": "이비인후과 선생님도 친절해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 15, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 33, 116, '피부과', '2025-01-31', '병원이 지저분해요', '{"blocks": [{"key": "phhw6", "text": "처방전 설명을 잘해줘요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 87, 192, '신경과', '2025-02-13', '진료가 별로였어요', '{"blocks": [{"key": "n75jg", "text": "수술실이 깨끗하고 안전해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 14, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 34, 235, '안과', '2024-11-20', '너무 기다렸어요', '{"blocks": [{"key": "94wa3", "text": "처방전 설명을 잘해줘요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 5, 4, '재활의학과', '2024-04-12', '다시 방문하고 싶어요', '{"blocks": [{"key": "ubqtr", "text": "건강 검진 패키지가 좋아요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 14, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 3);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 73, 225, '재활의학과', '2025-02-13', '진료 만족', '{"blocks": [{"key": "kdniz", "text": "응급 처치가 신속했어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 2);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 4, 29, '치과', '2024-06-09', '좋은 경험이었습니다', '{"blocks": [{"key": "id7vt", "text": "의료 서비스가 만족스러워요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 14, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 48, 64, '피부과', '2025-01-16', '진료 만족', '{"blocks": [{"key": "w7hjx", "text": "정말 훌륭한 병원이네요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 1, 223, '재활의학과', '2024-07-28', '좋은 경험이었습니다', '{"blocks": [{"key": "roi5i", "text": "입원 병동이 쾌적해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 11, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 2);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 67, 67, '이비인후과', '2025-01-06', '설명이 부족했어요', '{"blocks": [{"key": "357bi", "text": "병원 내 동선이 편리해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 13, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 1);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 41, 46, '피부과', '2024-03-08', '설명이 부족했어요', '{"blocks": [{"key": "698v9", "text": "수술실이 깨끗하고 안전해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 14, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 25, 128, '재활의학과', '2024-07-22', '너무 기다렸어요', '{"blocks": [{"key": "4dlyx", "text": "처방전 설명을 잘해줘요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 20, 22, '신경과', '2025-01-29', '진료 만족', '{"blocks": [{"key": "w4pqm", "text": "병원 내 편의점이 있어 좋아요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 16, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 2);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 11, 70, '소아과', '2024-09-07', '좋은 경험이었습니다', '{"blocks": [{"key": "og3jg", "text": "진료 상담이 친절해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 11, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 71, 61, '내과', '2024-10-12', '친절한 병원', '{"blocks": [{"key": "5xkkj", "text": "직원들이 친절해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 9, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 34, 96, '신경과', '2025-01-02', '좋은 경험이었습니다', '{"blocks": [{"key": "uccfb", "text": "안녕하세요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 5, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 21, 70, '안과', '2024-03-17', '진료 만족', '{"blocks": [{"key": "ioumt", "text": "병원 내 동선이 편리해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 13, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 2);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 44, 8, '신경과', '2024-06-29', '진료가 불친절해요', '{"blocks": [{"key": "nz8ef", "text": "환자 대기실이 편안해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 1);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 51, 199, '안과', '2024-12-03', '너무 기다렸어요', '{"blocks": [{"key": "xr90a", "text": "건강 검진 패키지가 좋아요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 14, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 3);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 3, 116, '정형외과', '2024-11-17', '병원이 지저분해요', '{"blocks": [{"key": "6ljkz", "text": "간호사분들도 너무 친절합니다", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 15, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 19, 54, '재활의학과', '2024-11-29', '너무 기다렸어요', '{"blocks": [{"key": "8jzh7", "text": "진료 기록 관리가 잘 돼요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 14, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 81, 87, '외과', '2024-04-03', '설명이 부족했어요', '{"blocks": [{"key": "rdc72", "text": "의료진의 전문성이 뛰어나요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 14, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 2);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 97, 90, '외과', '2024-04-14', '너무 기다렸어요', '{"blocks": [{"key": "29a1t", "text": "의사 선생님 설명이 상세해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 15, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 2);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 66, 225, '재활의학과', '2025-03-06', '병원 분위기가 편안해요', '{"blocks": [{"key": "aj2di", "text": "병원 분위기가 편안해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 1);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 66, 181, '재활의학과', '2024-12-26', '수술실이 안전하고 깨끗해요', '{"blocks": [{"key": "jlfie", "text": "수술실이 안전하고 깨끗해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 14, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 16, 97, '정형외과', '2024-08-25', '입원 시설이 좋아요', '{"blocks": [{"key": "41ui7", "text": "입원 시설이 좋아요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 10, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 64, 151, '재활의학과', '2024-04-06', '간호사분들도 친절하세요', '{"blocks": [{"key": "a1r1x", "text": "간호사분들도 친절하세요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 36, 116, '소아과', '2024-05-14', '의사 선생님이 친절하세요', '{"blocks": [{"key": "ree95", "text": "의사 선생님이 친절하세요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 13, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 4, 227, '정형외과', '2024-11-22', '시설이 낡았어요', '{"blocks": [{"key": "ibeql", "text": "시설이 낡았어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 8, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 52, 50, '안과', '2024-05-27', '물리치료가 효과적이에요', '{"blocks": [{"key": "ixspf", "text": "물리치료가 효과적이에요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 80, 70, '외과', '2024-12-16', '접수 과정이 불편했어요', '{"blocks": [{"key": "2xzb5", "text": "접수 과정이 불편했어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 49, 94, '내과', '2024-09-04', '시설이 낡았어요', '{"blocks": [{"key": "99w24", "text": "시설이 낡았어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 8, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 41, 189, '재활의학과', '2024-03-18', '간호사분들도 친절하세요', '{"blocks": [{"key": "k536d", "text": "간호사분들도 친절하세요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 50, 161, '소아과', '2024-07-04', '수술 후 회복이 빠르네요', '{"blocks": [{"key": "1w481", "text": "수술 후 회복이 빠르네요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 13, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 40, 57, '치과', '2024-11-17', '소아과 진료가 꼼꼼해요', '{"blocks": [{"key": "jz5dm", "text": "소아과 진료가 꼼꼼해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 19, 86, '외과', '2024-11-06', '환자 응대가 좋았어요', '{"blocks": [{"key": "dfu0b", "text": "환자 응대가 좋았어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 11, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 67, 146, '정형외과', '2024-09-14', '정밀 검사를 신속하게 해줬어요', '{"blocks": [{"key": "igwml", "text": "정밀 검사를 신속하게 해줬어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 16, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 38, 26, '치과', '2025-01-22', '대기 공간이 너무 좁아요', '{"blocks": [{"key": "9stvs", "text": "대기 공간이 너무 좁아요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 13, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 29, 226, '내과', '2024-08-04', '재활 치료 시설이 잘 갖춰져 있어요', '{"blocks": [{"key": "ap6r2", "text": "재활 치료 시설이 잘 갖춰져 있어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 19, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 19, 52, '이비인후과', '2024-04-05', '처방전 설명을 잘해줘요', '{"blocks": [{"key": "fmdkb", "text": "처방전 설명을 잘해줘요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 78, 158, '신경과', '2024-12-10', '응급실에서 빠르게 조치해줬어요', '{"blocks": [{"key": "osgpm", "text": "응급실에서 빠르게 조치해줬어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 16, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 2);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 44, 151, '피부과', '2025-02-14', '신경과 진료가 믿음직해요', '{"blocks": [{"key": "bn87h", "text": "신경과 진료가 믿음직해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 13, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 28, 131, '치과', '2024-10-29', '진료 후 설명이 부족했어요', '{"blocks": [{"key": "fcdeq", "text": "진료 후 설명이 부족했어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 14, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 1);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 47, 6, '소아과', '2024-03-17', '진료 후 설명이 부족했어요', '{"blocks": [{"key": "8r8wt", "text": "진료 후 설명이 부족했어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 14, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 2);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 49, 238, '재활의학과', '2024-12-26', '의사 소통이 원활했어요', '{"blocks": [{"key": "fkgrd", "text": "의사 소통이 원활했어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 68, 15, '재활의학과', '2024-09-03', '시설이 낡았어요', '{"blocks": [{"key": "95qqk", "text": "시설이 낡았어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 8, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 3);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 15, 198, '치과', '2024-11-17', '의사 소통이 원활했어요', '{"blocks": [{"key": "pjlz1", "text": "의사 소통이 원활했어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 2);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 50, 52, '재활의학과', '2024-12-09', '의료진의 실력이 뛰어나요', '{"blocks": [{"key": "4wglm", "text": "의료진의 실력이 뛰어나요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 13, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 3);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 87, 56, '치과', '2024-07-09', '이 병원 다시 오고 싶어요', '{"blocks": [{"key": "wxnpd", "text": "이 병원 다시 오고 싶어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 14, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 1);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 74, 187, '소아과', '2024-08-31', '예약이 편리했어요', '{"blocks": [{"key": "8b1bo", "text": "예약이 편리했어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 9, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 3);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 29, 36, '피부과', '2024-11-04', '피부과 치료도 만족스러워요', '{"blocks": [{"key": "xs87v", "text": "피부과 치료도 만족스러워요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 14, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 30, 64, '정형외과', '2024-04-14', '청결한 환경이 마음에 들었어요', '{"blocks": [{"key": "e774m", "text": "청결한 환경이 마음에 들었어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 16, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 2, 17, '안과', '2025-02-23', '진료 기록 관리가 잘 돼요', '{"blocks": [{"key": "v0jmd", "text": "진료 기록 관리가 잘 돼요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 14, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 89, 144, '치과', '2024-12-14', '시설이 낡았어요', '{"blocks": [{"key": "iytgr", "text": "시설이 낡았어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 8, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 71, 110, '정형외과', '2024-04-21', '병원 내 편의점이 있어서 좋아요', '{"blocks": [{"key": "fuwrh", "text": "병원 내 편의점이 있어서 좋아요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 17, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 45, 157, '치과', '2024-09-25', '전문의가 많아서 좋아요', '{"blocks": [{"key": "7rqn2", "text": "전문의가 많아서 좋아요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 8, 79, '피부과', '2024-03-28', '입원 시설이 좋아요', '{"blocks": [{"key": "r5pzn", "text": "입원 시설이 좋아요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 10, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 2);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 45, 221, '피부과', '2025-02-11', '수술실이 안전하고 깨끗해요', '{"blocks": [{"key": "1ryjp", "text": "수술실이 안전하고 깨끗해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 14, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 1);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 81, 201, '내과', '2024-09-16', '시설이 낡았어요', '{"blocks": [{"key": "ydap3", "text": "시설이 낡았어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 8, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 3);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 46, 54, '외과', '2025-02-11', '의사 소통이 원활했어요', '{"blocks": [{"key": "i18il", "text": "의사 소통이 원활했어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 1);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 16, 26, '소아과', '2024-09-23', '전문의가 많아서 좋아요', '{"blocks": [{"key": "0kmhk", "text": "전문의가 많아서 좋아요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 3);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 79, 14, '피부과', '2024-10-27', '진료 시간이 짧아서 아쉬웠어요', '{"blocks": [{"key": "iyuf8", "text": "진료 시간이 짧아서 아쉬웠어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 16, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 1);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 98, 241, '외과', '2024-03-23', '간호사분들도 친절하세요', '{"blocks": [{"key": "6prou", "text": "간호사분들도 친절하세요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 69, 203, '내과', '2024-09-12', '수술 후 회복이 빠르네요', '{"blocks": [{"key": "qm8b2", "text": "수술 후 회복이 빠르네요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 13, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 3);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 37, 154, '안과', '2024-10-24', '소아과 진료가 꼼꼼해요', '{"blocks": [{"key": "kh5wj", "text": "소아과 진료가 꼼꼼해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 68, 230, '소아과', '2025-02-15', '건강 검진이 세밀해요', '{"blocks": [{"key": "12jgk", "text": "건강 검진이 세밀해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 11, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 2);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 34, 90, '외과', '2024-12-10', '청결한 환경이 마음에 들었어요', '{"blocks": [{"key": "tqybv", "text": "청결한 환경이 마음에 들었어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 16, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 2);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 30, 152, '외과', '2024-10-04', '간병 서비스가 만족스러워요', '{"blocks": [{"key": "xysjd", "text": "간병 서비스가 만족스러워요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 14, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 82, 149, '치과', '2024-10-29', '신경과 진료가 믿음직해요', '{"blocks": [{"key": "t659f", "text": "신경과 진료가 믿음직해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 13, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 73, 93, '치과', '2024-07-17', '대기 시간이 너무 길었어요', '{"blocks": [{"key": "lai7c", "text": "대기 시간이 너무 길었어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 14, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 1);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 12, 57, '정형외과', '2024-08-24', '시설이 낡았어요', '{"blocks": [{"key": "zhj44", "text": "시설이 낡았어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 8, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 99, 45, '정형외과', '2024-03-13', '시설이 낡았어요', '{"blocks": [{"key": "bdar2", "text": "시설이 낡았어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 8, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 3);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 28, 42, '신경과', '2024-12-10', '약 처방이 적절했어요', '{"blocks": [{"key": "r3mku", "text": "약 처방이 적절했어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 11, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 3);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 66, 225, '재활의학과', '2025-03-06', '병원 분위기가 편안해요', '{"blocks": [{"key": "aj2di", "text": "병원 분위기가 편안해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 1);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 66, 181, '재활의학과', '2024-12-26', '수술실이 안전하고 깨끗해요', '{"blocks": [{"key": "jlfie", "text": "수술실이 안전하고 깨끗해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 14, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 16, 97, '정형외과', '2024-08-25', '입원 시설이 좋아요', '{"blocks": [{"key": "41ui7", "text": "입원 시설이 좋아요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 10, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 64, 151, '재활의학과', '2024-04-06', '간호사분들도 친절하세요', '{"blocks": [{"key": "a1r1x", "text": "간호사분들도 친절하세요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 36, 116, '소아과', '2024-05-14', '의사 선생님이 친절하세요', '{"blocks": [{"key": "ree95", "text": "의사 선생님이 친절하세요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 13, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 4, 227, '정형외과', '2024-11-22', '시설이 낡았어요', '{"blocks": [{"key": "ibeql", "text": "시설이 낡았어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 8, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 52, 50, '안과', '2024-05-27', '물리치료가 효과적이에요', '{"blocks": [{"key": "ixspf", "text": "물리치료가 효과적이에요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 80, 70, '외과', '2024-12-16', '접수 과정이 불편했어요', '{"blocks": [{"key": "2xzb5", "text": "접수 과정이 불편했어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 49, 94, '내과', '2024-09-04', '시설이 낡았어요', '{"blocks": [{"key": "99w24", "text": "시설이 낡았어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 8, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 41, 189, '재활의학과', '2024-03-18', '간호사분들도 친절하세요', '{"blocks": [{"key": "k536d", "text": "간호사분들도 친절하세요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 50, 161, '소아과', '2024-07-04', '수술 후 회복이 빠르네요', '{"blocks": [{"key": "1w481", "text": "수술 후 회복이 빠르네요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 13, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 40, 57, '치과', '2024-11-17', '소아과 진료가 꼼꼼해요', '{"blocks": [{"key": "jz5dm", "text": "소아과 진료가 꼼꼼해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 19, 86, '외과', '2024-11-06', '환자 응대가 좋았어요', '{"blocks": [{"key": "dfu0b", "text": "환자 응대가 좋았어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 11, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 67, 146, '정형외과', '2024-09-14', '정밀 검사를 신속하게 해줬어요', '{"blocks": [{"key": "igwml", "text": "정밀 검사를 신속하게 해줬어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 16, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 38, 26, '치과', '2025-01-22', '대기 공간이 너무 좁아요', '{"blocks": [{"key": "9stvs", "text": "대기 공간이 너무 좁아요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 13, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 29, 226, '내과', '2024-08-04', '재활 치료 시설이 잘 갖춰져 있어요', '{"blocks": [{"key": "ap6r2", "text": "재활 치료 시설이 잘 갖춰져 있어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 19, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 19, 52, '이비인후과', '2024-04-05', '처방전 설명을 잘해줘요', '{"blocks": [{"key": "fmdkb", "text": "처방전 설명을 잘해줘요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 78, 158, '신경과', '2024-12-10', '응급실에서 빠르게 조치해줬어요', '{"blocks": [{"key": "osgpm", "text": "응급실에서 빠르게 조치해줬어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 16, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 2);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 44, 151, '피부과', '2025-02-14', '신경과 진료가 믿음직해요', '{"blocks": [{"key": "bn87h", "text": "신경과 진료가 믿음직해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 13, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 28, 131, '치과', '2024-10-29', '진료 후 설명이 부족했어요', '{"blocks": [{"key": "fcdeq", "text": "진료 후 설명이 부족했어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 14, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 1);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 47, 6, '소아과', '2024-03-17', '진료 후 설명이 부족했어요', '{"blocks": [{"key": "8r8wt", "text": "진료 후 설명이 부족했어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 14, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 2);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 49, 238, '재활의학과', '2024-12-26', '의사 소통이 원활했어요', '{"blocks": [{"key": "fkgrd", "text": "의사 소통이 원활했어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 68, 15, '재활의학과', '2024-09-03', '시설이 낡았어요', '{"blocks": [{"key": "95qqk", "text": "시설이 낡았어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 8, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 3);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 15, 198, '치과', '2024-11-17', '의사 소통이 원활했어요', '{"blocks": [{"key": "pjlz1", "text": "의사 소통이 원활했어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 2);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 50, 52, '재활의학과', '2024-12-09', '의료진의 실력이 뛰어나요', '{"blocks": [{"key": "4wglm", "text": "의료진의 실력이 뛰어나요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 13, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 3);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 87, 56, '치과', '2024-07-09', '이 병원 다시 오고 싶어요', '{"blocks": [{"key": "wxnpd", "text": "이 병원 다시 오고 싶어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 14, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 1);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 74, 187, '소아과', '2024-08-31', '예약이 편리했어요', '{"blocks": [{"key": "8b1bo", "text": "예약이 편리했어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 9, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 3);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 29, 36, '피부과', '2024-11-04', '피부과 치료도 만족스러워요', '{"blocks": [{"key": "xs87v", "text": "피부과 치료도 만족스러워요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 14, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 30, 64, '정형외과', '2024-04-14', '청결한 환경이 마음에 들었어요', '{"blocks": [{"key": "e774m", "text": "청결한 환경이 마음에 들었어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 16, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 2, 17, '안과', '2025-02-23', '진료 기록 관리가 잘 돼요', '{"blocks": [{"key": "v0jmd", "text": "진료 기록 관리가 잘 돼요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 14, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 89, 144, '치과', '2024-12-14', '시설이 낡았어요', '{"blocks": [{"key": "iytgr", "text": "시설이 낡았어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 8, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 71, 110, '정형외과', '2024-04-21', '병원 내 편의점이 있어서 좋아요', '{"blocks": [{"key": "fuwrh", "text": "병원 내 편의점이 있어서 좋아요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 17, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 45, 157, '치과', '2024-09-25', '전문의가 많아서 좋아요', '{"blocks": [{"key": "7rqn2", "text": "전문의가 많아서 좋아요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 8, 79, '피부과', '2024-03-28', '입원 시설이 좋아요', '{"blocks": [{"key": "r5pzn", "text": "입원 시설이 좋아요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 10, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 2);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 45, 221, '피부과', '2025-02-11', '수술실이 안전하고 깨끗해요', '{"blocks": [{"key": "1ryjp", "text": "수술실이 안전하고 깨끗해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 14, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 1);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 81, 201, '내과', '2024-09-16', '시설이 낡았어요', '{"blocks": [{"key": "ydap3", "text": "시설이 낡았어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 8, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 3);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 46, 54, '외과', '2025-02-11', '의사 소통이 원활했어요', '{"blocks": [{"key": "i18il", "text": "의사 소통이 원활했어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 1);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 16, 26, '소아과', '2024-09-23', '전문의가 많아서 좋아요', '{"blocks": [{"key": "0kmhk", "text": "전문의가 많아서 좋아요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 3);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 79, 14, '피부과', '2024-10-27', '진료 시간이 짧아서 아쉬웠어요', '{"blocks": [{"key": "iyuf8", "text": "진료 시간이 짧아서 아쉬웠어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 16, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 1);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 98, 241, '외과', '2024-03-23', '간호사분들도 친절하세요', '{"blocks": [{"key": "6prou", "text": "간호사분들도 친절하세요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 69, 203, '내과', '2024-09-12', '수술 후 회복이 빠르네요', '{"blocks": [{"key": "qm8b2", "text": "수술 후 회복이 빠르네요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 13, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 3);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 37, 154, '안과', '2024-10-24', '소아과 진료가 꼼꼼해요', '{"blocks": [{"key": "kh5wj", "text": "소아과 진료가 꼼꼼해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 12, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 68, 230, '소아과', '2025-02-15', '건강 검진이 세밀해요', '{"blocks": [{"key": "12jgk", "text": "건강 검진이 세밀해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 11, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 2);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 34, 90, '외과', '2024-12-10', '청결한 환경이 마음에 들었어요', '{"blocks": [{"key": "tqybv", "text": "청결한 환경이 마음에 들었어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 16, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 2);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 30, 152, '외과', '2024-10-04', '간병 서비스가 만족스러워요', '{"blocks": [{"key": "xysjd", "text": "간병 서비스가 만족스러워요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 14, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 82, 149, '치과', '2024-10-29', '신경과 진료가 믿음직해요', '{"blocks": [{"key": "t659f", "text": "신경과 진료가 믿음직해요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 13, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 5);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 73, 93, '치과', '2024-07-17', '대기 시간이 너무 길었어요', '{"blocks": [{"key": "lai7c", "text": "대기 시간이 너무 길었어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 14, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 1);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 12, 57, '정형외과', '2024-08-24', '시설이 낡았어요', '{"blocks": [{"key": "zhj44", "text": "시설이 낡았어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 8, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 4);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 99, 45, '정형외과', '2024-03-13', '시설이 낡았어요', '{"blocks": [{"key": "bdar2", "text": "시설이 낡았어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 8, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 3);
INSERT INTO REVIEW_BOARD (NO, MEMBER_NO, HOSPITAL_NO, DEPARTMENT, VISIT_DATE, TITLE, CONTENT, RATING)
    VALUES (SEQ_REVIEW_BOARD.NEXTVAL, 28, 42, '신경과', '2024-12-10', '약 처방이 적절했어요', '{"blocks": [{"key": "r3mku", "text": "약 처방이 적절했어요", "type": "header-two", "depth": 0, "inlineStyleRanges": [{"offset": 0, "length": 11, "style": "center"}], "entityRanges": [], "data": {}}], "entityMap": {}}', 3);

commit;

-- 1. (카테고리 1: 병원) - enroll_date = 2024-02-01, HIT = 215
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 1, 37, '최신 병원 시설 안내', TO_CLOB('{
"blocks": [
{
"key": "ins1_0_0",
"text": "최신 의료 기술이 집약된 병원 시설은 혁신적이며 세련된 디자인을 자랑합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 15, "length": 4, "style": "BOLD"},
{"offset": 27, "length": 6, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins1_0_1",
"text": "환자 중심의 접근 방식과 최첨단 장비 도입으로 치료의 질이 크게 향상되고 있습니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 0, "length": 7, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins1_0_2",
"text": "결론적으로, 이 병원은 신뢰할 수 있는 의료 서비스를 제공하여 환자 만족도를 높입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 10, "length": 8, "style": "BOLD"},
{"offset": 30, "length": 4, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 215, DATE '2024-02-01', NULL, 'N');

-- 2. (카테고리 2: 약국) - enroll_date = 2024-02-09, HIT = 132
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 2, 58, '신약 출시 및 약국 정보', TO_CLOB('{
"blocks": [
{
"key": "ins2_0_0",
"text": "최신 신약 출시 소식과 함께 __고객 맞춤 상담__을 제공하는 약국의 모습을 소개합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 20, "length": 10, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins2_0_1",
"text": "전문 약사가 상시 대기하며, 처방전 관리와 신속한 약 배달 서비스를 제공합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 14, "length": 6, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins2_0_2",
"text": "결국, 이 약국은 고객 만족과 건강 관리에 최선을 다하고 있습니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 8, "length": 7, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 132, DATE '2024-02-09', NULL, 'N');

-- 3. (카테고리 3: 생활) - enroll_date = 2024-02-17, HIT = 356
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 3, 12, '일상 생활의 효율적인 관리 팁', TO_CLOB('{
"blocks": [
{
"key": "ins3_0_0",
"text": "효율적인 생활 관리는 _작은 습관_에서 시작됩니다. 정리된 일상은 스트레스를 줄여줍니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 21, "length": 4, "style": "ITALIC"},
{"offset": 48, "length": 4, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins3_0_1",
"text": "집안 정리, 규칙적인 운동, 그리고 건강한 식습관이 필수입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 0, "length": 6, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins3_0_2",
"text": "결과적으로, 체계적인 생활 관리는 삶의 질을 크게 향상시킵니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 11, "length": 8, "style": "BOLD"},
{"offset": 35, "length": 5, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 356, DATE '2024-02-17', NULL, 'N');

-- 4. (카테고리 4: 보험) - enroll_date = 2024-02-25, HIT = 407
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 4, 99, '맞춤형 보험 상품 안내', TO_CLOB('{
"blocks": [
{
"key": "ins4_0_0",
"text": "다양한 보험 상품 중 고객의 필요에 맞춘 __맞춤형 보장__이 주목받고 있습니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 18, "length": 6, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins4_0_1",
"text": "가입 전 충분한 상담과 비교 분석을 통해 최적의 선택이 이루어집니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 11, "length": 4, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins4_0_2",
"text": "결론적으로, 신중한 선택이 고객의 재정 안정에 기여합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 6, "length": 8, "style": "BOLD"},
{"offset": 28, "length": 6, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 407, DATE '2024-02-25', NULL, 'N');

-- 5. (카테고리 1: 병원) - enroll_date = 2024-03-05, HIT = 323
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 1, 21, '환자 중심 병원 운영 전략', TO_CLOB('{
"blocks": [
{
"key": "ins5_0_0",
"text": "환자 만족도를 높이기 위한 __세심한 케어__와 친절한 서비스가 필수입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 13, "length": 7, "style": "UNDERLINE"},
{"offset": 26, "length": 3, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins5_0_1",
"text": "의료진과 직원 모두가 환자의 의견에 귀 기울이며 지속적인 개선을 추구합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 8, "length": 5, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins5_0_2",
"text": "결국, 환자 중심 운영은 병원의 장기적 성공을 보장합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 10, "length": 8, "style": "BOLD"},
{"offset": 35, "length": 6, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 323, DATE '2024-03-05', NULL, 'N');

-- 6. (카테고리 2: 약국) - enroll_date = 2024-03-13, HIT = 244
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 2, 46, '지역 약국 서비스 개선 방안', TO_CLOB('{
"blocks": [
{
"key": "ins6_0_0",
"text": "지역 약국은 신속한 상담과 친절한 고객 서비스를 제공해야 합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 7, "length": 8, "style": "BOLD"},
{"offset": 22, "length": 5, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins6_0_1",
"text": "정확한 처방 관리와 빠른 약 배달 서비스가 주요 개선 포인트입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 10, "length": 4, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins6_0_2",
"text": "결론적으로, 효율적인 약국 운영은 지역 사회 건강에 기여합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 8, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 244, DATE '2024-03-13', NULL, 'N');

-- 7. (카테고리 3: 생활) - enroll_date = 2024-03-21, HIT = 389
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 3, 77, '생활 속 건강한 습관 만들기', TO_CLOB('{
"blocks": [
{
"key": "ins7_0_0",
"text": "일상의 작은 습관들이 _건강_과 행복을 가져다 줍니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 15, "length": 4, "style": "ITALIC"},
{"offset": 22, "length": 5, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins7_0_1",
"text": "규칙적인 운동과 균형 잡힌 식사가 생활의 질을 높이는 핵심입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 0, "length": 9, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins7_0_2",
"text": "결과적으로, 꾸준한 관리가 일상의 활력을 불어넣습니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 10, "length": 7, "style": "BOLD"},
{"offset": 32, "length": 5, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 389, DATE '2024-03-21', NULL, 'N');

-- 8. (카테고리 4: 보험) - enroll_date = 2024-03-29, HIT = 178
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 4, 65, '보험 가입 시 고려해야 할 사항', TO_CLOB('{
"blocks": [
{
"key": "ins8_0_0",
"text": "보험 가입 전에는 세심한 분석과 충분한 상담이 필요합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 9, "length": 7, "style": "BOLD"},
{"offset": 25, "length": 6, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins8_0_1",
"text": "다양한 보험 상품을 비교하여 자신의 상황에 맞는 최적의 선택을 해야 합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 14, "length": 4, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins8_0_2",
"text": "결론적으로, 신중한 선택이 장기적 재정 안정에 기여합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 8, "style": "BOLD"},
{"offset": 36, "length": 6, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 178, DATE '2024-03-29', NULL, 'N');

-- 9. (카테고리 1: 병원) - enroll_date = 2024-04-06, HIT = 312
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 1, 4, '첨단 의료 기술 도입 사례', TO_CLOB('{
"blocks": [
{
"key": "ins9_0_0",
"text": "최신 의료 장비와 첨단 기술이 접목된 병원은 혁신의 상징입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 18, "length": 6, "style": "ITALIC"},
{"offset": 42, "length": 4, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins9_0_1",
"text": "진료의 정확성과 효율성을 높이기 위해 다양한 시스템이 도입되었습니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 0, "length": 5, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins9_0_2",
"text": "종합하면, 첨단 기술 도입은 환자 치료에 큰 변화를 가져옵니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 10, "length": 6, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 312, DATE '2024-04-06', NULL, 'N');

-- 10. (카테고리 2: 약국) - enroll_date = 2024-04-14, HIT = 277
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 2, 83, '약국 내 고객 상담 혁신', TO_CLOB('{
"blocks": [
{
"key": "ins10_0_0",
"text": "약국에서는 전문 상담을 통해 고객에게 최적의 약품 정보를 제공합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 7, "length": 6, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins10_0_1",
"text": "친절한 서비스와 신속한 응대가 고객 만족의 핵심 요소로 작용합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 22, "length": 4, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins10_0_2",
"text": "결론적으로, 고객 상담의 혁신은 약국 신뢰도를 높입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 7, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 277, DATE '2024-04-14', NULL, 'N');

-- 11. (카테고리 3: 생활) - enroll_date = 2024-04-23, HIT = 198
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 3, 35, '집안 정리 및 시간 관리 요령', TO_CLOB('{
"blocks": [
{
"key": "ins11_0_0",
"text": "깔끔한 집안 정리는 __효율적인 생활__의 첫걸음입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 9, "length": 6, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins11_0_1",
"text": "체계적인 시간 관리와 정리 습관이 스트레스를 줄여줍니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 0, "length": 6, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins11_0_2",
"text": "결론적으로, 정돈된 환경은 삶의 질을 향상시킵니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 10, "length": 8, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 198, DATE '2024-04-23', NULL, 'N');

-- 12. (카테고리 4: 보험) - enroll_date = 2024-05-01, HIT = 355
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 4, 50, '최신 보험 트렌드 및 혜택', TO_CLOB('{
"blocks": [
{
"key": "ins12_0_0",
"text": "최근 보험 업계에서는 __다양한 혜택__과 맞춤 보장이 주목받고 있습니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 11, "length": 7, "style": "UNDERLINE"},
{"offset": 31, "length": 5, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins12_0_1",
"text": "고객 맞춤형 상품 구성과 빠른 청구 절차가 큰 장점입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 8, "length": 4, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins12_0_2",
"text": "결론적으로, 최신 보험 상품은 소비자에게 큰 혜택을 제공합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 8, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 355, DATE '2024-05-01', NULL, 'N');

-- 13. (카테고리 1: 병원) - enroll_date = 2024-05-09, HIT = 432
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 1, 16, '의료 서비스 혁신 및 병원 경영', TO_CLOB('{
"blocks": [
{
"key": "ins13_0_0",
"text": "혁신적인 의료 서비스는 최고의 환자 케어를 가능하게 합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 7, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins13_0_1",
"text": "효율적인 병원 경영과 전문 의료진 운영이 중심입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 0, "length": 4, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins13_0_2",
"text": "결국, 혁신과 경영 전략이 병원의 미래를 좌우합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 10, "length": 8, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 432, DATE '2024-05-09', NULL, 'N');

-- 14. (카테고리 2: 약국) - enroll_date = 2024-05-17, HIT = 289
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 2, 72, '약국 운영 효율성 증대 전략', TO_CLOB('{
"blocks": [
{
"key": "ins14_0_0",
"text": "약국 운영에서는 정확한 재고 관리와 신속한 서비스가 필수입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 8, "length": 7, "style": "BOLD"},
{"offset": 27, "length": 7, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins14_0_1",
"text": "고객 상담과 처방 관리에 있어 최신 시스템 도입이 이루어지고 있습니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 15, "length": 5, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins14_0_2",
"text": "결론적으로, 효율적인 운영은 약국의 신뢰도를 높입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 7, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 289, DATE '2024-05-17', NULL, 'N');

-- 15. (카테고리 3: 생활) - enroll_date = 2024-05-25, HIT = 367
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 3, 8, '생활 비용 절감 및 스마트 소비', TO_CLOB('{
"blocks": [
{
"key": "ins15_0_0",
"text": "효율적인 소비는 똑똑한 비용 절감에서 시작됩니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 10, "length": 6, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins15_0_1",
"text": "예산 관리, 할인 정보 활용, 그리고 불필요한 지출을 줄이는 방법을 소개합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 8, "length": 4, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins15_0_2",
"text": "결국, 스마트 소비는 경제적 자립에 기여합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 10, "length": 8, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 367, DATE '2024-05-25', NULL, 'N');

-- 16. (카테고리 4: 보험) - enroll_date = 2024-06-02, HIT = 421
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 4, 91, '보험 청구 절차와 고객 지원', TO_CLOB('{
"blocks": [
{
"key": "ins16_0_0",
"text": "보험 청구는 신속하고 정확한 처리가 핵심입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 9, "length": 7, "style": "BOLD"},
{"offset": 20, "length": 8, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins16_0_1",
"text": "전문 상담원과 24시간 고객 지원 서비스가 제공됩니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 11, "length": 4, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins16_0_2",
"text": "결론적으로, 효율적인 청구 절차는 고객 만족을 보장합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 8, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 421, DATE '2024-06-02', NULL, 'N');

-- 17. (카테고리 1: 병원) - enroll_date = 2024-06-11, HIT = 298
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 1, 55, '병원 안전 관리 및 예방 시스템', TO_CLOB('{
"blocks": [
{
"key": "ins17_0_0",
"text": "안전한 진료 환경은 필수적이며, 예방 시스템 도입이 중요합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 14, "length": 7, "style": "BOLD"},
{"offset": 27, "length": 9, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins17_0_1",
"text": "정기적인 안전 점검과 직원 교육이 강화됩니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 0, "length": 4, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins17_0_2",
"text": "결론적으로, 체계적 안전 관리는 환자 보호의 핵심입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 10, "length": 8, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 298, DATE '2024-06-11', NULL, 'N');

-- 18. (카테고리 2: 약국) - enroll_date = 2024-06-19, HIT = 354
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 2, 27, '약국 전문성 강화와 서비스 혁신', TO_CLOB('{
"blocks": [
{
"key": "ins18_0_0",
"text": "전문 약사는 정확한 정보와 친절한 서비스를 제공합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 15, "length": 7, "style": "BOLD"},
{"offset": 36, "length": 7, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins18_0_1",
"text": "최신 의료 정보와 지속적인 교육이 서비스 혁신을 이끕니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 20, "length": 4, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins18_0_2",
"text": "결론적으로, 전문성 강화는 약국의 경쟁력을 높입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 7, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 354, DATE '2024-06-19', NULL, 'N');

-- 19. (카테고리 3: 생활) - enroll_date = 2024-06-27, HIT = 412
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 3, 63, '친환경 생활 실천 방법', TO_CLOB('{
"blocks": [
{
"key": "ins19_0_0",
"text": "친환경 생활은 작은 실천에서 시작됩니다. _재활용_과 에너지 절약이 중요합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 6, "length": 8, "style": "BOLD"},
{"offset": 34, "length": 4, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins19_0_1",
"text": "일상에서 환경 보호를 위한 여러 습관들이 도입되고 있습니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 0, "length": 5, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins19_0_2",
"text": "결과적으로, 친환경 생활은 지속 가능한 미래를 위한 필수 요소입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 8, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 412, DATE '2024-06-27', NULL, 'N');

-- 20. (카테고리 4: 보험) - enroll_date = 2024-07-05, HIT = 237
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 4, 40, '보험료 절감 전략 및 보장 확대', TO_CLOB('{
"blocks": [
{
"key": "ins20_0_0",
"text": "효율적인 보험료 관리와 __보장 확대__는 고객의 부담을 줄여줍니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 11, "length": 7, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins20_0_1",
"text": "시장 분석과 전문가 상담을 통해 최적의 보험 상품을 선택합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 18, "length": 4, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins20_0_2",
"text": "결국, 합리적인 보험료는 재정적 안정을 가져옵니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 10, "length": 8, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 237, DATE '2024-07-05', NULL, 'N');

-- 21. (카테고리 1: 병원) - enroll_date = 2024-07-13, HIT = 319
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 1, 33, '의료진 전문성 강화 전략', TO_CLOB('{
"blocks": [
{
"key": "ins21_0_0",
"text": "전문 의료진의 지속적인 교육은 병원 서비스의 핵심입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 10, "length": 6, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins21_0_1",
"text": "최신 의료 기술과 연구 결과를 바탕으로 한 전문성 강화가 이루어집니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 4, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins21_0_2",
"text": "결과적으로, 전문 의료진은 환자 치료의 질을 높입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 8, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 319, DATE '2024-07-13', NULL, 'N');

-- 22. (카테고리 2: 약국) - enroll_date = 2024-07-21, HIT = 264
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 2, 19, '약국 재고 관리 및 신선도 유지', TO_CLOB('{
"blocks": [
{
"key": "ins22_0_0",
"text": "정확한 재고 관리는 __약국 운영__의 기본입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 9, "length": 7, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins22_0_1",
"text": "신선한 약품 관리와 효율적인 재고 시스템 도입이 이루어집니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 14, "length": 4, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins22_0_2",
"text": "결론적으로, 체계적인 재고 관리는 고객 신뢰도를 높입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 8, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 264, DATE '2024-07-21', NULL, 'N');

-- 23. (카테고리 3: 생활) - enroll_date = 2024-07-29, HIT = 201
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 3, 90, '생활 편의를 위한 스마트 기기 활용', TO_CLOB('{
"blocks": [
{
"key": "ins23_0_0",
"text": "스마트 기기는 일상의 편리함을 극대화합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 9, "length": 8, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins23_0_1",
"text": "자동화 기능과 연결성이 생활을 더욱 윤택하게 만듭니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 0, "length": 4, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins23_0_2",
"text": "결과적으로, 스마트 기기 활용은 현대 생활의 필수 요소입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 8, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 201, DATE '2024-07-29', NULL, 'N');

-- 24. (카테고리 4: 보험) - enroll_date = 2024-08-06, HIT = 329
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 4, 47, '종합 보험 상품 비교 분석', TO_CLOB('{
"blocks": [
{
"key": "ins24_0_0",
"text": "다양한 보험 상품을 비교하고 __분석__하는 것이 중요합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 14, "length": 7, "style": "BOLD"},
{"offset": 26, "length": 6, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins24_0_1",
"text": "각 상품의 보장 내용과 가입 조건을 꼼꼼히 확인해야 합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 8, "length": 4, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins24_0_2",
"text": "결론적으로, 신중한 분석이 최적의 보험 선택으로 이어집니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 8, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 329, DATE '2024-08-06', NULL, 'N');

-- 25. (카테고리 1: 병원) - enroll_date = 2024-08-14, HIT = 372
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 1, 6, '지역 병원 발전과 서비스 혁신', TO_CLOB('{
"blocks": [
{
"key": "ins25_0_0",
"text": "지역 병원은 현지 의료 수요에 맞춰 혁신적인 서비스를 제공합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 11, "length": 6, "style": "BOLD"},
{"offset": 33, "length": 11, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins25_0_1",
"text": "환자 맞춤 케어와 최신 의료 장비의 도입이 두드러집니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 15, "length": 7, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins25_0_2",
"text": "결국, 지역 병원의 발전은 전체 의료 서비스 혁신에 기여합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 8, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 372, DATE '2024-08-14', NULL, 'N');

-- 26. (카테고리 2: 약국) - enroll_date = 2024-08-22, HIT = 298
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 2, 80, '온라인 약국 서비스 확장', TO_CLOB('{
"blocks": [
{
"key": "ins26_0_0",
"text": "디지털 시대, 온라인 약국은 편리한 서비스 제공의 핵심입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 14, "length": 9, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins26_0_1",
"text": "24시간 주문 및 빠른 배송 시스템이 고객 만족을 높입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 5, "length": 4, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins26_0_2",
"text": "결국, 온라인 서비스 확장은 약국의 경쟁력을 강화합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 8, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 298, DATE '2024-08-22', NULL, 'N');

-- 27. (카테고리 3: 생활) - enroll_date = 2024-09-01, HIT = 265
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 3, 22, '일상 스트레스 해소와 휴식 방법', TO_CLOB('{
"blocks": [
{
"key": "ins27_0_0",
"text": "스트레스 해소를 위한 효과적인 휴식 방법을 추천합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 10, "length": 10, "style": "ITALIC"},
{"offset": 37, "length": 9, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins27_0_1",
"text": "자연 속 산책, 명상, 그리고 취미 생활이 도움이 됩니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 0, "length": 7, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins27_0_2",
"text": "결과적으로, 꾸준한 휴식은 일상의 에너지를 재충전시킵니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 8, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 265, DATE '2024-09-01', NULL, 'N');

-- 28. (카테고리 4: 보험) - enroll_date = 2024-09-09, HIT = 189
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 4, 59, '보험 사기 예방 및 안전 관리', TO_CLOB('{
"blocks": [
{
"key": "ins28_0_0",
"text": "보험 사기를 예방하기 위한 체계적이고 엄격한 관리가 필요합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 20, "length": 7, "style": "BOLD"},
{"offset": 33, "length": 8, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins28_0_1",
"text": "고객 정보 보호와 정기적인 내부 감사가 필수적입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 10, "length": 5, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins28_0_2",
"text": "결과적으로, 안전 관리는 보험 신뢰도 향상의 핵심입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 8, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 189, DATE '2024-09-09', NULL, 'N');

-- 29. (카테고리 1: 병원) - enroll_date = 2024-09-17, HIT = 341
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 1, 14, '병원 안전 관리 및 예방 시스템', TO_CLOB('{
"blocks": [
{
"key": "ins29_0_0",
"text": "안전한 진료 환경은 필수적이며, 예방 시스템 도입이 중요합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 14, "length": 7, "style": "BOLD"},
{"offset": 27, "length": 9, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins29_0_1",
"text": "정기적인 안전 점검과 직원 교육이 강화됩니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 0, "length": 4, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins29_0_2",
"text": "결론적으로, 체계적 안전 관리는 환자 보호의 핵심입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 10, "length": 8, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 341, DATE '2024-09-17', NULL, 'N');

-- 30. (카테고리 2: 약국) - enroll_date = 2024-09-25, HIT = 312
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 2, 68, '약품 안전 관리 및 정보 제공', TO_CLOB('{
"blocks": [
{
"key": "ins30_0_0",
"text": "약품 안전은 철저한 관리와 정확한 정보 제공에서 시작됩니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 10, "length": 7, "style": "BOLD"},
{"offset": 29, "length": 8, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins30_0_1",
"text": "약국은 최신 기술로 약품 정보를 실시간으로 업데이트합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 16, "length": 4, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins30_0_2",
"text": "결과적으로, 안전 관리는 고객의 신뢰를 높입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 7, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 312, DATE '2024-09-25', NULL, 'N');

-- 31. (카테고리 3: 생활) - enroll_date = 2024-10-03, HIT = 287
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 3, 11, '삶의 질 향상을 위한 자기 계발', TO_CLOB('{
"blocks": [
{
"key": "ins31_0_0",
"text": "자기 계발은 꾸준한 노력과 _열정_이 필요합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 8, "length": 7, "style": "BOLD"},
{"offset": 30, "length": 7, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins31_0_1",
"text": "자신의 목표를 설정하고, 체계적으로 발전 계획을 수립합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 10, "length": 4, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins31_0_2",
"text": "결과적으로, 자기 계발은 삶의 질을 높이는 핵심 요소입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 8, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 287, DATE '2024-10-03', NULL, 'N');

-- 32. (카테고리 4: 보험) - enroll_date = 2024-10-11, HIT = 354
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 4, 86, '디지털 시대의 보험 서비스 혁신', TO_CLOB('{
"blocks": [
{
"key": "ins32_0_0",
"text": "디지털 기술의 도입은 __보험 서비스__의 혁신을 불러옵니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 10, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins32_0_1",
"text": "고객 데이터 분석과 맞춤형 상품 제공이 핵심입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 8, "length": 4, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins32_0_2",
"text": "결론적으로, 디지털 혁신은 보험 산업의 미래를 밝힙니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 8, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 354, DATE '2024-10-11', NULL, 'N');

-- 33. (카테고리 1: 병원) - enroll_date = 2024-10-19, HIT = 301
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 1, 42, '진료 만족도 향상을 위한 병원 전략', TO_CLOB('{
"blocks": [
{
"key": "ins33_0_0",
"text": "환자 만족은 친절한 서비스와 정확한 진료에서 비롯됩니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 7, "length": 7, "style": "BOLD"},
{"offset": 30, "length": 8, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins33_0_1",
"text": "의료진의 전문성과 최신 진료 기법이 도입되고 있습니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 15, "length": 5, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins33_0_2",
"text": "결론적으로, 전략적 운영은 진료 만족도를 극대화합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 8, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 301, DATE '2024-10-19', NULL, 'N');

-- 34. (카테고리 2: 약국) - enroll_date = 2024-10-27, HIT = 276
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 2, 31, '약국 매출 증대를 위한 마케팅 전략', TO_CLOB('{
"blocks": [
{
"key": "ins34_0_0",
"text": "혁신적인 마케팅 전략은 약국 매출 증대의 핵심입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 16, "length": 6, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins34_0_1",
"text": "온라인 프로모션과 고객 피드백을 적극 활용합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 8, "length": 4, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins34_0_2",
"text": "결과적으로, 효과적인 마케팅은 매출 향상에 기여합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 8, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 276, DATE '2024-10-27', NULL, 'N');

-- 35. (카테고리 3: 생활) - enroll_date = 2024-11-04, HIT = 324
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 3, 9, '생활 리듬과 건강 관리의 중요성', TO_CLOB('{
"blocks": [
{
"key": "ins35_0_0",
"text": "일상의 리듬을 잘 유지하면 건강과 행복이 따라옵니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 21, "length": 7, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins35_0_1",
"text": "규칙적인 생활 습관과 충분한 휴식이 필수입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 10, "length": 4, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins35_0_2",
"text": "결론적으로, 균형 잡힌 생활은 전반적인 삶의 질을 향상시킵니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 8, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 324, DATE '2024-11-04', NULL, 'N');

-- 36. (카테고리 4: 보험) - enroll_date = 2024-11-12, HIT = 351
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 4, 53, '보험 계약 조건 및 보장 내용 이해', TO_CLOB('{
"blocks": [
{
"key": "ins36_0_0",
"text": "보험 계약의 조건은 상세하게 검토되어야 하며, 명확한 보장이 필수입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 16, "length": 10, "style": "BOLD"},
{"offset": 47, "length": 8, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins36_0_1",
"text": "전문가의 상담을 통해 조건을 명확히 이해하는 것이 중요합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 14, "length": 4, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins36_0_2",
"text": "결과적으로, 올바른 이해는 최적의 보험 선택으로 이어집니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 8, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 351, DATE '2024-11-12', NULL, 'N');

-- 37. (카테고리 1: 병원) - enroll_date = 2024-11-20, HIT = 398
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 1, 75, '스마트 병원 구축의 미래', TO_CLOB('{
"blocks": [
{
"key": "ins37_0_0",
"text": "스마트 기술 도입은 병원 운영에 혁신적인 변화를 가져옵니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 18, "length": 10, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins37_0_1",
"text": "첨단 IT 솔루션과 자동화 시스템이 의료 환경을 개선합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 8, "length": 4, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins37_0_2",
"text": "결론적으로, 스마트 병원은 미래 의료의 표준이 될 것입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 10, "length": 8, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 398, DATE '2024-11-20', NULL, 'N');

-- 38. (카테고리 2: 약국) - enroll_date = 2024-11-28, HIT = 287
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 2, 20, '약국 고객 만족도 향상', TO_CLOB('{
"blocks": [
{
"key": "ins38_0_0",
"text": "고객 만족을 위해 신뢰와 친절한 상담이 중요합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 15, "length": 5, "style": "BOLD"},
{"offset": 26, "length": 7, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins38_0_1",
"text": "약국은 정기적인 고객 피드백을 수집하여 서비스 개선에 반영합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 20, "length": 4, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins38_0_2",
"text": "결과적으로, 체계적인 피드백은 고객 만족도를 높이는 열쇠입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 7, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 287, DATE '2024-11-28', NULL, 'N');

-- 39. (카테고리 3: 생활) - enroll_date = 2024-12-06, HIT = 376
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 3, 49, '효과적인 가사 관리와 시간 절약', TO_CLOB('{
"blocks": [
{
"key": "ins39_0_0",
"text": "가사 관리는 체계적인 계획과 효율적인 시간 분배가 필요합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 9, "length": 11, "style": "BOLD"},
{"offset": 36, "length": 10, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins39_0_1",
"text": "가족 구성원 모두의 참여와 역할 분담이 중요합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 0, "length": 7, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins39_0_2",
"text": "결과적으로, 효율적인 가사 관리는 여유로운 생활을 만들어냅니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 8, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 376, DATE '2024-12-06', NULL, 'N');

-- 40. (카테고리 4: 보험) - enroll_date = 2024-12-14, HIT = 345
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 4, 77, '보험 전문가의 가입 가이드', TO_CLOB('{
"blocks": [
{
"key": "ins40_0_0",
"text": "보험 가입은 신중한 결정이며, __전문가__의 조언이 필요합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 10, "length": 7, "style": "BOLD"},
{"offset": 40, "length": 8, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins40_0_1",
"text": "가입 조건과 보장 내용을 꼼꼼히 확인하는 절차가 중요합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 15, "length": 4, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins40_0_2",
"text": "결론적으로, 전문가의 가이드는 올바른 보험 선택으로 이어집니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 8, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 345, DATE '2024-12-14', NULL, 'N');

-- 41. (카테고리 1: 병원) - enroll_date = 2024-12-22, HIT = 367
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 1, 10, '첨단 의료 인프라와 환자 관리', TO_CLOB('{
"blocks": [
{
"key": "ins41_0_0",
"text": "첨단 인프라 구축은 효율적인 환자 관리를 가능하게 합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 10, "length": 10, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins41_0_1",
"text": "환자 데이터 관리와 정기적인 모니터링이 핵심입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 8, "length": 4, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins41_0_2",
"text": "결과적으로, 첨단 인프라는 병원 경쟁력을 강화합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 8, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 367, DATE '2024-12-22', NULL, 'N');

-- 42. (카테고리 2: 약국) - enroll_date = 2025-01-01, HIT = 290
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 2, 95, '약국 전문성 강화와 서비스 혁신', TO_CLOB('{
"blocks": [
{
"key": "ins42_0_0",
"text": "전문 약사는 정확한 정보와 친절한 서비스를 제공합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 15, "length": 7, "style": "BOLD"},
{"offset": 36, "length": 7, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins42_0_1",
"text": "최신 약품 정보를 바탕으로 상담이 진행됩니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 10, "length": 4, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins42_0_2",
"text": "결론적으로, 전문성 강화는 약국의 경쟁력을 높입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 7, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 290, DATE '2025-01-01', NULL, 'N');

-- 43. (카테고리 3: 생활) - enroll_date = 2025-01-09, HIT = 278
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 3, 30, '일상에서의 창의적 문제 해결', TO_CLOB('{
"blocks": [
{
"key": "ins43_0_0",
"text": "창의적인 아이디어는 일상의 작은 문제에서 출발합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 13, "length": 8, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins43_0_1",
"text": "문제 상황에 따라 다양한 해결책을 모색하는 것이 중요합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 0, "length": 4, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins43_0_2",
"text": "결과적으로, 창의적 해결은 생활의 질을 높입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 8, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 278, DATE '2025-01-09', NULL, 'N');

-- 44. (카테고리 4: 보험) - enroll_date = 2025-01-17, HIT = 312
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 4, 77, '신뢰받는 보험 서비스 구축', TO_CLOB('{
"blocks": [
{
"key": "ins44_0_0",
"text": "신뢰는 투명한 정보 공개와 철저한 서비스 관리에서 시작됩니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 10, "length": 8, "style": "BOLD"},
{"offset": 38, "length": 8, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins44_0_1",
"text": "고객 중심의 상담과 빠른 청구 처리가 강조됩니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 15, "length": 4, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins44_0_2",
"text": "결론적으로, 신뢰받는 서비스는 보험 가입 후 만족도를 높입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 8, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 312, DATE '2025-01-17', NULL, 'N');

-- 45. (카테고리 1: 병원) - enroll_date = 2025-01-25, HIT = 354
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 1, 16, '의료 서비스 혁신 및 병원 경영', TO_CLOB('{
"blocks": [
{
"key": "ins45_0_0",
"text": "최신 의료 기술과 전문성 강화는 병원 운영의 핵심입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 16, "length": 7, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins45_0_1",
"text": "환자 케어 개선과 효율적인 경영 전략이 동시에 추진됩니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 10, "length": 4, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins45_0_2",
"text": "결과적으로, 혁신적 경영은 병원의 장기적 성공을 보장합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 8, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 354, DATE '2025-01-25', NULL, 'N');

-- 46. (카테고리 2: 약국) - enroll_date = 2025-02-02, HIT = 321
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 2, 44, '신뢰받는 약국 운영의 비결', TO_CLOB('{
"blocks": [
{
"key": "ins46_0_0",
"text": "고객 만족은 정확한 정보 제공과 친절한 상담에서 시작됩니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 14, "length": 7, "style": "BOLD"},
{"offset": 39, "length": 7, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins46_0_1",
"text": "전문 약사는 최신 약품 정보를 바탕으로 상담합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 10, "length": 4, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins46_0_2",
"text": "결론적으로, 신뢰받는 운영은 고객의 건강을 지킵니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 7, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 321, DATE '2025-02-02', NULL, 'N');

-- 47. (카테고리 3: 생활) - enroll_date = 2025-02-10, HIT = 354
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 3, 66, '생활 속 소소한 행복 찾기', TO_CLOB('{
"blocks": [
{
"key": "ins47_0_0",
"text": "작은 일상의 순간들이 행복의 씨앗이 됩니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 23, "length": 5, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins47_0_1",
"text": "가족과 친구, 그리고 취미 생활에서 즐거움을 찾습니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 0, "length": 7, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins47_0_2",
"text": "결과적으로, 소소한 행복이 일상을 풍요롭게 만듭니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 8, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 354, DATE '2025-02-10', NULL, 'N');

-- 48. (카테고리 4: 보험) - enroll_date = 2025-02-18, HIT = 298
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 4, 13, '보험 가입 후 관리 및 업데이트', TO_CLOB('{
"blocks": [
{
"key": "ins48_0_0",
"text": "보험 계약 후에도 정기적인 검토와 __업데이트__가 필요합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 13, "length": 11, "style": "BOLD"},
{"offset": 38, "length": 8, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins48_0_1",
"text": "보험 조건 변동과 신규 혜택에 주목해야 합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 10, "length": 4, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins48_0_2",
"text": "결과적으로, 꾸준한 관리가 보험의 가치를 극대화합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 8, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 298, DATE '2025-02-18', NULL, 'N');

-- 49. (카테고리 1: 병원) - enroll_date = 2025-02-27, HIT = 336
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 1, 1, '최신 의료 트렌드와 병원 혁신', TO_CLOB('{
"blocks": [
{
"key": "ins49_0_0",
"text": "급변하는 의료 트렌드는 혁신적인 병원 운영을 요구합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 27, "length": 4, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins49_0_1",
"text": "새로운 진료 기법과 스마트 시스템 도입이 빠르게 진행되고 있습니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 10, "length": 5, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins49_0_2",
"text": "결론적으로, 최신 트렌드는 병원 혁신의 원동력이 됩니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 8, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 336, DATE '2025-02-27', NULL, 'N');

-- 50. (카테고리 2: 약국) - enroll_date = 2025-03-07, HIT = 412
INSERT INTO BOARD (NO, CATEGORY_NO, MEMBER_NO, TITLE, CONTENT, HIT, ENROLL_DATE, MODIFY_DATE, DEL_YN) VALUES
(SEQ_BOARD.NEXTVAL, 2, 2, '최신 약국 트렌드와 고객 서비스', TO_CLOB('{
"blocks": [
{
"key": "ins50_0_0",
"text": "현대 약국은 혁신적인 서비스와 첨단 기술을 도입하고 있습니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 11, "style": "BOLD"},
{"offset": 38, "length": 7, "style": "UNDERLINE"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins50_0_1",
"text": "신속한 상담과 정확한 정보 제공이 고객 만족을 좌우합니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 16, "length": 4, "style": "ITALIC"}
],
"entityRanges": [],
"data": {}
},
{
"key": "ins50_0_2",
"text": "결론적으로, 최신 트렌드는 약국 경쟁력 강화의 핵심입니다.",
"type": "unstyled",
"depth": 0,
"inlineStyleRanges": [
{"offset": 12, "length": 8, "style": "BOLD"}
],
"entityRanges": [],
"data": {}
}
],
"entityMap": {}
}'), 412, DATE '2025-03-07', NULL, 'N');

commit;

INSERT INTO NOTIFICATION (NO, MEMBER_NO, CONTENT)
VALUES (SEQ_NOTIFICATION.NEXTVAL, 1, '회원님의 게시글에 새로운 댓글이 있습니다.');
INSERT INTO NOTIFICATION (NO, MEMBER_NO, CONTENT)
VALUES (SEQ_NOTIFICATION.NEXTVAL, 1, '회원님의 게시글에 새로운 댓글이 있습니다.');
INSERT INTO NOTIFICATION (NO, MEMBER_NO, CONTENT)
VALUES (SEQ_NOTIFICATION.NEXTVAL, 1, '오늘 등록된 식단내역이 없습니다. 식단 내역을 등록해주세요!');
INSERT INTO NOTIFICATION (NO, MEMBER_NO, CONTENT)
VALUES (SEQ_NOTIFICATION.NEXTVAL, 1, '오늘 등록된 운동내역이 없습니다. 운동 내역을 등록해주세요!');
INSERT INTO NOTIFICATION (NO, MEMBER_NO, CONTENT)
VALUES (SEQ_NOTIFICATION.NEXTVAL, 1, '오늘 혈당 측정 내역이 없습니다. 혈당 측정 내역을 기록해주세요!');
INSERT INTO NOTIFICATION (NO, MEMBER_NO, CONTENT)
VALUES (SEQ_NOTIFICATION.NEXTVAL, 1, '오늘 혈압 측정 내역이 없습니다. 혈압 측정 내역을 기록해주세요!');
INSERT INTO NOTIFICATION (NO, MEMBER_NO, CONTENT)
VALUES (SEQ_NOTIFICATION.NEXTVAL, 1, '오늘 등록된 투약 내역이 없습니다. 인슐린 투약 내역을 등록해주세요!');

COMMIT;