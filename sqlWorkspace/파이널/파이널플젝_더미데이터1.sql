--더미데이터2페이지도 복붙하여 사용해야합니다.

-----------------------------------------------------------------------------------------
--------------------------------------- 관리자---------------------------------------------
INSERT INTO ADMIN (NO, NICK, ID, PWD) VALUES (SEQ_ADMIN.NEXTVAL, '관리자1', 'admin01', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW');
INSERT INTO ADMIN (NO, NICK, ID, PWD) VALUES (SEQ_ADMIN.NEXTVAL, '관리자2', 'admin02', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW');
INSERT INTO ADMIN (NO, NICK, ID, PWD) VALUES (SEQ_ADMIN.NEXTVAL, '관리자3', 'admin03', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW');
INSERT INTO ADMIN (NO, NICK, ID, PWD) VALUES (SEQ_ADMIN.NEXTVAL, '관리자4', 'admin04', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW');


-----------------------------------------------------------------------------------------

--------------------------------------- 맴버---------------------------------------------
INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN,  "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '최지민', 'USER01', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '최지민', 'khhealinglog@gmail.com', '경기도 성남시 분당구 테헤란로 154호', 180.0, 68.8, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2023-05-14', 'YYYY-MM-DD'), '01012345678', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN,  "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '김현우', 'USER02', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '김현우', 'user2@naver.com', '인천광역시 남동구 강변북로 12호', 160.4, 53.1, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2020-05-09', 'YYYY-MM-DD'), '01036238548', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN,  "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '김우현', 'USER03', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '김우현', 'user3@daum.net', '부산광역시 해운대구 수성로 163호', 191.5, 90.6, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2021-03-28', 'YYYY-MM-DD'), '01036473334', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN,  "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '장지민', 'USER04', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '장지민', 'user4@daum.net', '서울특별시 강남구 테헤란로 262호', 178.0, 64.6, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2020-05-09', 'YYYY-MM-DD'), '01044945626', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN,  "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '이용구', 'USER05', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '이용구', 'user5@naver.com', '경기도 수원시 아주대로 1002호', 178.0, 64.6, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2019-07-13', 'YYYY-MM-DD'), '01041512125', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN,  "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '박민준', 'USER06', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '박민준', 'user6@gmail.com', '부산광역시 해운대구 종로 16호', 191.1, 73.9, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2022-04-28', 'YYYY-MM-DD'), '01060376438', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN,  "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '이지아', 'USER07', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '이지아', 'user7@naver.com', '서울특별시 강남구 테헤란로 100호', 165.2, 50.8, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2021-06-12', 'YYYY-MM-DD'), '01027683491', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN,  "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '윤도윤', 'USER08', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '윤도윤', 'user8@daum.net', '부산광역시 해운대구 강변북로 222호', 175.6, 68.3, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2023-02-15', 'YYYY-MM-DD'), '01098764312', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN,  "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '강서준', 'USER09', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '강서준', 'user9@gmail.com', '대구광역시 수성구 종로 78호', 182.1, 75.2, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2020-10-30', 'YYYY-MM-DD'), '01048736522', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN,  "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '장예준', 'USER10', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '장예준', 'user10@daum.net', '경기도 성남시 분당구 해운대해변로 201호', 170.3, 62.5, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2022-09-17', 'YYYY-MM-DD'), '01038274629', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN,  "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '임서윤', 'USER11', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '임서윤', 'user11@gmail.com', '서울특별시 강남구 종로 45호', 160.9, 55.6, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2021-07-21', 'YYYY-MM-DD'), '01075642893', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '김도윤', 'USER12', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '김도윤', 'user12@naver.com', '대구광역시 수성구 테헤란로 88호', 178.2, 72.4, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2022-08-11', 'YYYY-MM-DD'), '01065472819', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '이현우', 'USER13', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '이현우', 'user13@gmail.com', '서울특별시 강남구 강변북로 155호', 181.5, 76.2, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2021-05-22', 'YYYY-MM-DD'), '01092364758', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '장서윤', 'USER14', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '장서윤', 'user14@daum.net', '부산광역시 해운대구 해운대해변로 122호', 159.6, 54.3, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2020-11-30', 'YYYY-MM-DD'), '01083629147', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '윤민준', 'USER15', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '윤민준', 'user15@gmail.com', '경기도 성남시 분당구 종로 99호', 184.7, 79.1, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2023-01-15', 'YYYY-MM-DD'), '01064839401', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '정하윤', 'USER16', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '정하윤', 'user16@naver.com', '서울특별시 강남구 종로 67호', 163.5, 58.0, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2021-06-10', 'YYYY-MM-DD'), '01053647298', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '이지훈', 'USER17', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '이지훈', 'user17@naver.com', '서울특별시 강남구 해운대해변로 200호', 175.3, 70.5, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2020-07-08', 'YYYY-MM-DD'), '01028374629', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '박서윤', 'USER18', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '박서윤', 'user18@gmail.com', '경기도 성남시 분당구 수성로 88호', 168.4, 55.7, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2023-02-18', 'YYYY-MM-DD'), '01039584729', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '강예진', 'USER19', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '강예진', 'user19@daum.net', '부산광역시 해운대구 테헤란로 300호', 162.9, 52.3, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2022-06-21', 'YYYY-MM-DD'), '01082736492', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '윤지후', 'USER20', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '윤지후', 'user20@gmail.com', '서울특별시 강남구 테헤란로 333호', 180.2, 75.6, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2023-03-10', 'YYYY-MM-DD'), '01093746281', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '이하율', 'USER21', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '이하율', 'user21@naver.com', '부산광역시 해운대구 수성로 250호', 167.5, 60.3, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2022-07-19', 'YYYY-MM-DD'), '01073849261', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '강지훈', 'USER22', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '강지훈', 'user22@gmail.com', '서울특별시 강남구 테헤란로 120호', 175.4, 72.8, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2023-04-12', 'YYYY-MM-DD'), '01093758462', 'Y', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '윤서준', 'USER23', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '윤서준', 'user23@daum.net', '부산광역시 해운대구 종로 50호', 168.9, 60.2, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2022-11-23', 'YYYY-MM-DD'), '01047382910', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '임도윤', 'USER24', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '임도윤', 'user24@naver.com', '경기도 성남시 분당구 해운대해변로 88호', 180.1, 78.5, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2021-08-19', 'YYYY-MM-DD'), '01058293761', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '정하윤', 'USER25', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '정하윤', 'user25@gmail.com', '대구광역시 수성구 테헤란로 300호', 170.3, 66.1, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2023-07-22', 'YYYY-MM-DD'), '01039485726', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '박민지', 'USER26', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '박민지', 'user26@naver.com', '서울특별시 강남구 강변북로 270호', 165.7, 55.4, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2022-05-14', 'YYYY-MM-DD'), '01048573921', 'N', 1, 0);


INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '이도윤', 'USER27', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '이도윤', 'user27@gmail.com', '서울특별시 강남구 테헤란로 135호', 178.2, 74.5, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2023-06-18', 'YYYY-MM-DD'), '01029485730', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '김서진', 'USER28', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '김서진', 'user28@naver.com', '부산광역시 해운대구 강변북로 155호', 165.3, 53.8, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2022-08-29', 'YYYY-MM-DD'), '01058739264', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '윤하진', 'USER29', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '윤하진', 'user29@daum.net', '경기도 성남시 분당구 해운대해변로 110호', 182.5, 79.6, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2021-12-10', 'YYYY-MM-DD'), '01093847561', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '박지우', 'USER30', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '박지우', 'user30@gmail.com', '대구광역시 수성구 종로 99호', 169.7, 61.2, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2022-07-05', 'YYYY-MM-DD'), '01058473926', 'Y', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '정현우', 'USER31', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '정현우', 'user31@naver.com', '서울특별시 강남구 강변북로 245호', 180.9, 76.1, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2023-03-11', 'YYYY-MM-DD'), '01048573912', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '이하준', 'USER32', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '이하준', 'user32@gmail.com', '서울특별시 강남구 종로 150호', 177.2, 71.3, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2023-09-10', 'YYYY-MM-DD'), '01073846592', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '강서윤', 'USER33', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '강서윤', 'user33@daum.net', '부산광역시 해운대구 해운대해변로 180호', 164.5, 56.9, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2022-11-30', 'YYYY-MM-DD'), '01048573962', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '윤지훈', 'USER34', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '윤지훈', 'user34@gmail.com', '경기도 성남시 분당구 테헤란로 210호', 182.7, 78.4, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2021-10-25', 'YYYY-MM-DD'), '01058473928', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '박지민', 'USER35', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '박지민', 'user35@naver.com', '대구광역시 수성구 종로 115호', 170.2, 62.1, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2023-06-15', 'YYYY-MM-DD'), '01093847592', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '정우진', 'USER36', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '정우진', 'user36@gmail.com', '서울특별시 강남구 강변북로 195호', 179.8, 75.3, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2022-08-18', 'YYYY-MM-DD'), '01048573948', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '최서윤', 'USER37', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '최서윤', 'user37@gmail.com', '서울특별시 강남구 해운대해변로 220호', 168.3, 58.2, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2023-04-22', 'YYYY-MM-DD'), '01039284756', 'Y', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '김민재', 'USER38', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '김민재', 'user38@naver.com', '부산광역시 해운대구 종로 135호', 182.5, 77.1, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2022-07-12', 'YYYY-MM-DD'), '01047382965', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '윤도영', 'USER39', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '윤도영', 'user39@gmail.com', '경기도 성남시 분당구 테헤란로 240호', 175.6, 69.5, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2021-10-05', 'YYYY-MM-DD'), '01058372649', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '박하린', 'USER40', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '박하린', 'user40@daum.net', '대구광역시 수성구 강변북로 160호', 171.2, 60.7, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2023-06-20', 'YYYY-MM-DD'), '01039284765', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '정지후', 'USER41', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '정지후', 'user41@gmail.com', '서울특별시 강남구 강변북로 250호', 178.9, 73.2, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2022-08-15', 'YYYY-MM-DD'), '01057482936', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '이도현', 'USER42', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '이도현', 'user42@gmail.com', '서울특별시 강남구 테헤란로 260호', 176.3, 72.1, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2023-02-14', 'YYYY-MM-DD'), '01037482956', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '강하율', 'USER43', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '강하율', 'user43@daum.net', '부산광역시 해운대구 종로 145호', 167.9, 58.5, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2022-11-09', 'YYYY-MM-DD'), '01047382947', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '윤준서', 'USER44', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '윤준서', 'user44@gmail.com', '경기도 성남시 분당구 테헤란로 275호', 180.4, 76.8, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2021-05-22', 'YYYY-MM-DD'), '01058293749', 'Y', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '박수진', 'USER45', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '박수진', 'user45@naver.com', '대구광역시 수성구 종로 120호', 169.5, 61.3, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2023-03-17', 'YYYY-MM-DD'), '01038472956', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '정태윤', 'USER46', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '정태윤', 'user46@gmail.com', '서울특별시 강남구 강변북로 210호', 182.2, 74.9, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2022-06-25', 'YYYY-MM-DD'), '01057482974', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '김하영', 'USER47', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '김하영', 'user47@gmail.com', '서울특별시 강남구 해운대해변로 280호', 165.8, 59.7, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2023-08-10', 'YYYY-MM-DD'), '01048392745', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '이도겸', 'USER48', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '이도겸', 'user48@naver.com', '부산광역시 해운대구 종로 160호', 178.6, 73.1, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2022-10-15', 'YYYY-MM-DD'), '01059283746', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '윤서아', 'USER49', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '윤서아', 'user49@naver.com', '경기도 성남시 분당구 테헤란로 290호', 170.1, 62.4, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2023-05-18', 'YYYY-MM-DD'), '01057382947', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '박지한', 'USER50', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '박지한', 'user50@daum.net', '대구광역시 수성구 강변북로 180호', 174.9, 71.2, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2022-12-22', 'YYYY-MM-DD'), '01059372846', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '정도원', 'USER51', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '정도원', 'user51@gmail.com', '서울특별시 강남구 강변북로 300호', 179.3, 74.5, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2023-07-19', 'YYYY-MM-DD'), '01058392746', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '김도현', 'USER52', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '김도현', 'user52@gmail.com', '서울특별시 강남구 테헤란로 310호', 177.8, 72.5, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2023-09-10', 'YYYY-MM-DD'), '01047382967', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '윤서진', 'USER53', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '윤서진', 'user53@daum.net', '부산광역시 해운대구 종로 190호', 169.2, 60.4, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2022-08-25', 'YYYY-MM-DD'), '01058372946', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '박하린', 'USER54', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '박하린', 'user54@gmail.com', '경기도 성남시 분당구 테헤란로 320호', 175.6, 68.9, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2021-11-15', 'YYYY-MM-DD'), '01039485763', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '정하율', 'USER55', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '정하율', 'user55@naver.com', '대구광역시 수성구 종로 210호', 171.3, 62.7, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2023-06-18', 'YYYY-MM-DD'), '01058394726', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '이도경', 'USER56', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '이도경', 'user56@gmail.com', '서울특별시 강남구 강변북로 330호', 179.5, 73.4, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2022-10-12', 'YYYY-MM-DD'), '01047382964', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '김민정', 'USER57', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '김민정', 'user57@gmail.com', '부산광역시 해운대구 해운대해변로 350호', 166.2, 58.9, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2023-04-05', 'YYYY-MM-DD'), '01038294756', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '윤지후', 'USER58', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '윤지후', 'user58@naver.com', '경기도 성남시 분당구 테헤란로 370호', 180.7, 75.1, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2021-07-09', 'YYYY-MM-DD'), '01057483926', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '박서영', 'USER59', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '박서영', 'user59@naver.com', '대구광역시 수성구 강변북로 390호', 172.8, 64.3, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2023-05-22', 'YYYY-MM-DD'), '01059372846', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '정태우', 'USER60', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '정태우', 'user60@gmail.com', '서울특별시 강남구 강변북로 410호', 178.3, 74.2, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2022-12-15', 'YYYY-MM-DD'), '01047382975', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '이도형', 'USER61', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '이도형', 'user61@gmail.com', '서울특별시 강남구 테헤란로 420호', 176.9, 73.0, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2023-01-20', 'YYYY-MM-DD'), '01058394761', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '강하린', 'USER62', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '강하린', 'user62@daum.net', '부산광역시 해운대구 종로 230호', 168.5, 59.4, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2022-09-15', 'YYYY-MM-DD'), '01057382964', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '윤준호', 'USER63', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '윤준호', 'user63@gmail.com', '경기도 성남시 분당구 테헤란로 450호', 181.0, 76.5, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2021-06-28', 'YYYY-MM-DD'), '01039485761', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '박지안', 'USER64', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '박지안', 'user64@naver.com', '대구광역시 수성구 종로 250호', 170.7, 63.2, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2023-07-10', 'YYYY-MM-DD'), '01058394721', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '정태경', 'USER65', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '정태경', 'user65@gmail.com', '서울특별시 강남구 강변북로 470호', 183.2, 75.8, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2022-11-18', 'YYYY-MM-DD'), '01047382974', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '김하진', 'USER66', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '김하진', 'user66@gmail.com', '부산광역시 해운대구 해운대해변로 490호', 166.9, 60.1, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2023-02-07', 'YYYY-MM-DD'), '01039284756', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '윤지온', 'USER67', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '윤지온', 'user67@naver.com', '경기도 성남시 분당구 테헤란로 510호', 179.9, 74.8, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2021-08-20', 'YYYY-MM-DD'), '01058472963', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '박서율', 'USER68', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '박서율', 'user68@naver.com', '대구광역시 수성구 강변북로 530호', 171.9, 63.6, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2023-05-28', 'YYYY-MM-DD'), '01058394762', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '정태민', 'USER69', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '정태민', 'user69@gmail.com', '서울특별시 강남구 강변북로 550호', 178.6, 75.2, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2022-10-15', 'YYYY-MM-DD'), '01047382962', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '이서하', 'USER70', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '이서하', 'user70@gmail.com', '부산광역시 해운대구 해운대해변로 570호', 174.2, 70.9, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2023-03-25', 'YYYY-MM-DD'), '01059283741', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '이도윤', 'USER71', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '이도윤', 'user71@gmail.com', '서울특별시 강남구 테헤란로 590호', 176.5, 72.8, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2023-04-14', 'YYYY-MM-DD'), '01047382961', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '강서진', 'USER72', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '강서진', 'user72@daum.net', '부산광역시 해운대구 종로 600호', 169.3, 61.2, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2022-08-14', 'YYYY-MM-DD'), '01057382945', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '윤지훈', 'USER73', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '윤지훈', 'user73@gmail.com', '경기도 성남시 분당구 테헤란로 620호', 180.8, 76.3, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2021-06-10', 'YYYY-MM-DD'), '01039485792', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '박서윤', 'USER74', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '박서윤', 'user74@naver.com', '대구광역시 수성구 종로 640호', 171.2, 62.5, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2023-07-05', 'YYYY-MM-DD'), '01058394720', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '정태우', 'USER75', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '정태우', 'user75@gmail.com', '서울특별시 강남구 강변북로 660호', 182.6, 75.4, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2022-11-05', 'YYYY-MM-DD'), '01047382971', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '김도형', 'USER76', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '김도형', 'user76@gmail.com', '부산광역시 해운대구 해운대해변로 680호', 167.2, 59.8, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2023-02-04', 'YYYY-MM-DD'), '01039284760', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '윤지온', 'USER77', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '윤지온', 'user77@naver.com', '경기도 성남시 분당구 테헤란로 700호', 180.2, 74.5, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2021-08-16', 'YYYY-MM-DD'), '01058472960', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '박하린', 'USER78', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '박하린', 'user78@naver.com', '대구광역시 수성구 강변북로 720호', 172.4, 63.1, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2023-05-20', 'YYYY-MM-DD'), '01058394725', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '정태민', 'USER79', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '정태민', 'user79@gmail.com', '서울특별시 강남구 강변북로 740호', 178.9, 75.6, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2022-10-20', 'YYYY-MM-DD'), '01047382961', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '이하율', 'USER80', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '이하율', 'user80@gmail.com', '부산광역시 해운대구 해운대해변로 760호', 175.0, 71.5, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2023-03-15', 'YYYY-MM-DD'), '01059283750', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '이태우', 'USER81', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '이태우', 'user81@gmail.com', '서울특별시 강남구 테헤란로 780호', 176.4, 73.0, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2023-01-30', 'YYYY-MM-DD'), '01047382980', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '강하율', 'USER82', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '강하율', 'user82@daum.net', '부산광역시 해운대구 종로 800호', 169.5, 60.5, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2022-09-15', 'YYYY-MM-DD'), '01057382970', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '윤준혁', 'USER83', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '윤준혁', 'user83@gmail.com', '경기도 성남시 분당구 테헤란로 820호', 180.9, 76.4, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2021-07-10', 'YYYY-MM-DD'), '01039485770', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '박지우', 'USER84', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '박지우', 'user84@naver.com', '대구광역시 수성구 종로 840호', 171.8, 62.6, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2023-06-10', 'YYYY-MM-DD'), '01058394730', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '정태민', 'USER85', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '정태민', 'user85@gmail.com', '서울특별시 강남구 강변북로 860호', 182.3, 75.2, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2022-12-10', 'YYYY-MM-DD'), '01047382990', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '김하린', 'USER86', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '김하린', 'user86@gmail.com', '부산광역시 해운대구 해운대해변로 880호', 167.3, 59.9, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2023-02-20', 'YYYY-MM-DD'), '01039284770', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '윤지우', 'USER87', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '윤지우', 'user87@naver.com', '경기도 성남시 분당구 테헤란로 900호', 180.6, 74.7, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2021-09-10', 'YYYY-MM-DD'), '01058472970', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '박서율', 'USER88', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '박서율', 'user88@naver.com', '대구광역시 수성구 강변북로 920호', 172.5, 63.2, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2023-05-25', 'YYYY-MM-DD'), '01058394740', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '정태우', 'USER89', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '정태우', 'user89@gmail.com', '서울특별시 강남구 강변북로 940호', 178.2, 75.1, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2022-11-20', 'YYYY-MM-DD'), '01047382975', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '이하준', 'USER90', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '이하준', 'user90@gmail.com', '부산광역시 해운대구 해운대해변로 960호', 175.5, 71.7, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2023-04-10', 'YYYY-MM-DD'), '01059283780', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '이도하', 'USER91', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '이도하', 'user91@gmail.com', '서울특별시 강남구 테헤란로 980호', 176.8, 73.2, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2023-03-01', 'YYYY-MM-DD'), '01047382985', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '강서윤', 'USER92', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '강서윤', 'user92@daum.net', '부산광역시 해운대구 종로 1000호', 169.8, 60.8, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2022-10-01', 'YYYY-MM-DD'), '01057382975', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '윤준서', 'USER93', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '윤준서', 'user93@gmail.com', '경기도 성남시 분당구 테헤란로 1020호', 181.2, 76.7, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2021-07-20', 'YYYY-MM-DD'), '01039485775', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '박하린', 'USER94', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '박하린', 'user94@naver.com', '대구광역시 수성구 종로 1040호', 171.6, 62.9, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2023-06-20', 'YYYY-MM-DD'), '01058394745', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '정태윤', 'USER95', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '정태윤', 'user95@gmail.com', '서울특별시 강남구 강변북로 1060호', 182.9, 75.6, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2022-12-25', 'YYYY-MM-DD'), '01047382995', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '김도윤', 'USER96', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '김도윤', 'user96@gmail.com', '부산광역시 해운대구 해운대해변로 1080호', 167.6, 60.2, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2023-02-25', 'YYYY-MM-DD'), '01039284775', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '윤지환', 'USER97', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '윤지환', 'user97@naver.com', '경기도 성남시 분당구 테헤란로 1100호', 180.9, 74.9, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2021-09-15', 'YYYY-MM-DD'), '01058472975', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '박지윤', 'USER98', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '박지윤', 'user98@naver.com', '대구광역시 수성구 강변북로 1120호', 172.9, 63.5, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'F', TO_DATE('2023-05-30', 'YYYY-MM-DD'), '01058394750', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '정태영', 'USER99', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '정태영', 'user99@gmail.com', '서울특별시 강남구 강변북로 1140호', 178.5, 75.3, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2022-11-25', 'YYYY-MM-DD'), '01047382980', 'N', 1, 0);

INSERT INTO MEMBER (NO, NAME, ID, PWD, NICK, EMAIL, ADDRESS, HEIGHT, WEIGHT, PROFILE, GENDER, ENROLL_DATE, PHONE, DEL_YN, "LEVEL", EXP)
VALUES (SEQ_MEMBER.NEXTVAL, '이하민', 'USER100', '$2a$10$ldeN0zRsivefkits1072E.DwstYl.Kf6aloDPjBYwGBZhKqut2qdW', '이하민', 'user100@gmail.com', '부산광역시 해운대구 해운대해변로 1160호', 175.8, 71.9, 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/default_profile.jpg', 'M', TO_DATE('2023-04-15', 'YYYY-MM-DD'), '01059283785', 'N', 1, 0);



--------------------------------------- 대시보드 ---------------------------------------------

/
DECLARE
    memberNo NUMBER;
BEGIN
    FOR memberNo IN 1..99 LOOP
        INSERT INTO DASHBOARD (NO, MEMBER_NO, NAME) VALUES (SEQ_DASHBOARD.NEXTVAL, memberNo, '혈압');
        INSERT INTO DASHBOARD (NO, MEMBER_NO, NAME) VALUES (SEQ_DASHBOARD.NEXTVAL, memberNo, '혈당');
        INSERT INTO DASHBOARD (NO, MEMBER_NO, NAME) VALUES (SEQ_DASHBOARD.NEXTVAL, memberNo, '수면');
        INSERT INTO DASHBOARD (NO, MEMBER_NO, NAME) VALUES (SEQ_DASHBOARD.NEXTVAL, memberNo, '흡연');
        INSERT INTO DASHBOARD (NO, MEMBER_NO, NAME) VALUES (SEQ_DASHBOARD.NEXTVAL, memberNo, '알코올 섭취량');
        INSERT INTO DASHBOARD (NO, MEMBER_NO, NAME) VALUES (SEQ_DASHBOARD.NEXTVAL, memberNo, '체중');
        INSERT INTO DASHBOARD (NO, MEMBER_NO, NAME) VALUES (SEQ_DASHBOARD.NEXTVAL, memberNo, '칼로리 섭취량');
        INSERT INTO DASHBOARD (NO, MEMBER_NO, NAME) VALUES (SEQ_DASHBOARD.NEXTVAL, memberNo, '물 섭취량');
        INSERT INTO DASHBOARD (NO, MEMBER_NO, NAME) VALUES (SEQ_DASHBOARD.NEXTVAL, memberNo, '칼로리 소모량');
        INSERT INTO DASHBOARD (NO, MEMBER_NO, NAME) VALUES (SEQ_DASHBOARD.NEXTVAL, memberNo, '유산소 운동시간');
        INSERT INTO DASHBOARD (NO, MEMBER_NO, NAME) VALUES (SEQ_DASHBOARD.NEXTVAL, memberNo, '무산소 운동일수');
    END LOOP;
    
    COMMIT;
END;
/


--------------------------------------- 수면 ---------------------------------------------

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-02-01 02:02', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-02-01 10:27', 'YYYY-MM-DD HH24:MI'), '505', '8시간 25분', TO_DATE('2025-02-01', 'YYYY-MM-DD'));

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-02-02 00:45', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-02-02 07:30', 'YYYY-MM-DD HH24:MI'), '405', '6시간 45분', TO_DATE('2025-02-02', 'YYYY-MM-DD'));

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-02-03 01:10', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-02-03 08:05', 'YYYY-MM-DD HH24:MI'), '415', '6시간 55분', TO_DATE('2025-02-03', 'YYYY-MM-DD'));

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-02-04 23:50', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-02-05 06:20', 'YYYY-MM-DD HH24:MI'), '390', '6시간 30분', TO_DATE('2025-02-04', 'YYYY-MM-DD'));

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-02-05 00:30', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-02-05 07:10', 'YYYY-MM-DD HH24:MI'), '400', '6시간 40분', TO_DATE('2025-02-05', 'YYYY-MM-DD'));

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-02-06 01:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-02-06 08:15', 'YYYY-MM-DD HH24:MI'), '435', '7시간 15분', TO_DATE('2025-02-06', 'YYYY-MM-DD'));

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-02-07 23:40', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-02-08 06:10', 'YYYY-MM-DD HH24:MI'), '390', '6시간 30분', TO_DATE('2025-02-07', 'YYYY-MM-DD'));

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-02-08 01:20', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-02-08 09:10', 'YYYY-MM-DD HH24:MI'), '470', '7시간 50분', TO_DATE('2025-02-08', 'YYYY-MM-DD'));

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-02-09 00:55', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-02-09 07:50', 'YYYY-MM-DD HH24:MI'), '415', '6시간 55분', TO_DATE('2025-02-09', 'YYYY-MM-DD'));

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-02-10 02:15', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-02-10 10:00', 'YYYY-MM-DD HH24:MI'), '465', '7시간 45분', TO_DATE('2025-02-10', 'YYYY-MM-DD'));

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-02-11 00:50', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-02-11 07:20', 'YYYY-MM-DD HH24:MI'), '390', '6시간 30분', TO_DATE('2025-02-11', 'YYYY-MM-DD'));

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-02-12 01:30', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-02-12 08:40', 'YYYY-MM-DD HH24:MI'), '430', '7시간 10분', TO_DATE('2025-02-12', 'YYYY-MM-DD'));

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-02-13 00:10', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-02-13 06:55', 'YYYY-MM-DD HH24:MI'), '405', '6시간 45분', TO_DATE('2025-02-13', 'YYYY-MM-DD'));

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-02-14 23:55', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-02-15 06:30', 'YYYY-MM-DD HH24:MI'), '395', '6시간 35분', TO_DATE('2025-02-14', 'YYYY-MM-DD'));

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-02-15 00:40', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-02-15 08:20', 'YYYY-MM-DD HH24:MI'), '460', '7시간 40분', TO_DATE('2025-02-15', 'YYYY-MM-DD'));

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-02-16 01:10', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-02-16 08:45', 'YYYY-MM-DD HH24:MI'), '455', '7시간 35분', TO_DATE('2025-02-16', 'YYYY-MM-DD'));

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-02-17 02:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-02-17 09:50', 'YYYY-MM-DD HH24:MI'), '470', '7시간 50분', TO_DATE('2025-02-17', 'YYYY-MM-DD'));

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-02-18 00:30', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-02-18 06:40', 'YYYY-MM-DD HH24:MI'), '370', '6시간 10분', TO_DATE('2025-02-18', 'YYYY-MM-DD'));

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-02-19 01:20', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-02-19 07:55', 'YYYY-MM-DD HH24:MI'), '395', '6시간 35분', TO_DATE('2025-02-19', 'YYYY-MM-DD'));

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-02-20 23:45', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-02-21 06:15', 'YYYY-MM-DD HH24:MI'), '390', '6시간 30분', TO_DATE('2025-02-20', 'YYYY-MM-DD'));

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-02-21 01:50', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-02-21 09:25', 'YYYY-MM-DD HH24:MI'), '455', '7시간 35분', TO_DATE('2025-02-21', 'YYYY-MM-DD'));

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-02-22 02:30', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-02-22 10:10', 'YYYY-MM-DD HH24:MI'), '460', '7시간 40분', TO_DATE('2025-02-22', 'YYYY-MM-DD'));

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-02-23 00:10', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-02-23 07:30', 'YYYY-MM-DD HH24:MI'), '440', '7시간 20분', TO_DATE('2025-02-23', 'YYYY-MM-DD'));

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-02-24 01:15', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-02-24 08:35', 'YYYY-MM-DD HH24:MI'), '440', '7시간 20분', TO_DATE('2025-02-24', 'YYYY-MM-DD'));

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-02-25 00:50', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-02-25 07:10', 'YYYY-MM-DD HH24:MI'), '380', '6시간 20분', TO_DATE('2025-02-25', 'YYYY-MM-DD'));

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-02-26 01:30', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-02-26 08:20', 'YYYY-MM-DD HH24:MI'), '410', '6시간 50분', TO_DATE('2025-02-26', 'YYYY-MM-DD'));

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-02-27 02:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-02-27 09:15', 'YYYY-MM-DD HH24:MI'), '435', '7시간 15분', TO_DATE('2025-02-27', 'YYYY-MM-DD'));

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-02-28 01:20', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-02-28 08:00', 'YYYY-MM-DD HH24:MI'), '400', '6시간 40분', TO_DATE('2025-02-28', 'YYYY-MM-DD'));

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-03-01 00:45', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-03-01 07:50', 'YYYY-MM-DD HH24:MI'), '425', '7시간 5분', TO_DATE('2025-03-01', 'YYYY-MM-DD'));

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-03-02 01:10', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-03-02 08:45', 'YYYY-MM-DD HH24:MI'), '455', '7시간 35분', TO_DATE('2025-03-02', 'YYYY-MM-DD'));

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-03-03 02:30', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-03-03 09:00', 'YYYY-MM-DD HH24:MI'), '390', '6시간 30분', TO_DATE('2025-03-03', 'YYYY-MM-DD'));

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-03-04 01:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-03-04 07:40', 'YYYY-MM-DD HH24:MI'), '400', '6시간 40분', TO_DATE('2025-03-04', 'YYYY-MM-DD'));

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-03-05 01:45', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-03-05 08:20', 'YYYY-MM-DD HH24:MI'), '395', '6시간 35분', TO_DATE('2025-03-05', 'YYYY-MM-DD'));

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-03-06 00:30', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-03-06 06:50', 'YYYY-MM-DD HH24:MI'), '380', '6시간 20분', TO_DATE('2025-03-06', 'YYYY-MM-DD'));

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-03-07 01:15', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-03-07 07:55', 'YYYY-MM-DD HH24:MI'), '400', '6시간 40분', TO_DATE('2025-03-07', 'YYYY-MM-DD'));

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-03-08 02:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-03-08 09:10', 'YYYY-MM-DD HH24:MI'), '430', '7시간 10분', TO_DATE('2025-03-08', 'YYYY-MM-DD'));

INSERT INTO SLEEP (NO, MEMBER_NO, SLEEP_START, SLEEP_END, SLEEP_DURATION, SLEEP_DURATION_HOUR, RECORD_DATE) 
VALUES (SEQ_SLEEP.NEXTVAL, '1', TO_DATE('2025-03-09 01:25', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-03-09 08:30', 'YYYY-MM-DD HH24:MI'), '425', '7시간 5분', TO_DATE('2025-03-09', 'YYYY-MM-DD'));


--------------------------------------- 혈당 ---------------------------------------------
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-01-27 16:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-01-27 13:22', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-01-26 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-01-26 11:30', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-01-25 18:55', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-01-25 11:11', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-01-24 19:13', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-01-24 08:49', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-01-23 18:07', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-01-23 09:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-01-22 18:50', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-01-22 10:53', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-01-21 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-01-21 12:05', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-01-20 19:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(70, 180), 1)
    , TO_DATE('2025-01-20 10:25', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-01-19 18:15', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-01-19 09:17', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-01-18 18:30', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-01-18 07:50', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-01-17 18:35', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-01-17 07:55', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-01-16 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-01-16 07:45', 'YYYY-MM-DD HH24:MI')
);






INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-01 13:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-01 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-01 21:45', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-02 13:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-02 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-02 21:45', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-03 13:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-03 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-03 21:45', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-04 13:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-04 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-04 21:45', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-05 13:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-05 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-05 21:45', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-06 13:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-06 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-06 21:45', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-07 13:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-07 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-07 21:45', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-08 13:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-08 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-08 21:45', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-09 13:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-09 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-09 21:45', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-10 13:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-10 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-10 21:45', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-11 13:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-11 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-11 21:45', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-12 13:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-12 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-12 21:45', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-13 13:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-13 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-13 21:45', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-14 13:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-14 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-14 21:45', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-15 13:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-15 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-15 21:45', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-16 13:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-16 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-16 21:45', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-17 13:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-17 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-17 21:45', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-18 13:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-18 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-18 21:45', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-19 13:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-19 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-19 21:45', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-20 13:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-20 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-20 21:45', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-21 13:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-21 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-21 21:45', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-22 13:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-22 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-22 21:45', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-23 13:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-23 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-23 21:45', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-24 13:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-24 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-24 21:45', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-25 13:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-25 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-25 21:45', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-26 13:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-26 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-26 21:45', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-27 13:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-27 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-27 21:45', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-28 13:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-28 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-02-28 21:45', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-03-01 13:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-03-01 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-03-01 21:45', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-03-02 13:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-03-02 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-03-02 21:45', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-03-03 13:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-03-03 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-03-03 21:45', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-03-04 13:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-03-04 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-03-04 21:45', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-03-05 13:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-03-05 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-03-05 21:45', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-03-06 13:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-03-06 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_SUGAR
(NO, MEMBER_NO, SUGAR, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_SUGAR.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(150, 350), 1)
    , TO_DATE('2025-03-06 21:45', 'YYYY-MM-DD HH24:MI')
);

--------------------------------------- 혈압---------------------------------------------
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-01-27 16:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-01-27 13:22', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-01-26 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-01-26 11:30', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-01-25 18:55', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-01-25 11:11', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-01-24 19:13', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-01-24 08:49', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-01-23 18:07', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-01-23 09:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-01-22 18:50', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-01-22 10:53', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-01-21 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-01-21 12:05', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-01-20 19:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-01-20 10:25', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-01-19 18:15', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-01-19 09:17', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-01-18 18:30', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-01-18 07:50', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-01-17 18:35', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-01-17 07:55', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-01-16 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-01-16 07:45', 'YYYY-MM-DD HH24:MI')
);





INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-01 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-01 18:45', 'YYYY-MM-DD HH24:MI')
);


INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-02 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-02 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-03 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-03 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-04 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-04 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-05 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-05 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-06 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-06 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-07 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-07 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-08 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-08 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-09 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-09 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-10 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-10 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-11 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-11 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-12 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-12 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-13 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-13 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-14 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-14 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-15 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-15 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-16 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-16 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-17 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-17 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-18 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-18 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-19 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-19 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-20 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-20 18:45', 'YYYY-MM-DD HH24:MI')
);


INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-21 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-21 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-21 21:30', 'YYYY-MM-DD HH24:MI')
);




INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-22 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-22 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-22 21:30', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-23 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-23 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-23 21:30', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-24 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-24 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-24 21:30', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-25 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-25 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-25 21:30', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-26 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-26 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-26 21:30', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-27 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-27 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-27 21:30', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-28 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-28 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-02-28 21:30', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-03-01 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-03-01 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-03-01 21:30', 'YYYY-MM-DD HH24:MI')
);


INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-03-02 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-03-02 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-03-02 21:30', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-03-03 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-03-03 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-03-03 21:30', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-03-04 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-03-04 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-03-04 21:30', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-03-05 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-03-05 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-03-05 21:30', 'YYYY-MM-DD HH24:MI')
);

INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-03-06 07:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-03-06 18:45', 'YYYY-MM-DD HH24:MI')
);
INSERT INTO BLOOD_PRESSURE
(NO, MEMBER_NO, SYSTOLE, DIASTOLE, PULSE, ENROLL_DATE) VALUES 
(
    SEQ_BLOOD_PRESSURE.NEXTVAL
    , '1'
    , ROUND(DBMS_RANDOM.VALUE(100, 170), 1)
    , ROUND(DBMS_RANDOM.VALUE(60, 99), 1)
    , ROUND(DBMS_RANDOM.VALUE(40, 140), 0)
    , TO_DATE('2025-03-06 21:30', 'YYYY-MM-DD HH24:MI')
);


--------------------------------------- 운동---------------------------------------------

--------------------------------------- 식이---------------------------------------------


INSERT INTO MEAL_CODE (NO, NAME) VALUES (SEQ_MEAL_CODE.NEXTVAL, '아침');
INSERT INTO MEAL_CODE (NO, NAME) VALUES (SEQ_MEAL_CODE.NEXTVAL, '오전간식');
INSERT INTO MEAL_CODE (NO, NAME) VALUES (SEQ_MEAL_CODE.NEXTVAL, '점심');
INSERT INTO MEAL_CODE (NO, NAME) VALUES (SEQ_MEAL_CODE.NEXTVAL, '오후간식');
INSERT INTO MEAL_CODE (NO, NAME) VALUES (SEQ_MEAL_CODE.NEXTVAL, '저녁');
INSERT INTO MEAL_CODE (NO, NAME) VALUES (SEQ_MEAL_CODE.NEXTVAL, '야식');


Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'카레라이스','1회',480,518);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'콩나물밥','1회',320,394);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'하이라이스','1회',360,403);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'현미밥','1회',230,396);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'꿀떡','1회',100,228);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'모듬찰떡','1회',100,218);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'백설기','1회',100,230);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'시루떡','1회',100,224);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'약식','1회',100,220);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'인절미','1회',100,242);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'증편','1회',100,200);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'마늘빵','1회',50,219);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'기장밥','1회',200,332);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'김밥','1회',230,322);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'보리밥','1회',200,322);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'볶음밥','1회',350,641);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'비빔밥','1회',450,639);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'수수밥','1회',200,322);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'알밥','1회',330,422);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'영양돌솥밥','1회',350,644);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'오므라이스','1회',400,692);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'잡곡밥','1회',200,292);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'잡채밥','1회',550,825);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'짬뽕밥','1회',900,648);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'차조밥','1회',200,314);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'찰밥','1회',280,428);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'머핀','1회',130,499);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'모닝빵','1회',70,220);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'모카빵','1회',150,509);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'베이글','1회',120,367);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'식빵','1회',100,264);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'초코소라빵','1회',70,223);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'츄러스','1회',70,253);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'카스텔라','1회',70,235);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'크로와상','1회',150,669);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'피자빵','1회',200,596);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'간자장','1회',500,625);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'떡국','1회',700,588);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'떡만두국','1회',600,666);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'라면','1회',550,451);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'수제비','1회',650,377);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'우동볶음','1회',300,384);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'월남쌈','1회',250,295);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'자장면','1회',600,528);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'짬뽕','1회',800,464);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'쫄면','1회',550,710);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'칼국수','1회',700,539);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'콩국수','1회',800,648);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'닭죽','1회',400,176);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'오리죽','1회',400,620);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'전복죽','1회',400,316);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'채소죽','1회',400,172);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'팥죽','1회',400,324);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'호박죽','1회',400,196);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'흑임자 죽','1회',400,244);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'갈비탕','1회',670,362);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'감자국','1회',400,84);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'곰탕','1회',600,144);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'내장탕','1회',600,426);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'달걀국','1회',400,52);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'닭곰탕','1회',650,332);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'도가니탕','1회',500,200);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'미역국','1회',400,48);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'북어국','1회',400,112);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'사골국','1회',400,220);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'삼계탕','1회',900,909);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'새우탕','1회',500,165);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'설렁탕','1회',500,120);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'순대국','1회',600,510);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'어묵국(어묵탕)','1회',350,109);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'오징어국','1회',500,90);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'육개장','1회',440,132);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'장어탕','1회',800,536);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'재첩국','1회',350,81);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'조개국','1회',400,64);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'콩나물국','1회',400,24);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'토란국','1회',400,64);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'동태국','1회',400,68);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'갈치찌개','1회',250,95);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'감자탕','1회',530,376);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'김치전골','1회',270,197);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'꽃게탕','1회',600,102);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'낙지전골','1회',300,153);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'동태찌개','1회',200,88);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'돼지고기찌개','1회',300,144);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'된장찌개','1회',200,92);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'버섯전골','1회',300,234);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'부대찌개','1회',600,738);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'소고기전골','1회',300,189);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'알탕','1회',520,203);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'오리백숙','1회',300,336);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'오리탕','1회',600,726);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'오징어찌개','1회',250,85);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'청국장찌개','1회',200,94);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'추어탕','1회',350,189);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'콩비지찌개','1회',400,276);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'가오리찜','1회',200,204);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'꼬막찜','1회',200,192);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'꽈리고추찜','1회',100,104);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'닭찜','1회',300,321);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'돼지갈비찜','1회',300,582);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'아귀찜','1회',200,168);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'애호박찜','1회',100,181);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'족발','1회',250,583);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'코다리찜','1회',200,188);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'풋고추찜','1회',100,51);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'가자미구이','1회',200,246);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'닭구이','1회',340,874);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'닭발구이','1회',220,431);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'떡갈비','1회',200,404);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'런천미트구이','1회',160,485);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'뱅어포구이','1회',70,262);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'버섯구이','1회',80,42);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'버섯구이표고버섯','1회',80,80);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'삼겹살구이','1회',200,934);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'삼치구이','1회',200,356);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'새우구이','1회',180,261);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'소불고기','1회',200,340);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'오리고기구이','1회',200,586);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'오리불고기','1회',250,363);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'조기구이','1회',180,319);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'치킨데리야끼','1회',340,707);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'함박스테이크','1회',200,348);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'가지전','1회',200,246);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'감자전','1회',200,266);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'고구마전','1회',140,318);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'김치전','1회',150,201);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'달걀말이','1회',100,193);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'달걀부침(달걀후라이)','1회',60,125);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'두부부침','1회',100,140);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'맛살전','1회',200,330);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'메밀전','1회',180,290);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'부추전','1회',150,251);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'애호박전','1회',150,183);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'감자볶음','1회',100,100);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'건새우볶음','1회',20,61);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'김치볶음','1회',100,106);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'낙지볶음','1회',200,182);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'닭발볶음','1회',200,372);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'닭볶음(닭갈비)','1회',300,558);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'당근볶음','1회',90,86);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'돼지고기볶음(제육볶음)','1회',250,488);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'떡볶이','1회',180,259);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'라볶이','1회',200,268);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'마늘쫑볶음','1회',140,125);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'마파두부','1회',160,174);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'멸치볶음','1회',50,138);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'브로콜리볶음','1회',90,46);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'새우볶음','1회',200,166);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'애호박 볶음','1회',50,30);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'양파볶음','1회',80,45);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'어묵볶음','1회',140,276);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'오징어볶음','1회',200,256);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'유산슬','1회',220,189);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'잡채','1회',200,292);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'팔보채','1회',220,198);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'풋고추볶음','1회',100,70);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'감자조림','1회',50,57);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'고등어조림','1회',100,141);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'꽁치조림','1회',100,244);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'닭볶음탕','1회',300,333);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'닭조림','1회',150,296);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'두부조림','1회',50,72);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'땅콩조림','1회',20,97);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'멸치조림','1회',100,318);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'무조림','1회',150,72);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'미트볼조림','1회',150,332);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'버섯조림','1회',150,90);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'병어조림','1회',100,112);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'삼치조림','1회',100,125);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'양미리조림','1회',100,65);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'어묵조림','1회',200,318);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'오징어조림','1회',150,206);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'오징어채조림','1회',50,120);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'우엉조림','1회',30,56);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'쥐포조림','1회',100,276);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'코다리조림','1회',100,86);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'콩조림(콩자반)','1회',30,84);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'감자튀김','1회',150,468);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'김튀김','1회',50,261);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'다시마튀각','1회',50,231);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'떡강정','1회',200,498);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'미역튀각','1회',50,222);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'가지나물','1회',50,18);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'고구마줄기나물','1회',50,42);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'고사리나물무침','1회',50,45);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'고춧잎나물무침','1회',90,79);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'깻잎나물','1회',50,39);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'냉이나물','1회',60,67);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'도라지나물무침','1회',50,65);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'머위대나물무침','1회',50,29);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'무나물무침','1회',50,11);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'방풍나물무침','1회',80,61);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'배추나물','1회',80,49);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'비름나물무침','1회',80,58);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'숙주나물','1회',50,18);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'시금치나물','1회',50,35);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'시래기나물무침','1회',50,57);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'씀바귀나물무침','1회',90,87);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'열무나물','1회',90,74);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'유채나물','1회',90,86);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'참나물','1회',90,54);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'콩나물무침','1회',50,35);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'토란대나물무침','1회',90,61);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'호박오가리나물무침','1회',100,201);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'가죽나물무침','1회',80,61);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'굴무침','1회',80,62);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'김무침','1회',30,78);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'낙지무침','1회',180,139);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'다시마무침','1회',90,43);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'달래무침','1회',60,38);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'마늘쫑무침','1회',30,32);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'무말랭이무침','1회',20,24);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'무생채','1회',150,74);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'미나리무침','1회',90,41);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'미역초무침','1회',50,18);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'무짠지','1회',50,6);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'무초절임(치킨무)','1회',130,22);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'오이장아찌','1회',50,7);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'오이지','1회',50,11);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'미숫가루','1회',300,210);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'육회','1회',150,195);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'계란 덮밥','1회',100,143);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'곤드레나물밥','1회',350,522);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'국밥','1회',800,416);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'귀리밥','1회',100,162);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'묵밥','1회',950,646);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'새우튀김롤','1회',300,606);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'쌀밥','1회',100,166);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'연어롤','1회',300,510);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'연잎밥','1회',100,207);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'오곡밥','1회',250,390);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'자장밥','1회',500,740);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'잡탕밥','1회',750,780);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'충무김밥','1회',400,584);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'캘리포니아롤','1회',300,489);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'회덮밥','1회',500,685);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'가래떡','1회',100,210);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'개피떡(바람떡)','1회',100,206);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'기피편','1회',100,220);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'무지개떡','1회',100,229);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'빙떡(메밀전병)','1회',100,168);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'수수경단','1회',100,218);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'민들레잎무침','1회',90,73);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'수수부꾸미','1회',100,248);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'수수팥떡','1회',100,204);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'쑥떡','1회',100,249);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'절편','1회',100,197);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'부추무침','1회',100,92);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'찰시루떡','1회',100,181);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'찹쌀떡','1회',100,277);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'다쿠아즈','1회',100,447);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'마카롱','1회',100,480);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'버터크림빵','1회',60,230);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'소보로빵','1회',70,277);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'페이스트리','1회',70,320);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'프레즐','1회',100,312);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'핫도그','1회',100,341);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'햄버거','1회',100,225);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'매작과','1회',30,124);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'산자','1회',30,110);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'약과','1회',30,120);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'유과','1회',30,127);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'기스면','1회',1000,610);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'만두국','1회',700,434);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'북어채무침','1회',150,282);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'분짜','1회',100,136);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'양장피','1회',220,293);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'비빔국수','1회',100,113);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'쌀국수','1회',600,318);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'올갱이국수','1회',1500,570);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'울면','1회',1000,730);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'게살죽','1회',800,568);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'깨죽','1회',800,512);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'오이생채','1회',50,35);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'오이지무침','1회',100,52);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'미음','1회',100,19);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'백합죽','1회',700,455);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'소고기버섯죽','1회',800,576);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'쌀죽(흰죽)','1회',100,53);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'어죽','1회',800,552);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'율무죽','1회',100,77);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'잣죽','1회',700,875);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'참깨죽','1회',100,38);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'참치죽','1회',800,656);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'현미죽','1회',100,64);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'게국지','1회',1100,418);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'오징어채무침','1회',80,206);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'곰치국','1회',1000,420);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'톳나물무침','1회',90,68);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'김치국','1회',450,90);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'낙지탕','1회',600,186);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'파래무침','1회',30,15);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'매생이국','1회',500,120);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'미소된장국','1회',150,38);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'풋마늘무침','1회',100,71);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'소탕','1회',150,87);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'아구탕','1회',600,246);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'어탕','1회',150,86);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'피조개무침','1회',100,52);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'연포탕','1회',1000,540);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'오이냉국','1회',100,19);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'올갱이국','1회',600,144);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'전복탕','1회',600,198);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'초당순두부','1회',900,522);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'황태해장국','1회',600,180);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'고등어찌개','1회',600,600);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'김치찌개','1회',400,244);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'꽁치찌개','1회',300,354);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'두부전골','1회',500,315);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'버섯찌개','1회',400,168);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'해신탕','1회',100,57);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'호박찌개','1회',300,96);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'해초무침','1회',100,39);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'회무침','1회',250,205);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'깻잎찜','1회',100,112);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'꼬막무침','1회',100,107);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'대구찜','1회',500,375);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'동태찜','1회',500,395);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'동파육','1회',100,191);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'돼지등갈비찜','1회',450,963);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'북어찜','1회',150,236);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'붕어찜','1회',1100,836);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'순대','1회',300,543);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'오징어순대','1회',350,466);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'조기찜','1회',100,182);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'해물찜','1회',500,400);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'꿩불고기','1회',500,370);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'돌나물무침','1회',50,35);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'더덕구이','1회',100,184);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'깍두기','1회',50,17);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'돼지껍데기구이','1회',100,348);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'연어구이','1회',100,234);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'임연수구이','1회',250,495);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'콘치즈구이','1회',100,224);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'황태구이','1회',200,438);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'훈제오리','1회',250,798);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'고추전','1회',150,275);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'굴전','1회',100,195);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'깻잎전','1회',150,362);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'녹두빈대떡','1회',100,208);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'동태전','1회',100,195);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'두부전','1회',150,255);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'미나리전','1회',150,227);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'깻잎김치','1회',50,31);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'배추전','1회',150,240);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'버섯전','1회',150,240);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'새우전','1회',100,188);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'소고기산적','1회',200,454);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'소라산적','1회',80,120);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'스크램블드에그','1회',100,149);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'오징어산적','1회',80,102);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'채소전','1회',100,194);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'파전','1회',150,293);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'햄부침','1회',100,244);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'호박전','1회',150,209);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'홍합산적','1회',80,157);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'화양적','1회',150,273);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'느타리버섯볶음','1회',100,87);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'닭모래집볶음','1회',100,176);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'두부김치','1회',250,288);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'머위나물볶음','1회',150,108);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'나박김치','1회',100,10);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'미역줄기볶음','1회',100,89);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'소시지볶음','1회',200,472);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'순대볶음','1회',400,584);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'오징어채볶음','1회',100,275);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'잔멸치볶음','1회',100,330);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'보쌈김치','1회',90,27);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'주꾸미볶음','1회',200,212);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'주꾸미삼겹살','1회',100,161);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'해물볶음','1회',400,420);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'가자미조림','1회',300,297);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'고추조림','1회',100,111);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'동태조림','1회',250,275);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'부추김치','1회',50,24);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'북어조림','1회',100,182);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'연근조림','1회',100,261);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'조기조림','1회',300,384);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'오이김치','1회',70,27);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'가자미식해','1회',250,335);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'단무지','1회',30,4);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'더덕장아찌','1회',90,127);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'고구마맛탕','1회',200,492);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'고구마튀김','1회',100,253);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'고추튀김','1회',100,202);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'깐풍새우','1회',100,240);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'닭모래집튀김','1회',150,468);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'닭튀김','1회',300,903);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'라조기','1회',200,398);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'멘보샤','1회',100,289);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'미꾸라지튀김','1회',100,387);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'복어튀김','1회',100,320);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'생선까스','1회',200,654);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'양파링튀김','1회',100,411);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'쥐포튀김','1회',100,357);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'치즈볼','1회',100,333);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'치즈스틱','1회',100,329);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'치킨가스','1회',200,592);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'난자완스','1회',200,346);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'깻잎나물볶음','1회',200,206);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'머위나물무침','1회',100,85);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'미나리나물','1회',50,30);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'세발나물무침','1회',100,78);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'우거지나물무침','1회',150,129);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'취나물무침','1회',50,74);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'골뱅이무침','1회',100,109);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'노각무침','1회',150,84);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'단무지무침','1회',50,20);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'더덕무침','1회',150,216);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'도라지생채','1회',100,119);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'물회','1회',700,532);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'배추 겉절이','1회',100,43);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'밴댕이무침','1회',400,600);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'상추 겉절이','1회',100,64);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'쑥갓나물무침','1회',150,96);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'탕평채','1회',100,97);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'파무침','1회',100,82);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'홍어무침','1회',200,198);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'갓김치','1회',100,37);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'고들빼기김치','1회',50,56);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'동치미','1회',100,11);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'배추김치','1회',100,38);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'백김치','1회',100,16);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'얼갈이배추김치','1회',100,30);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'열무김치','1회',100,36);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'열무물김치','1회',100,18);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'열무얼갈이김치','1회',50,18);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'오이소박이','1회',100,37);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'유채김치','1회',100,62);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'유채물김치','1회',100,17);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'총각김치','1회',100,42);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'파김치','1회',100,49);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'고추장아찌','1회',100,124);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'들깻잎장아찌','1회',100,124);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'마늘장아찌','1회',100,113);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'마늘쫑장아찌','1회',100,118);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'매실장아찌','1회',30,73);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'무장아찌','1회',30,24);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'레몬청차','1회',100,60);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'식혜','1회',150,131);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'팝콘','1회',100,511);
Insert into FOOD (NO,NAME,UNIT,AMOUNT,KCAL) values (SEQ_FOOD.NEXTVAL,'대구포','1회',100,141);



INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 5, '2024-11-04');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '샌드위치', '1회', 240, 420);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '스파게티', '1회', 253, 566);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 2, '2024-10-13');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '우동', '1회', 162, 259);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '감자튀김', '1회', 292, 467);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '김밥', '1회', 160, 256);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 1, '2025-02-13');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '비빔밥', '1회', 263, 473);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '라면', '1회', 83, 345);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '초밥', '1회', 109, 239);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 6, '2024-12-04');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '라면', '1회', 108, 450);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '김밥', '1회', 207, 331);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '초밥', '1회', 133, 292);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 6, '2025-01-18');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '샌드위치', '1회', 154, 269);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '볶음밥', '1회', 188, 444);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '라면', '1회', 96, 400);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 3, '2024-12-13');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '갈비탕', '1회', 299, 398);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '샐러드', '1회', 72, 108);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 6, '2024-12-22');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '삼겹살', '1회', 193, 627);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '비빔밥', '1회', 232, 417);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '샐러드', '1회', 83, 124);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 1, '2025-02-12');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '김치찌개', '1회', 155, 170);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '비빔밥', '1회', 221, 397);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '된장찌개', '1회', 218, 196);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 3, '2024-12-10');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '초밥', '1회', 154, 338);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '김치찌개', '1회', 219, 240);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '삼겹살', '1회', 150, 487);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 2, '2024-12-03');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '된장찌개', '1회', 202, 181);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '라면', '1회', 100, 416);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 3, '2024-12-07');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '햄버거', '1회', 306, 561);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '라면', '1회', 108, 450);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '샌드위치', '1회', 202, 353);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 1, '2025-01-09');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '우동', '1회', 184, 294);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '삼겹살', '1회', 169, 549);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 1, '2025-01-06');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '핫도그', '1회', 228, 437);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '된장찌개', '1회', 250, 225);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 4, '2025-03-03');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '불고기', '1회', 226, 439);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '초밥', '1회', 122, 268);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 3, '2025-02-01');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '햄버거', '1회', 297, 544);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '핫도그', '1회', 245, 470);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '삼겹살', '1회', 172, 559);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 4, '2024-11-24');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '김밥', '1회', 182, 291);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '된장국', '1회', 180, 108);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 6, '2024-11-03');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '초밥', '1회', 135, 297);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '치킨', '1회', 280, 560);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 2, '2024-11-19');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '샌드위치', '1회', 217, 379);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '김치찌개', '1회', 167, 183);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '떡볶이', '1회', 180, 450);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 5, '2025-01-08');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '햄버거', '1회', 329, 603);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '갈비탕', '1회', 289, 385);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '불고기', '1회', 177, 344);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 1, '2025-02-19');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '햄버거', '1회', 321, 588);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '라면', '1회', 90, 375);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '된장찌개', '1회', 231, 207);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 4, '2024-10-27');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '샌드위치', '1회', 192, 336);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '감자튀김', '1회', 232, 371);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '김밥', '1회', 188, 300);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 3, '2025-01-24');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '라면', '1회', 119, 495);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '초밥', '1회', 106, 233);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 4, '2024-11-26');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '샌드위치', '1회', 223, 390);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '된장찌개', '1회', 159, 143);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 6, '2024-12-01');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '비빔밥', '1회', 277, 498);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '우동', '1회', 185, 296);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 3, '2024-10-10');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '된장국', '1회', 156, 93);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '우동', '1회', 150, 240);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '햄버거', '1회', 280, 513);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 3, '2024-10-05');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '된장찌개', '1회', 159, 143);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '갈비탕', '1회', 282, 376);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '떡볶이', '1회', 163, 407);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 5, '2025-03-02');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '불고기', '1회', 134, 260);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '초밥', '1회', 177, 389);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 3, '2024-10-29');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '핫도그', '1회', 222, 426);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '김밥', '1회', 176, 281);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '삼겹살', '1회', 166, 539);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 3, '2025-01-13');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '비빔밥', '1회', 237, 426);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '우동', '1회', 163, 260);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 1, '2025-02-23');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '햄버거', '1회', 315, 577);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '된장국', '1회', 177, 106);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 2, '2025-02-05');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '햄버거', '1회', 319, 584);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '떡볶이', '1회', 227, 567);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '감자튀김', '1회', 275, 440);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 2, '2025-02-27');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '감자튀김', '1회', 278, 444);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '불고기', '1회', 158, 307);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 3, '2024-11-14');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '갈비탕', '1회', 338, 450);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '떡볶이', '1회', 130, 325);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 2, '2025-02-22');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '떡볶이', '1회', 204, 510);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '스파게티', '1회', 209, 468);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 5, '2024-10-21');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '스파게티', '1회', 206, 461);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '치킨', '1회', 294, 588);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 6, '2024-10-19');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '된장국', '1회', 145, 87);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '핫도그', '1회', 246, 472);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 6, '2024-12-19');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '떡볶이', '1회', 204, 510);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '김치찌개', '1회', 240, 264);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 4, '2025-02-26');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '라면', '1회', 170, 708);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '떡볶이', '1회', 229, 572);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 1, '2025-01-28');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '비빔밥', '1회', 229, 412);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '초밥', '1회', 171, 376);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 2, '2025-01-23');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '김치찌개', '1회', 204, 224);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '된장국', '1회', 176, 105);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '비빔밥', '1회', 233, 419);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 6, '2024-11-27');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '햄버거', '1회', 295, 540);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '삼겹살', '1회', 217, 705);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 1, '2025-02-28');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '갈비탕', '1회', 316, 421);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '라면', '1회', 80, 333);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 5, '2025-02-10');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '스파게티', '1회', 207, 463);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '햄버거', '1회', 302, 553);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 4, '2025-01-16');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '볶음밥', '1회', 268, 633);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '햄버거', '1회', 284, 520);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 5, '2024-11-15');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '불고기', '1회', 141, 274);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '김밥', '1회', 184, 294);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 5, '2024-12-16');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '치킨', '1회', 313, 626);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '삼겹살', '1회', 209, 679);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '갈비탕', '1회', 286, 381);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 2, '2024-11-28');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '스파게티', '1회', 247, 553);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '비빔밥', '1회', 240, 432);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 4, '2024-12-30');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '볶음밥', '1회', 240, 567);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '샌드위치', '1회', 174, 304);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 1, '2024-12-29');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '스파게티', '1회', 235, 526);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '라면', '1회', 124, 516);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '우동', '1회', 163, 260);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 4, '2024-12-27');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '치킨', '1회', 260, 520);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '된장국', '1회', 137, 82);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '샐러드', '1회', 149, 223);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 6, '2025-01-22');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '샌드위치', '1회', 193, 337);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '삼겹살', '1회', 198, 643);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '된장찌개', '1회', 216, 194);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 3, '2025-02-24');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '초밥', '1회', 119, 261);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '갈비탕', '1회', 292, 389);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '우동', '1회', 198, 316);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 5, '2024-11-07');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '햄버거', '1회', 321, 588);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '떡볶이', '1회', 180, 450);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 3, '2025-02-11');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '김밥', '1회', 214, 342);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '김치찌개', '1회', 199, 218);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 1, '2024-10-02');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '볶음밥', '1회', 173, 408);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '치킨', '1회', 346, 692);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '김밥', '1회', 230, 368);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 2, '2024-10-22');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '된장찌개', '1회', 154, 138);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '라면', '1회', 154, 641);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '스파게티', '1회', 294, 658);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 5, '2024-11-05');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '샌드위치', '1회', 236, 413);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '된장국', '1회', 147, 88);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 5, '2024-12-14');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '갈비탕', '1회', 344, 458);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '초밥', '1회', 155, 341);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 1, '2024-10-15');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '라면', '1회', 164, 683);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '삼겹살', '1회', 155, 503);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '불고기', '1회', 179, 348);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 2, '2024-10-24');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '비빔밥', '1회', 258, 464);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '떡볶이', '1회', 215, 537);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 5, '2024-10-09');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '초밥', '1회', 188, 413);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '우동', '1회', 184, 294);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 3, '2024-10-01');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '핫도그', '1회', 260, 499);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '갈비탕', '1회', 314, 418);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '라면', '1회', 124, 516);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 2, '2024-11-06');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '비빔밥', '1회', 201, 361);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '핫도그', '1회', 240, 460);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '삼겹살', '1회', 249, 809);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 2, '2025-01-01');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '비빔밥', '1회', 273, 491);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '삼겹살', '1회', 201, 653);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 3, '2025-01-20');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '된장찌개', '1회', 239, 215);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '치킨', '1회', 292, 584);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '된장국', '1회', 110, 66);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 4, '2024-11-01');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '된장찌개', '1회', 195, 175);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '우동', '1회', 248, 396);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 1, '2025-03-05');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '볶음밥', '1회', 181, 427);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '김밥', '1회', 233, 372);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 1, '2024-12-18');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '된장찌개', '1회', 158, 142);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '스파게티', '1회', 254, 568);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '치킨', '1회', 263, 526);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 5, '2024-10-30');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '비빔밥', '1회', 206, 370);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '우동', '1회', 225, 360);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '샌드위치', '1회', 223, 390);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 3, '2025-02-06');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '갈비탕', '1회', 294, 392);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '초밥', '1회', 154, 338);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '라면', '1회', 164, 683);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 5, '2025-01-17');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '된장국', '1회', 124, 74);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '샌드위치', '1회', 182, 318);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 6, '2024-11-11');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '삼겹살', '1회', 240, 780);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '라면', '1회', 94, 391);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '불고기', '1회', 145, 281);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 3, '2025-03-04');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '햄버거', '1회', 314, 575);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '스파게티', '1회', 298, 667);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 6, '2024-11-18');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '샌드위치', '1회', 181, 316);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '김밥', '1회', 168, 268);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 1, '2025-01-30');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '볶음밥', '1회', 211, 498);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '핫도그', '1회', 258, 495);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 2, '2024-11-20');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '우동', '1회', 175, 280);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '핫도그', '1회', 220, 422);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 6, '2024-12-31');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '떡볶이', '1회', 177, 442);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '스파게티', '1회', 252, 564);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 5, '2024-11-21');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '샐러드', '1회', 77, 115);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '김치찌개', '1회', 227, 249);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '스파게티', '1회', 210, 470);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 6, '2025-01-21');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '갈비탕', '1회', 296, 394);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '삼겹살', '1회', 216, 702);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '우동', '1회', 222, 355);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 3, '2024-10-20');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '김밥', '1회', 183, 292);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '우동', '1회', 187, 299);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '샌드위치', '1회', 221, 386);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 5, '2025-01-12');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '떡볶이', '1회', 195, 487);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '삼겹살', '1회', 168, 546);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '비빔밥', '1회', 280, 504);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 3, '2024-12-06');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '불고기', '1회', 132, 256);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '떡볶이', '1회', 171, 427);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '김치찌개', '1회', 182, 200);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 1, '2025-01-29');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '샐러드', '1회', 138, 207);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '초밥', '1회', 172, 378);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 2, '2024-11-17');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '불고기', '1회', 227, 441);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '김치찌개', '1회', 187, 205);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 5, '2025-01-25');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '비빔밥', '1회', 239, 430);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '라면', '1회', 142, 591);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 1, '2024-12-09');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '샌드위치', '1회', 239, 418);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '라면', '1회', 124, 516);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '감자튀김', '1회', 218, 348);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 2, '2024-12-17');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '삼겹살', '1회', 167, 542);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '떡볶이', '1회', 228, 570);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '햄버거', '1회', 270, 495);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 4, '2024-10-06');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '떡볶이', '1회', 216, 540);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '김치찌개', '1회', 242, 266);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '갈비탕', '1회', 271, 361);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 2, '2025-02-17');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '샌드위치', '1회', 241, 421);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '삼겹살', '1회', 221, 718);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '떡볶이', '1회', 135, 337);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 3, '2025-01-15');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '된장찌개', '1회', 163, 146);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '비빔밥', '1회', 231, 415);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '샌드위치', '1회', 239, 418);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 4, '2025-01-14');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '치킨', '1회', 254, 508);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '핫도그', '1회', 272, 522);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 4, '2024-10-16');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '김밥', '1회', 244, 390);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '초밥', '1회', 162, 356);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '비빔밥', '1회', 277, 498);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 1, '2024-11-30');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '떡볶이', '1회', 230, 575);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '김밥', '1회', 184, 294);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '핫도그', '1회', 225, 432);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 3, '2025-01-05');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '샌드위치', '1회', 194, 339);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '라면', '1회', 147, 612);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '갈비탕', '1회', 311, 414);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 1, '2025-02-09');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '햄버거', '1회', 345, 632);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '감자튀김', '1회', 231, 369);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '핫도그', '1회', 245, 470);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 3, '2025-01-11');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '볶음밥', '1회', 184, 434);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '스파게티', '1회', 269, 602);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '햄버거', '1회', 270, 495);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 2, '2025-02-20');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '떡볶이', '1회', 209, 522);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '된장국', '1회', 198, 118);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 1, '2024-12-25');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '핫도그', '1회', 281, 539);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '김밥', '1회', 219, 350);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 1, '2024-11-09');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '우동', '1회', 206, 329);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '라면', '1회', 162, 675);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '햄버거', '1회', 302, 553);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 1, '2025-02-08');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '햄버거', '1회', 296, 542);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '스파게티', '1회', 264, 591);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 2, '2023-12-07');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '불고기', '1회', 192, 373);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '라면', '1회', 99, 412);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '볶음밥', '1회', 184, 434);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 4, '2023-08-24');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '떡볶이', '1회', 139, 347);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '샐러드', '1회', 94, 141);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 2, '2023-07-16');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '김치찌개', '1회', 214, 235);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '비빔밥', '1회', 265, 477);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '삼겹살', '1회', 206, 669);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 1, '2023-05-13');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '떡볶이', '1회', 199, 497);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '삼겹살', '1회', 211, 685);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '우동', '1회', 240, 384);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 2, '2023-03-04');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '된장찌개', '1회', 186, 167);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '불고기', '1회', 148, 287);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '김치찌개', '1회', 171, 188);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 2, '2023-08-12');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '샐러드', '1회', 134, 201);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '햄버거', '1회', 282, 517);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '김밥', '1회', 156, 249);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 5, '2023-05-17');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '샐러드', '1회', 118, 177);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '비빔밥', '1회', 280, 504);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 3, '2023-11-07');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '치킨', '1회', 308, 616);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '비빔밥', '1회', 264, 475);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '스파게티', '1회', 256, 573);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 4, '2023-07-14');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '된장국', '1회', 132, 79);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '스파게티', '1회', 221, 495);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '초밥', '1회', 169, 371);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 4, '2023-03-14');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '떡볶이', '1회', 218, 545);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '갈비탕', '1회', 260, 346);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '샌드위치', '1회', 163, 285);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 5, '2023-05-21');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '떡볶이', '1회', 213, 532);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '치킨', '1회', 302, 604);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '볶음밥', '1회', 246, 581);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 4, '2023-12-15');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '된장찌개', '1회', 159, 143);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '스파게티', '1회', 255, 571);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 4, '2023-08-07');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '김치찌개', '1회', 246, 270);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '햄버거', '1회', 262, 480);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 6, '2023-08-30');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '샐러드', '1회', 89, 133);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '갈비탕', '1회', 257, 342);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '삼겹살', '1회', 216, 702);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 3, '2023-05-12');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '우동', '1회', 160, 256);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '불고기', '1회', 162, 315);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 3, '2023-06-11');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '핫도그', '1회', 286, 549);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '초밥', '1회', 146, 321);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 5, '2023-10-05');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '스파게티', '1회', 202, 452);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '우동', '1회', 164, 262);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '떡볶이', '1회', 162, 405);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 3, '2023-08-05');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '김밥', '1회', 237, 379);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '우동', '1회', 167, 267);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '샌드위치', '1회', 221, 386);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 3, '2023-06-29');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '김치찌개', '1회', 183, 201);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '갈비탕', '1회', 264, 352);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '된장찌개', '1회', 234, 210);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 5, '2023-10-15');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '초밥', '1회', 200, 440);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '라면', '1회', 107, 445);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '갈비탕', '1회', 333, 444);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '초밥', '1회', 200, 440);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '라면', '1회', 107, 445);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '갈비탕', '1회', 333, 444);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 4, '2024-01-15');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '된장찌개', '1회', 159, 143);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '스파게티', '1회', 255, 571);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 4, '2024-02-07');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '김치찌개', '1회', 246, 270);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '햄버거', '1회', 262, 480);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 6, '2024-04-20');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '샐러드', '1회', 89, 133);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '갈비탕', '1회', 257, 342);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '삼겹살', '1회', 216, 702);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 3, '2024-05-12');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '우동', '1회', 160, 256);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '불고기', '1회', 162, 315);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 3, '2024-06-11');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '핫도그', '1회', 286, 549);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '초밥', '1회', 146, 321);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 5, '2024-07-05');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '스파게티', '1회', 202, 452);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '우동', '1회', 164, 262);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '떡볶이', '1회', 162, 405);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 3, '2024-08-05');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '김밥', '1회', 237, 379);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '우동', '1회', 167, 267);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '샌드위치', '1회', 221, 386);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 3, '2024-09-29');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '김치찌개', '1회', 183, 201);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '갈비탕', '1회', 264, 352);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '된장찌개', '1회', 234, 210);
INSERT INTO DIET (NO, MEMBER_NO, MEAL_CODE, DIET_DAY) VALUES (SEQ_DIET.NEXTVAL, 1, 3, '2025-03-01');
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '김치찌개', '1회', 183, 201);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '갈비탕', '1회', 264, 352);
INSERT INTO MEAL_LOG (NO, DIET_NO, NAME, UNIT, AMOUNT, KCAL) VALUES (SEQ_MEAL_LOG.NEXTVAL, SEQ_DIET.CURRVAL, '된장찌개', '1회', 234, 210);

INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2023-12-02', 1113);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2024-03-24', 877);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2024-12-06', 1175);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2024-01-24', 542);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2023-11-05', 1000);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2024-10-16', 652);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2025-02-19', 1376);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2023-12-08', 1360);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2024-09-26', 1387);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2024-02-23', 1160);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2024-12-22', 779);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2023-12-15', 1137);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2024-02-15', 844);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2024-06-20', 1230);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2024-07-28', 969);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2024-11-15', 866);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2024-07-05', 937);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2025-01-28', 569);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2023-10-24', 948);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2025-01-03', 883);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2024-10-04', 1235);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2024-02-25', 537);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2024-01-16', 538);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2023-10-23', 656);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2023-10-27', 1217);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2023-12-20', 541);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2024-08-08', 531);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2024-07-16', 1274);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2024-08-13', 818);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2024-08-04', 1453);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2025-01-06', 1487);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2023-11-28', 719);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2024-09-02', 705);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2024-04-01', 560);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2024-09-30', 1140);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2024-03-25', 583);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2024-09-24', 1195);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2024-06-07', 1210);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2024-03-27', 597);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2023-12-29', 501);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2024-07-25', 1002);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2024-11-02', 729);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2024-09-03', 759);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2024-04-26', 992);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2023-12-09', 1423);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2023-11-13', 981);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2025-01-27', 1164);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2024-06-28', 950);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2025-02-17', 1444);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2024-04-12', 1092);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2025-03-01', 992);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2025-03-02', 1444);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2025-03-03', 1164);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2025-03-04', 981);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2025-03-05', 1002);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2025-03-11', 1264);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2025-03-13', 1200);
INSERT INTO WATER_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WATER_LOG.NEXTVAL, 1, '2025-03-14', 1165);

INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2024-02-11', 69.1);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2023-12-03', 76.6);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2025-02-10', 66.1);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2024-06-02', 72.5);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2024-06-13', 67.8);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2023-11-28', 77.0);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2024-12-27', 75.9);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2023-12-21', 67.4);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2024-04-04', 84.5);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2023-10-03', 75.6);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2025-02-03', 67.2);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2024-08-31', 73.7);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2023-12-29', 68.2);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2023-10-14', 77.3);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2023-11-06', 77.0);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2024-03-31', 71.5);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2024-11-16', 69.7);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2024-11-13', 74.1);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2025-02-11', 75.9);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2023-12-24', 69.4);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2024-03-24', 67.2);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2024-03-07', 78.4);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2024-10-31', 76.6);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2024-09-02', 73.5);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2025-01-21', 73.4);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2024-11-27', 78.8);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2024-08-25', 65.9);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2024-07-06', 66.9);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2023-11-30', 75.3);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2024-03-28', 68.4);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2024-04-23', 68.1);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2025-01-03', 73.3);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2024-11-04', 78.1);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2024-01-04', 67.7);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2023-12-14', 66.0);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2023-11-17', 74.0);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2023-10-07', 76.0);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2025-02-17', 72.1);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2024-03-21', 73.7);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2024-11-19', 84.9);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2024-12-26', 68.6);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2024-04-26', 66.4);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2024-02-09', 70.5);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2024-01-23', 68.4);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2024-08-20', 73.6);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2024-08-12', 81.6);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2024-02-18', 79.1);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2025-02-16', 68.8);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2024-07-28', 73.9);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2024-10-28', 68.9);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2025-03-01', 78.5);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2025-03-02', 78.8);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2025-03-03', 79.1);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2025-03-04', 78.2);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2025-03-05', 78.5);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2025-03-11', 79.1);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2025-03-13', 78.2);
INSERT INTO WEIGHT_LOG (NO , MEMBER_NO , ENROLL_DATE , AMOUNT) VALUES (SEQ_WEIGHT_LOG.NEXTVAL, 1, '2025-03-14', 78.5);

--------------------------------------- 음주 ---------------------------------------------

INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '칵테일', 12, 418, TO_DATE('2024/10/04', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '막걸리', 6, 248, TO_DATE('2024/10/06', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '막걸리', 6, 206, TO_DATE('2024/10/07', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '맥주', 5, 383, TO_DATE('2024/10/09', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '맥주', 5, 687, TO_DATE('2024/10/11', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '막걸리', 6, 673, TO_DATE('2024/10/12', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '맥주', 5, 631, TO_DATE('2024/10/13', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '소주', 17, 734, TO_DATE('2024/10/14', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '막걸리', 6, 908, TO_DATE('2024/10/15', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '막걸리', 6, 323, TO_DATE('2024/10/16', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '소주', 17, 342, TO_DATE('2024/10/17', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '칵테일', 12, 310, TO_DATE('2024/10/23', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '소주', 17, 771, TO_DATE('2024/10/24', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '맥주', 5, 167, TO_DATE('2024/10/27', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '칵테일', 12, 834, TO_DATE('2024/11/01', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '막걸리', 6, 661, TO_DATE('2024/11/03', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '소주', 17, 697, TO_DATE('2024/11/06', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '소주', 17, 172, TO_DATE('2024/11/07', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '소주', 17, 709, TO_DATE('2024/11/09', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '칵테일', 12, 541, TO_DATE('2024/11/13', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '소주', 17, 583, TO_DATE('2024/11/17', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '맥주', 5, 416, TO_DATE('2024/11/25', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '소주', 17, 331, TO_DATE('2024/11/29', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '막걸리', 6, 377, TO_DATE('2024/12/03', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '소주', 17, 275, TO_DATE('2024/12/09', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '맥주', 5, 404, TO_DATE('2024/12/12', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '칵테일', 12, 543, TO_DATE('2024/12/17', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '소주', 17, 101, TO_DATE('2024/12/18', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '막걸리', 6, 674, TO_DATE('2024/12/19', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '막걸리', 6, 490, TO_DATE('2024/12/24', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '소주', 17, 157, TO_DATE('2024/12/26', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '막걸리', 6, 497, TO_DATE('2024/12/28', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '맥주', 5, 459, TO_DATE('2024/12/29', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '양주', 40, 385, TO_DATE('2024/12/31', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '맥주', 5, 847, TO_DATE('2025/01/05', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '양주', 40, 362, TO_DATE('2025/01/06', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '맥주', 5, 117, TO_DATE('2025/01/10', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '소주', 17, 646, TO_DATE('2025/01/11', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '맥주', 5, 194, TO_DATE('2025/01/15', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '칵테일', 12, 188, TO_DATE('2025/01/16', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '칵테일', 12, 825, TO_DATE('2025/01/19', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '맥주', 5, 393, TO_DATE('2025/01/20', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '양주', 40, 893, TO_DATE('2025/01/28', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '양주', 40, 284, TO_DATE('2025/02/01', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '맥주', 5, 762, TO_DATE('2025/02/03', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '맥주', 5, 815, TO_DATE('2025/02/05', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '양주', 40, 873, TO_DATE('2025/02/08', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '소주', 17, 722, TO_DATE('2025/02/10', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '맥주', 5, 477, TO_DATE('2025/02/12', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE) VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '막걸리', 6, 484, TO_DATE('2025/02/14', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE)
VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '칵테일', 12, 130, TO_DATE('2025/02/14', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE)
VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '막걸리', 6, 185, TO_DATE('2025/02/15', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE)
VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '맥주', 5, 245, TO_DATE('2025/02/17', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE)
VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '소주', 17, 320, TO_DATE('2025/02/19', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE)
VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '양주', 40, 405, TO_DATE('2025/02/21', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE)
VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '칵테일', 12, 570, TO_DATE('2025/02/23', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE)
VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '막걸리', 6, 685, TO_DATE('2025/02/25', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE)
VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '맥주', 5, 150, TO_DATE('2025/02/27', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE)
VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '소주', 17, 720, TO_DATE('2025/02/28', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE)
VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '양주', 40, 795, TO_DATE('2025/03/02', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE)
VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '칵테일', 12, 555, TO_DATE('2025/03/04', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE)
VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '막걸리', 6, 660, TO_DATE('2025/03/06', 'YYYY/MM/DD'));
INSERT INTO RECORD_ALC (NO, MEMBER_NO, ALC_TYPE, ABV, CC, ENROLL_DATE)
VALUES (SEQ_RECORD_ALC.NEXTVAL, 1, '맥주', 5, 800, TO_DATE('2025/03/07', 'YYYY/MM/DD'));


--------------------------------------- 흡연 ---------------------------------------------

INSERT INTO RECORD_CIGARETTE (NO, MEMBER_NO, CIGARETTE, TAR, START_DATE, END_DATE) VALUES 
(SEQ_CIGARETTE.NEXTVAL, 1, '세븐스타 골드', 4, TO_DATE('2024/10/01', 'YYYY/MM/DD'), TO_DATE('2024/10/03', 'YYYY/MM/DD'));
INSERT INTO RECORD_CIGARETTE (NO, MEMBER_NO, CIGARETTE, TAR, START_DATE, END_DATE) VALUES 
(SEQ_CIGARETTE.NEXTVAL, 1, '말보로 레드', 3, TO_DATE('2024/10/05', 'YYYY/MM/DD'), TO_DATE('2024/10/08', 'YYYY/MM/DD'));
INSERT INTO RECORD_CIGARETTE (NO, MEMBER_NO, CIGARETTE, TAR, START_DATE, END_DATE) VALUES 
(SEQ_CIGARETTE.NEXTVAL, 1, '켄트 블루', 2, TO_DATE('2024/10/10', 'YYYY/MM/DD'), TO_DATE('2024/10/15', 'YYYY/MM/DD'));
INSERT INTO RECORD_CIGARETTE (NO, MEMBER_NO, CIGARETTE, TAR, START_DATE, END_DATE) VALUES 
(SEQ_CIGARETTE.NEXTVAL, 1, '시그니처 블랙', 5, TO_DATE('2024/10/16', 'YYYY/MM/DD'), TO_DATE('2024/10/22', 'YYYY/MM/DD'));
INSERT INTO RECORD_CIGARETTE (NO, MEMBER_NO, CIGARETTE, TAR, START_DATE, END_DATE) VALUES 
(SEQ_CIGARETTE.NEXTVAL, 1, '에쎄 프라임', 6, TO_DATE('2024/10/24', 'YYYY/MM/DD'), TO_DATE('2024/10/24', 'YYYY/MM/DD'));
INSERT INTO RECORD_CIGARETTE (NO, MEMBER_NO, CIGARETTE, TAR, START_DATE, END_DATE) VALUES 
(SEQ_CIGARETTE.NEXTVAL, 1, '세븐스타 골드', 9, TO_DATE('2024/10/24', 'YYYY/MM/DD'), TO_DATE('2024/10/25', 'YYYY/MM/DD'));
INSERT INTO RECORD_CIGARETTE (NO, MEMBER_NO, CIGARETTE, TAR, START_DATE, END_DATE) VALUES 
(SEQ_CIGARETTE.NEXTVAL, 1, '말보로 골드', 8, TO_DATE('2024/10/28', 'YYYY/MM/DD'), TO_DATE('2024/10/30', 'YYYY/MM/DD'));
INSERT INTO RECORD_CIGARETTE (NO, MEMBER_NO, CIGARETTE, TAR, START_DATE, END_DATE) VALUES 
(SEQ_CIGARETTE.NEXTVAL, 1, '더원 블루', 7, TO_DATE('2024/10/30', 'YYYY/MM/DD'), TO_DATE('2024/10/31', 'YYYY/MM/DD'));
INSERT INTO RECORD_CIGARETTE (NO, MEMBER_NO, CIGARETTE, TAR, START_DATE, END_DATE) VALUES 
(SEQ_CIGARETTE.NEXTVAL, 1, '카멜 레드', 2, TO_DATE('2024/11/03', 'YYYY/MM/DD'), TO_DATE('2024/11/07', 'YYYY/MM/DD'));
INSERT INTO RECORD_CIGARETTE (NO, MEMBER_NO, CIGARETTE, TAR, START_DATE, END_DATE) VALUES 
(SEQ_CIGARETTE.NEXTVAL, 1, '시그니처 블랙', 6, TO_DATE('2024/11/10', 'YYYY/MM/DD'), TO_DATE('2024/11/13', 'YYYY/MM/DD'));
INSERT INTO RECORD_CIGARETTE (NO, MEMBER_NO, CIGARETTE, TAR, START_DATE, END_DATE) VALUES 
(SEQ_CIGARETTE.NEXTVAL, 1, '에쎄 프라임', 11, TO_DATE('2024/11/14', 'YYYY/MM/DD'), TO_DATE('2024/11/17', 'YYYY/MM/DD'));
INSERT INTO RECORD_CIGARETTE (NO, MEMBER_NO, CIGARETTE, TAR, START_DATE, END_DATE) VALUES 
(SEQ_CIGARETTE.NEXTVAL, 1, '던힐 레드', 10, TO_DATE('2024/11/17', 'YYYY/MM/DD'), TO_DATE('2024/11/18', 'YYYY/MM/DD'));
INSERT INTO RECORD_CIGARETTE (NO, MEMBER_NO, CIGARETTE, TAR, START_DATE, END_DATE) VALUES 
(SEQ_CIGARETTE.NEXTVAL, 1, '에쎄 체인지', 7, TO_DATE('2024/11/20', 'YYYY/MM/DD'), TO_DATE('2024/11/20', 'YYYY/MM/DD'));
INSERT INTO RECORD_CIGARETTE (NO, MEMBER_NO, CIGARETTE, TAR, START_DATE, END_DATE) VALUES 
(SEQ_CIGARETTE.NEXTVAL, 1, '더원 블루', 5, TO_DATE('2024/11/20', 'YYYY/MM/DD'), TO_DATE('2024/11/25', 'YYYY/MM/DD'));
INSERT INTO RECORD_CIGARETTE (NO, MEMBER_NO, CIGARETTE, TAR, START_DATE, END_DATE) VALUES 
(SEQ_CIGARETTE.NEXTVAL, 1, '말보로 레드', 2, TO_DATE('2024/11/27', 'YYYY/MM/DD'), TO_DATE('2024/11/30', 'YYYY/MM/DD'));
INSERT INTO RECORD_CIGARETTE (NO, MEMBER_NO, CIGARETTE, TAR, START_DATE, END_DATE) VALUES 
(SEQ_CIGARETTE.NEXTVAL, 1, '에쎄 체인지', 12, TO_DATE('2024/12/01', 'YYYY/MM/DD'), TO_DATE('2024/12/06', 'YYYY/MM/DD'));
INSERT INTO RECORD_CIGARETTE (NO, MEMBER_NO, CIGARETTE, TAR, START_DATE, END_DATE) VALUES 
(SEQ_CIGARETTE.NEXTVAL, 1, '말보로 골드', 4, TO_DATE('2024/12/06', 'YYYY/MM/DD'), TO_DATE('2024/12/07', 'YYYY/MM/DD'));
INSERT INTO RECORD_CIGARETTE (NO, MEMBER_NO, CIGARETTE, TAR, START_DATE, END_DATE) VALUES 
(SEQ_CIGARETTE.NEXTVAL, 1, '더원 오렌지', 12, TO_DATE('2024/12/10', 'YYYY/MM/DD'), TO_DATE('2024/12/10', 'YYYY/MM/DD'));
INSERT INTO RECORD_CIGARETTE (NO, MEMBER_NO, CIGARETTE, TAR, START_DATE, END_DATE) VALUES 
(SEQ_CIGARETTE.NEXTVAL, 1, '윈스턴 레드', 8, TO_DATE('2024/12/12', 'YYYY/MM/DD'), TO_DATE('2024/12/16', 'YYYY/MM/DD'));
INSERT INTO RECORD_CIGARETTE (NO, MEMBER_NO, CIGARETTE, TAR, START_DATE, END_DATE) VALUES 
(SEQ_CIGARETTE.NEXTVAL, 1, '에쎄 체인지', 9, TO_DATE('2024/12/16', 'YYYY/MM/DD'), TO_DATE('2024/12/21', 'YYYY/MM/DD'));
INSERT INTO RECORD_CIGARETTE (NO, MEMBER_NO, CIGARETTE, TAR, START_DATE, END_DATE) VALUES 
(SEQ_CIGARETTE.NEXTVAL, 1, '더원 블루', 10, TO_DATE('2024/12/22', 'YYYY/MM/DD'), TO_DATE('2024/12/23', 'YYYY/MM/DD'));
INSERT INTO RECORD_CIGARETTE (NO, MEMBER_NO, CIGARETTE, TAR, START_DATE, END_DATE) VALUES 
(SEQ_CIGARETTE.NEXTVAL, 1, '윈스턴 레드', 1, TO_DATE('2024/12/23', 'YYYY/MM/DD'), TO_DATE('2024/12/29', 'YYYY/MM/DD'));
INSERT INTO RECORD_CIGARETTE (NO, MEMBER_NO, CIGARETTE, TAR, START_DATE, END_DATE) VALUES 
(SEQ_CIGARETTE.NEXTVAL, 1, '에쎄 체인지', 5, TO_DATE('2024/12/29', 'YYYY/MM/DD'), TO_DATE('2024/12/30', 'YYYY/MM/DD'));
INSERT INTO RECORD_CIGARETTE (NO, MEMBER_NO, CIGARETTE, TAR, START_DATE, END_DATE) VALUES 
(SEQ_CIGARETTE.NEXTVAL, 1, '윈스턴 레드', 4, TO_DATE('2025/01/02', 'YYYY/MM/DD'), TO_DATE('2025/01/03', 'YYYY/MM/DD'));
INSERT INTO RECORD_CIGARETTE (NO, MEMBER_NO, CIGARETTE, TAR, START_DATE, END_DATE) VALUES 
(SEQ_CIGARETTE.NEXTVAL, 1, '보그 블랙', 6, TO_DATE('2025/01/04', 'YYYY/MM/DD'), TO_DATE('2025/01/05', 'YYYY/MM/DD'));
INSERT INTO RECORD_CIGARETTE (NO, MEMBER_NO, CIGARETTE, TAR, START_DATE, END_DATE) VALUES 
(SEQ_CIGARETTE.NEXTVAL, 1, '윈스턴 레드', 10, TO_DATE('2025/01/05', 'YYYY/MM/DD'), TO_DATE('2025/01/08', 'YYYY/MM/DD'));
INSERT INTO RECORD_CIGARETTE (NO, MEMBER_NO, CIGARETTE, TAR, START_DATE, END_DATE) VALUES 
(SEQ_CIGARETTE.NEXTVAL, 1, '켄트 블루', 8, TO_DATE('2025/01/10', 'YYYY/MM/DD'), TO_DATE('2025/01/16', 'YYYY/MM/DD'));
INSERT INTO RECORD_CIGARETTE (NO, MEMBER_NO, CIGARETTE, TAR, START_DATE, END_DATE) VALUES 
(SEQ_CIGARETTE.NEXTVAL, 1, '팔리아멘트', 9, TO_DATE('2025/01/19', 'YYYY/MM/DD'), TO_DATE('2025/01/23', 'YYYY/MM/DD'));
INSERT INTO RECORD_CIGARETTE (NO, MEMBER_NO, CIGARETTE, TAR, START_DATE, END_DATE) VALUES 
(SEQ_CIGARETTE.NEXTVAL, 1, '더원 오렌지', 9, TO_DATE('2025/01/26', 'YYYY/MM/DD'), TO_DATE('2025/01/27', 'YYYY/MM/DD'));
INSERT INTO RECORD_CIGARETTE (NO, MEMBER_NO, CIGARETTE, TAR, START_DATE, END_DATE) VALUES 
(SEQ_CIGARETTE.NEXTVAL, 1, '디스 아프리카', 7, TO_DATE('2025/01/30', 'YYYY/MM/DD'), TO_DATE('2025/02/01', 'YYYY/MM/DD'));
INSERT INTO RECORD_CIGARETTE (NO, MEMBER_NO, CIGARETTE, TAR, START_DATE, END_DATE) VALUES 
(SEQ_CIGARETTE.NEXTVAL, 1, '던힐 블루', 9, TO_DATE('2025/02/04', 'YYYY/MM/DD'), TO_DATE('2025/02/09', 'YYYY/MM/DD'));
INSERT INTO RECORD_CIGARETTE (NO, MEMBER_NO, CIGARETTE, TAR, START_DATE, END_DATE) VALUES 
(SEQ_CIGARETTE.NEXTVAL, 1, '시그니처 블랙', 8, TO_DATE('2025/02/10', 'YYYY/MM/DD'), TO_DATE('2025/02/13', 'YYYY/MM/DD'));
INSERT INTO RECORD_CIGARETTE (NO, MEMBER_NO, CIGARETTE, TAR, START_DATE, END_DATE) VALUES 
(SEQ_CIGARETTE.NEXTVAL, 1, '에쎄 체인지', 5, TO_DATE('2025/02/16', 'YYYY/MM/DD'), TO_DATE('2025/02/21', 'YYYY/MM/DD'));
INSERT INTO RECORD_CIGARETTE (NO, MEMBER_NO, CIGARETTE, TAR, START_DATE, END_DATE) VALUES 
(SEQ_CIGARETTE.NEXTVAL, 1, '에쎄 프라임', 7, TO_DATE('2025/02/24', 'YYYY/MM/DD'), TO_DATE('2025/02/26', 'YYYY/MM/DD'));
INSERT INTO RECORD_CIGARETTE (NO, MEMBER_NO, CIGARETTE, TAR, START_DATE, END_DATE) VALUES 
(SEQ_CIGARETTE.NEXTVAL, 1, '메비우스 골드', 9, TO_DATE('2025/02/28', 'YYYY/MM/DD'), TO_DATE('2025/03/01', 'YYYY/MM/DD'));
INSERT INTO RECORD_CIGARETTE (NO, MEMBER_NO, CIGARETTE, TAR, START_DATE, END_DATE) VALUES 
(SEQ_CIGARETTE.NEXTVAL, 1, '에쎄 체인지', 6, TO_DATE('2025/03/03', 'YYYY/MM/DD'), TO_DATE('2025/03/07', 'YYYY/MM/DD'));



--------------------------------------- 시 ---------------------------------------------
INSERT INTO CITY (NO, CITY_NAME) VALUES (11, '서울특별시');
INSERT INTO CITY (NO, CITY_NAME) VALUES (26, '부산광역시');
INSERT INTO CITY (NO, CITY_NAME) VALUES (27, '대구광역시');
INSERT INTO CITY (NO, CITY_NAME) VALUES (28, '인천광역시');
INSERT INTO CITY (NO, CITY_NAME) VALUES (29, '광주광역시');
INSERT INTO CITY (NO, CITY_NAME) VALUES (30, '대전광역시');
INSERT INTO CITY (NO, CITY_NAME) VALUES (31, '울산광역시');
INSERT INTO CITY (NO, CITY_NAME) VALUES (36, '세종특별자치시');
INSERT INTO CITY (NO, CITY_NAME) VALUES (41, '경기도');
INSERT INTO CITY (NO, CITY_NAME) VALUES (43, '충청북도');
INSERT INTO CITY (NO, CITY_NAME) VALUES (44, '충청남도');
INSERT INTO CITY (NO, CITY_NAME) VALUES (45, '전라북도');
INSERT INTO CITY (NO, CITY_NAME) VALUES (46, '전라남도');
INSERT INTO CITY (NO, CITY_NAME) VALUES (47, '경상북도');
INSERT INTO CITY (NO, CITY_NAME) VALUES (48, '경상남도');
INSERT INTO CITY (NO, CITY_NAME) VALUES (50, '제주특별자치도');
INSERT INTO CITY (NO, CITY_NAME) VALUES (51, '강원특별자치도');

--------------------------------------- 구 ---------------------------------------------
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (11110, '종로구', 11);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (11140, '중구', 11);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (11170, '용산구', 11);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (11200, '성동구', 11);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (11215, '광진구', 11);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (11230, '동대문구', 11);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (11260, '중랑구', 11);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (11290, '성북구', 11);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (11305, '강북구', 11);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (11320, '도봉구', 11);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (11350, '노원구', 11);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (11380, '은평구', 11);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (11410, '서대문구', 11);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (11440, '마포구', 11);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (11470, '양천구', 11);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (11500, '강서구', 11);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (11530, '구로구', 11);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (11545, '금천구', 11);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (11560, '영등포구', 11);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (11590, '동작구', 11);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (11620, '관악구', 11);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (11650, '서초구', 11);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (11680, '강남구', 11);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (11710, '송파구', 11);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (11740, '강동구', 11);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41111, '수원시 장안구', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41113, '수원시 권선구', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41115, '수원시 팔달구', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41117, '수원시 영통구', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41131, '성남시 수정구', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41133, '성남시 중원구', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41135, '성남시 분당구', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41150, '의정부시', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41171, '안양시 만안구', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41173, '안양시 동안구', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41190, '부천시', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41210, '광명시', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41220, '평택시', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41250, '동두천시', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41271, '안산시 상록구', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41273, '안산시 단원구', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41281, '고양시 덕양구', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41285, '고양시 일산동구', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41287, '고양시 일산서구', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41290, '과천시', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41310, '구리시', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41360, '남양주시', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41370, '오산시', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41390, '시흥시', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41410, '군포시', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41430, '의왕시', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41450, '하남시', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41461, '용인시 처인구', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41463, '용인시 기흥구', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41465, '용인시 수지구', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41480, '파주시', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41500, '이천시', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41550, '안성시', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41570, '김포시', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41590, '화성시', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41610, '광주시', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41630, '양주시', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41650, '포천시', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41670, '여주시', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41800, '연천군', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41820, '가평군', 41);
INSERT INTO DISTRICT (NO, DISTRICT_NAME, CITY_NO) VALUES (41830, '양평군', 41);

--------------------------------------- 동 ---------------------------------------------
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110101, '청운동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110102, '신교동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110103, '궁정동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110104, '효자동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110105, '창성동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110106, '통의동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110107, '적선동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110108, '통인동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110109, '누상동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110110, '누하동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110111, '옥인동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110112, '체부동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110113, '필운동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110114, '내자동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110115, '사직동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110116, '도렴동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110117, '당주동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110118, '내수동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110119, '세종로', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110120, '신문로1가', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110121, '신문로2가', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110122, '청진동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110123, '서린동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110124, '수송동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110125, '중학동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110126, '종로1가', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110127, '공평동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110128, '관훈동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110129, '견지동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110130, '와룡동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110131, '권농동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110132, '운니동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110133, '익선동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110134, '경운동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110135, '관철동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110136, '인사동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110137, '낙원동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110138, '종로2가', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110139, '팔판동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110140, '삼청동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110141, '안국동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110142, '소격동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110143, '화동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110144, '사간동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110145, '송현동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110146, '가회동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110147, '재동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110148, '계동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110149, '원서동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110150, '훈정동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110151, '묘동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110152, '봉익동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110153, '돈의동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110154, '장사동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110155, '관수동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110156, '종로3가', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110157, '인의동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110158, '예지동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110159, '원남동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110160, '연지동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110161, '종로4가', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110162, '효제동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110163, '종로5가', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110164, '종로6가', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110165, '이화동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110166, '연건동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110167, '충신동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110168, '동숭동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110169, '혜화동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110170, '명륜1가', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110171, '명륜2가', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110172, '명륜4가', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110173, '명륜3가', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110174, '창신동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110175, '숭인동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110176, '교남동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110177, '평동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110178, '송월동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110179, '홍파동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110180, '교북동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110181, '행촌동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110182, '구기동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110183, '평창동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110184, '부암동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110185, '홍지동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110186, '신영동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11110187, '무악동', 11110);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140101, '무교동', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140102, '다동', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140103, '태평로1가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140104, '을지로1가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140105, '을지로2가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140106, '남대문로1가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140107, '삼각동', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140108, '수하동', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140109, '장교동', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140110, '수표동', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140111, '소공동', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140112, '남창동', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140113, '북창동', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140114, '태평로2가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140115, '남대문로2가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140116, '남대문로3가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140117, '남대문로4가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140118, '남대문로5가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140119, '봉래동1가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140120, '봉래동2가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140121, '회현동1가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140122, '회현동2가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140123, '회현동3가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140124, '충무로1가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140125, '충무로2가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140126, '명동1가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140127, '명동2가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140128, '남산동1가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140129, '남산동2가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140130, '남산동3가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140131, '저동1가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140132, '충무로4가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140133, '충무로5가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140134, '인현동2가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140135, '예관동', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140136, '묵정동', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140137, '필동1가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140138, '필동2가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140139, '필동3가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140140, '남학동', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140141, '주자동', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140142, '예장동', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140143, '장충동1가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140144, '장충동2가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140145, '광희동1가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140146, '광희동2가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140147, '쌍림동', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140148, '을지로6가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140149, '을지로7가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140150, '을지로4가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140151, '을지로5가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140152, '주교동', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140153, '방산동', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140154, '오장동', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140155, '을지로3가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140156, '입정동', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140157, '산림동', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140158, '충무로3가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140159, '초동', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140160, '인현동1가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140161, '저동2가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140162, '신당동', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140163, '흥인동', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140164, '무학동', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140165, '황학동', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140166, '서소문동', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140167, '정동', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140168, '순화동', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140169, '의주로1가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140170, '충정로1가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140171, '중림동', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140172, '의주로2가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140173, '만리동1가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11140174, '만리동2가', 11140);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11170101, '후암동', 11170);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11170102, '용산동2가', 11170);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11170103, '용산동4가', 11170);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11170104, '갈월동', 11170);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11170105, '남영동', 11170);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11170106, '용산동1가', 11170);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11170107, '동자동', 11170);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11170108, '서계동', 11170);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11170109, '청파동1가', 11170);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11170110, '청파동2가', 11170);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11170111, '청파동3가', 11170);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11170112, '원효로1가', 11170);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11170113, '원효로2가', 11170);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11170114, '신창동', 11170);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11170115, '산천동', 11170);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11170116, '청암동', 11170);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11170117, '원효로3가', 11170);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11170118, '원효로4가', 11170);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11170119, '효창동', 11170);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11170120, '도원동', 11170);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11170121, '용문동', 11170);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11170122, '문배동', 11170);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11170123, '신계동', 11170);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11170124, '한강로1가', 11170);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11170125, '한강로2가', 11170);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11170126, '용산동3가', 11170);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11170127, '용산동5가', 11170);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11170128, '한강로3가', 11170);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11170129, '이촌동', 11170);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11170130, '이태원동', 11170);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11170131, '한남동', 11170);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11170132, '동빙고동', 11170);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11170133, '서빙고동', 11170);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11170134, '주성동', 11170);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11170135, '용산동6가', 11170);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11170136, '보광동', 11170);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11200101, '상왕십리동', 11200);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11200102, '하왕십리동', 11200);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11200103, '홍익동', 11200);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11200104, '도선동', 11200);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11200105, '마장동', 11200);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11200106, '사근동', 11200);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11200107, '행당동', 11200);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11200108, '응봉동', 11200);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11200109, '금호동1가', 11200);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11200110, '금호동2가', 11200);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11200111, '금호동3가', 11200);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11200112, '금호동4가', 11200);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11200113, '옥수동', 11200);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11200114, '성수동1가', 11200);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11200115, '성수동2가', 11200);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11200118, '송정동', 11200);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11200122, '용답동', 11200);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11215101, '중곡동', 11215);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11215102, '능동', 11215);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11215103, '구의동', 11215);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11215104, '광장동', 11215);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11215105, '자양동', 11215);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11215107, '화양동', 11215);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11215109, '군자동', 11215);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11230101, '신설동', 11230);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11230102, '용두동', 11230);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11230103, '제기동', 11230);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11230104, '전농동', 11230);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11230105, '답십리동', 11230);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11230106, '장안동', 11230);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11230107, '청량리동', 11230);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11230108, '회기동', 11230);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11230109, '휘경동', 11230);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11230110, '이문동', 11230);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11260101, '면목동', 11260);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11260102, '상봉동', 11260);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11260103, '중화동', 11260);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11260104, '묵동', 11260);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11260105, '망우동', 11260);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11260106, '신내동', 11260);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290101, '성북동', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290102, '성북동1가', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290103, '돈암동', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290104, '동소문동1가', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290105, '동소문동2가', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290106, '동소문동3가', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290107, '동소문동4가', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290108, '동소문동5가', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290109, '동소문동6가', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290110, '동소문동7가', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290111, '삼선동1가', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290112, '삼선동2가', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290113, '삼선동3가', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290114, '삼선동4가', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290115, '삼선동5가', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290116, '동선동1가', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290117, '동선동2가', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290118, '동선동3가', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290119, '동선동4가', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290120, '동선동5가', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290121, '안암동1가', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290122, '안암동2가', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290123, '안암동3가', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290124, '안암동4가', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290125, '안암동5가', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290126, '보문동4가', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290127, '보문동5가', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290128, '보문동6가', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290129, '보문동7가', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290130, '보문동1가', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290131, '보문동2가', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290132, '보문동3가', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290133, '정릉동', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290134, '길음동', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290135, '종암동', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290136, '하월곡동', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290137, '상월곡동', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290138, '장위동', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11290139, '석관동', 11290);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11305101, '미아동', 11305);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11305102, '번동', 11305);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11305103, '수유동', 11305);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11305104, '우이동', 11305);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11320105, '쌍문동', 11320);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11320106, '방학동', 11320);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11320107, '창동', 11320);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11320108, '도봉동', 11320);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11350102, '월계동', 11350);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11350103, '공릉동', 11350);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11350104, '하계동', 11350);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11350105, '상계동', 11350);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11350106, '중계동', 11350);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11380101, '수색동', 11380);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11380102, '녹번동', 11380);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11380103, '불광동', 11380);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11380104, '갈현동', 11380);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11380105, '구산동', 11380);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11380106, '대조동', 11380);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11380107, '응암동', 11380);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11380108, '역촌동', 11380);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11380109, '신사동', 11380);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11380110, '증산동', 11380);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11380114, '진관동', 11380);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11410101, '충정로2가', 11410);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11410102, '충정로3가', 11410);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11410103, '합동', 11410);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11410104, '미근동', 11410);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11410105, '냉천동', 11410);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11410106, '천연동', 11410);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11410107, '옥천동', 11410);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11410108, '영천동', 11410);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11410109, '현저동', 11410);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11410110, '북아현동', 11410);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11410111, '홍제동', 11410);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11410112, '대현동', 11410);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11410113, '대신동', 11410);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11410114, '신촌동', 11410);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11410115, '봉원동', 11410);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11410116, '창천동', 11410);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11410117, '연희동', 11410);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11410118, '홍은동', 11410);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11410119, '북가좌동', 11410);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11410120, '남가좌동', 11410);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11440101, '아현동', 11440);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11440102, '공덕동', 11440);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11440103, '신공덕동', 11440);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11440104, '도화동', 11440);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11440105, '용강동', 11440);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11440106, '토정동', 11440);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11440107, '마포동', 11440);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11440108, '대흥동', 11440);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11440109, '염리동', 11440);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11440110, '노고산동', 11440);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11440111, '신수동', 11440);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11440112, '현석동', 11440);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11440113, '구수동', 11440);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11440114, '창전동', 11440);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11440115, '상수동', 11440);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11440116, '하중동', 11440);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11440117, '신정동', 11440);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11440118, '당인동', 11440);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11440120, '서교동', 11440);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11440121, '동교동', 11440);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11440122, '합정동', 11440);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11440123, '망원동', 11440);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11440124, '연남동', 11440);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11440125, '성산동', 11440);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11440126, '중동', 11440);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11440127, '상암동', 11440);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11470101, '신정동', 11470);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11470102, '목동', 11470);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11470103, '신월동', 11470);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11500101, '염창동', 11500);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11500102, '등촌동', 11500);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11500103, '화곡동', 11500);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11500104, '가양동', 11500);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11500105, '마곡동', 11500);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11500106, '내발산동', 11500);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11500107, '외발산동', 11500);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11500108, '공항동', 11500);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11500109, '방화동', 11500);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11500110, '개화동', 11500);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11500111, '과해동', 11500);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11500112, '오곡동', 11500);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11500113, '오쇠동', 11500);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11530101, '신도림동', 11530);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11530102, '구로동', 11530);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11530103, '가리봉동', 11530);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11530106, '고척동', 11530);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11530107, '개봉동', 11530);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11530108, '오류동', 11530);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11530109, '궁동', 11530);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11530110, '온수동', 11530);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11530111, '천왕동', 11530);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11530112, '항동', 11530);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11545101, '가산동', 11545);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11545102, '독산동', 11545);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11545103, '시흥동', 11545);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11560101, '영등포동', 11560);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11560102, '영등포동1가', 11560);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11560103, '영등포동2가', 11560);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11560104, '영등포동3가', 11560);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11560105, '영등포동4가', 11560);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11560106, '영등포동5가', 11560);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11560107, '영등포동6가', 11560);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11560108, '영등포동7가', 11560);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11560109, '영등포동8가', 11560);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11560110, '여의도동', 11560);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11560111, '당산동1가', 11560);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11560112, '당산동2가', 11560);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11560113, '당산동3가', 11560);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11560114, '당산동4가', 11560);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11560115, '당산동5가', 11560);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11560116, '당산동6가', 11560);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11560117, '당산동', 11560);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11560118, '도림동', 11560);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11560119, '문래동1가', 11560);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11560120, '문래동2가', 11560);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11560121, '문래동3가', 11560);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11560122, '문래동4가', 11560);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11560123, '문래동5가', 11560);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11560124, '문래동6가', 11560);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11560125, '양평동1가', 11560);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11560126, '양평동2가', 11560);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11560127, '양평동3가', 11560);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11560128, '양평동4가', 11560);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11560129, '양평동5가', 11560);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11560130, '양평동6가', 11560);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11560131, '양화동', 11560);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11560132, '신길동', 11560);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11560133, '대림동', 11560);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11560134, '양평동', 11560);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11590101, '노량진동', 11590);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11590102, '상도동', 11590);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11590103, '상도1동', 11590);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11590104, '본동', 11590);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11590105, '흑석동', 11590);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11590106, '동작동', 11590);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11590107, '사당동', 11590);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11590108, '대방동', 11590);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11590109, '신대방동', 11590);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11620101, '봉천동', 11620);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11620102, '신림동', 11620);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11620103, '남현동', 11620);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11650101, '방배동', 11650);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11650102, '양재동', 11650);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11650103, '우면동', 11650);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11650104, '원지동', 11650);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11650106, '잠원동', 11650);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11650107, '반포동', 11650);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11650108, '서초동', 11650);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11650109, '내곡동', 11650);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11650110, '염곡동', 11650);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11650111, '신원동', 11650);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11680101, '역삼동', 11680);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11680103, '개포동', 11680);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11680104, '청담동', 11680);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11680105, '삼성동', 11680);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11680106, '대치동', 11680);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11680107, '신사동', 11680);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11680108, '논현동', 11680);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11680110, '압구정동', 11680);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11680111, '세곡동', 11680);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11680112, '자곡동', 11680);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11680113, '율현동', 11680);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11680114, '일원동', 11680);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11680115, '수서동', 11680);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11680118, '도곡동', 11680);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11710101, '잠실동', 11710);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11710102, '신천동', 11710);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11710103, '풍납동', 11710);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11710104, '송파동', 11710);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11710105, '석촌동', 11710);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11710106, '삼전동', 11710);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11710107, '가락동', 11710);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11710108, '문정동', 11710);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11710109, '장지동', 11710);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11710111, '방이동', 11710);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11710112, '오금동', 11710);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11710113, '거여동', 11710);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11710114, '마천동', 11710);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11740101, '명일동', 11740);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11740102, '고덕동', 11740);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11740103, '상일동', 11740);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11740105, '길동', 11740);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11740106, '둔촌동', 11740);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11740107, '암사동', 11740);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11740108, '성내동', 11740);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11740109, '천호동', 11740);
INSERT INTO DONG (NO, DONG_NAME, DISTRICT_NO) VALUES (11740110, '강일동', 11740);


--------------------------------------- 병원 ---------------------------------------------

INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (1, '삼대국민한의원', '한의원', '서울특별시', '강남구', '대치동', 
        '06179', '서울특별시 강남구 테헤란로88길 10, 신안메트로칸 201호,204호,B05호(지하1층) (대치동)', '02-1588-7688', 127.0594706, 37.5068487, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (2, '서은경립샘한의원', '한의원', '서울특별시', '강남구', '논현동', 
        '06114', '서울특별시 강남구 강남대로 526, 2층 (논현동)', '02-1800-7544', 127.0227162, 37.5091603, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (3, '사암당한의원', '한의원', '서울특별시', '강남구', '도곡동', 
        '06274', '서울특별시 강남구 남부순환로377길 7, 지1층,1층,2층 (도곡동, 비젠빌딩)', '02-2038-8304', 127.0449143, 37.4869192, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (4, '본디올강남한의원', '한의원', '서울특별시', '강남구', '대치동', 
        '06279', '서울특별시 강남구 도곡로 428, 웰리스빌딩 3층 (대치동)', '02-2051-7200', 127.0573511, 37.4974734, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (5, '평화한의원', '한의원', '서울특별시', '강남구', '역삼동', 
        '06218', '서울특별시 강남구 선릉로69길 19, 2층 (역삼동, 역삼래미안아파트)', '02-2051-7579', 127.0504018, 37.4977927, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (6, '지세븐한의원', '한의원', '서울특별시', '강남구', '역삼동', 
        '06132', '서울특별시 강남구 테헤란로 141, 5층 (역삼동)', '02-2051-9077', 127.0346851, 37.5005479, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (7, '오대경희한의원', '한의원', '서울특별시', '강남구', '청담동', 
        '06068', '서울특별시 강남구 학동로 441, 2층 (청담동)', '02-2052-4500', 127.0490949, 37.5188881, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (8, '코편한한의원', '한의원', '서울특별시', '강남구', '대치동', 
        '06280', '서울특별시 강남구 남부순환로 2921, (대치동)', '02-2052-5775', 127.0597896, 37.4935016, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (9, '동인한의원', '한의원', '서울특별시', '강남구', '도곡동', 
        '06295', '서울특별시 강남구 언주로30길 10, 현대비전21 304호 (도곡동)', '02-2057-0075', 127.0515495, 37.4873416, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (10, '압구정경희한의원', '한의원', '서울특별시', '강남구', '신사동', 
        '06018', '서울특별시 강남구 압구정로 334, 2층 205,206,210호 (신사동)', '02-2135-7757', 127.0380787, 37.5281863, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (11, '청인한의원', '한의원', '서울특별시', '강남구', '수서동', 
        '06367', '서울특별시 강남구 광평로56길 8-13, 201호 (수서동, 수서타워)', '02-2149-0030', 127.1031943, 37.4867657, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (12, '동국해랑한의원', '한의원', '서울특별시', '강남구', '역삼동', 
        '06211', '서울특별시 강남구 테헤란로 322, 한신인터밸리24 205호 (역삼동)', '02-2183-2940', 127.046588, 37.5032509, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (13, '가치한의원', '한의원', '서울특별시', '강남구', '청담동', 
        '06010', '서울특별시 강남구 도산대로81길 50, 4층 (청담동)', '02-2203-5003', 127.046043, 37.5273742, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (14, '대청마루한의원', '한의원', '서울특별시', '강남구', '일원동', 
        '06343', '서울특별시 강남구 일원로 35, 남경빌딩 2층일부 (일원동)', '02-2226-3455', 127.0811988, 37.4906472, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (15, '경희장수한의원', '한의원', '서울특별시', '강남구', '일원동', 
        '06342', '서울특별시 강남구 양재대로55길 13, 조이빌딩 E동 3층 302호 (일원동)', '02-2226-6230', 127.0876136, 37.491702, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (16, '석전한의원', '한의원', '서울특별시', '강남구', '신사동', 
        '06025', '서울특별시 강남구 논현로164길 6, (신사동)', '02-2231-8912', 127.0288727, 37.523602, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (17, '아름경희한의원', '한의원', '서울특별시', '강남구', '논현동', 
        '06110', '서울특별시 강남구 학동로6길 8, 1층 (논현동)', '02-2294-0000', 127.0236211, 37.5111948, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (18, '위드유한의원', '한의원', '서울특별시', '강남구', '도곡동', 
        '06267', '서울특별시 강남구 남부순환로 2609, 하늘빌딩, 6층 일부 (도곡동)', '02-2607-2653', 127.0351301, 37.4849802, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (19, '대치경희한의원', '한의원', '서울특별시', '강남구', '대치동', 
        '06208', '서울특별시 강남구 도곡로 419, 쇼핑넷빌딩 4층 (대치동)', '02-2615-0482', 127.0563325, 37.4976776, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (20, '시작한의원', '한의원', '서울특별시', '강남구', '대치동', 
        '06199', '서울특별시 강남구 선릉로 340, 대치 EM 프라자 4층 (대치동)', '02-2646-1010', 127.0514679, 37.5002261, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (21, '자생한방병원', '한방병원', '서울특별시', '강남구', '논현동', 
        '06110', '서울특별시 강남구 강남대로 536, 자생한방병원 (논현동)', '02-1577-0007', 127.0223462, 37.5100103, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (22, '무이재한방병원', '한방병원', '서울특별시', '강남구', '논현동', 
        '06044', '서울특별시 강남구 학동로 117, B1~9F층 (논현동)', '02-1899-1209', 127.0236908, 37.5120796, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (23, '이솝한방병원', '한방병원', '서울특별시', '강남구', '삼성동', 
        '06173', '서울특별시 강남구 영동대로96길 34, 대윤빌딩 1층 (삼성동)', '02-3444-3588', 127.0653227, 37.5111696, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (24, '우모한방병원', '한방병원', '서울특별시', '강남구', '역삼동', 
        '06226', '서울특별시 강남구 언주로 327, 아폴로빌딩 지하1층~지상7층 (역삼동)', '02-3452-8889', 127.0449869, 37.4970908, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (25, '힘찬큐한방병원', '한방병원', '서울특별시', '강남구', '논현동', 
        '06109', '서울특별시 강남구 봉은사로 213, 센트럴타워 5~7층 (논현동)', '02-518-8599', 127.0353978, 37.5080467, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (26, '소우주한방병원', '한방병원', '서울특별시', '강남구', '개포동', 
        '06307', '서울특별시 강남구 논현로16길 15, (개포동)', '02-523-1075', 127.0474849, 37.4766391, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (27, '리봄한방병원', '한방병원', '서울특별시', '강남구', '논현동', 
        '06099', '서울특별시 강남구 학동로50길 7, 2~4,5(일부)층 (논현동)', '02-546-1357', 127.0400911, 37.5162495, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (28, '강남위담한방병원', '한방병원', '서울특별시', '강남구', '대치동', 
        '06185', '서울특별시 강남구 삼성로 402, 지하2층일부, 2~7층 (대치동)', '02-6204-1800', 127.0588557, 37.5033724, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (29, '치휴한방병원', '한방병원', '서울특별시', '강남구', '도곡동', 
        '06272', '서울특별시 강남구 도곡로 216, 치휴한방병원 (도곡동)', '02-6242-1010', 127.0427348, 37.4926623, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (30, '구름의자한의원', '한방내과', '서울특별시', '강남구', '신사동', 
        '06031', '서울특별시 강남구 논현로 841, (신사동, 제이비 미소빌딩, 206호 일부)', '02-1544-6378', 127.027762, 37.5240297, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (31, '더제이의원', '피부과', '서울특별시', '강남구', '논현동', 
        '06060', '서울특별시 강남구 학동로 337, H타워 7층 (논현동)', '02-1577-7051', 127.0399436, 37.5170765, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (32, '클리니크후즈후의원', '피부과', '서울특별시', '강남구', '청담동', 
        '06014', '서울특별시 강남구 선릉로 842, 3~6층 (청담동)', '02-1588-7536', 127.0406885, 37.5269542, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (33, '모빈치의원', '피부과', '서울특별시', '강남구', '신사동', 
        '06030', '서울특별시 강남구 압구정로 152, B동 303호 (신사동, 극동스포츠빌딩)', '02-1600-6220', 127.0260696, 37.5255661, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (34, '박성주조에피부과의원', '피부과', '서울특별시', '강남구', '도곡동', 
        '06296', '서울특별시 강남구 남부순환로 2732, 3층 (도곡동)', '02-2058-0730', 127.0448818, 37.4858025, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (35, '아름다운나라피부과의원', '피부과', '서울특별시', '강남구', '역삼동', 
        '06232', '서울특별시 강남구 강남대로 390, (역삼동, 1201호 일부)', '02-3420-2201', 127.028709, 37.497901, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (36, '디앤에이피부과의원', '피부과', '서울특별시', '강남구', '신사동', 
        '06023', '서울특별시 강남구 언주로 871, 호산병원 A동 5층 (신사동)', '02-3444-1003', 127.0333541, 37.5285704, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (37, '라이브치과병원', '치과', '서울특별시', '강남구', '역삼동', 
        '06125', '서울특별시 강남구 논현로105길 48, 1,2층 (역삼동)', '02-508-2279', 127.0302848, 37.5055877, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (38, '에스플란트치과병원', '치과', '서울특별시', '강남구', '청담동', 
        '06062', '서울특별시 강남구 도산대로 410, 3~8층 (청담동)', '02-512-0700', 127.0405031, 37.5229702, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (39, '수치과병원', '치과', '서울특별시', '강남구', '신사동', 
        '06018', '서울특별시 강남구 선릉로 823, 3층 (신사동)', '02-512-7528', 127.0393899, 37.5256156, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (40, '아림치과병원', '치과', '서울특별시', '강남구', '삼성동', 
        '06169', '서울특별시 강남구 테헤란로87길 13, (삼성동, 서영빌딩 14층,15층일부)', '02-515-5975', 127.0586131, 37.5086361, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (41, '건강한세상앞선치과병원', '치과', '서울특별시', '강남구', '삼성동', 
        '06164', '서울특별시 강남구 테헤란로87길 36, 도심공항타워 3층 (삼성동)', '02-555-7528', 127.0586267, 37.5104935, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (42, '서울페이스21치과병원', '치과', '서울특별시', '강남구', '역삼동', 
        '06232', '서울특별시 강남구 강남대로 390, 미진프라자 21층 (역삼동)', '02-556-2021', 127.028709, 37.497901, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (43, '가우디치과의원', '치과', '서울특별시', '강남구', '대치동', 
        '06181', '서울특별시 강남구 테헤란로 520, 삼안빌딩 4층 (대치동)', '02-1566-7426', 127.0610749, 37.5078362, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (44, '미켈란치과의원', '치과', '서울특별시', '강남구', '역삼동', 
        '06232', '서울특별시 강남구 강남대로 382, 메리츠타워 B1층 (역삼동)', '02-1566-7450', 127.0287132, 37.4971261, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (45, '강남미라인치과의원', '치과', '서울특별시', '강남구', '논현동', 
        '06114', '서울특별시 강남구 학동로6길 48, 3층 (논현동)', '02-1577-2804', 127.0261708, 37.5092335, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (46, '에이티에이치과의원', '치과', '서울특별시', '강남구', '역삼동', 
        '06134', '서울특별시 강남구 강남대로 406, GLASS TOWER 10층 (역삼동)', '02-1577-2897', 127.0276559, 37.4990209, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (47, '제아치과의원', '치과', '서울특별시', '강남구', '역삼동', 
        '06129', '서울특별시 강남구 강남대로 416, (역삼동, 창림빌딩, 4층)', '02-1644-1974', 127.0271777, 37.4998129, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (48, '똑똑플란트치과의원', '치과', '서울특별시', '강남구', '역삼동', 
        '06129', '서울특별시 강남구 강남대로 432, 점프밀라노 7층 (역삼동)', '02-1644-2899', 127.0266249, 37.501235, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (49, '김성훈치과의원', '치과', '서울특별시', '강남구', '대치동', 
        '06193', '서울특별시 강남구 선릉로86길 31, 201호 (대치동)', '02-2038-2805', 127.0520244, 37.5042024, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (50, '에버스마일치과교정과치과의원', '치과', '서울특별시', '강남구', '역삼동', 
        '06129', '서울특별시 강남구 강남대로 430, 에이비씨마트빌딩 5층 (역삼동)', '02-2051-2275', 127.0266359, 37.5009443, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (51, '웃는내일치과교정과치과의원', '치과', '서울특별시', '강남구', '대치동', 
        '06280', '서울특별시 강남구 남부순환로 2909, 여천빌딩 3층 (대치동)', '02-2051-2828', 127.0574186, 37.492191, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (52, '청아치과의원', '치과', '서울특별시', '강남구', '역삼동', 
        '06132', '서울특별시 강남구 논현로 503, 송촌빌딩 6층일부 (역삼동)', '02-2051-2885', 127.0363876, 37.50127, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (53, '스타28치과의원', '치과', '서울특별시', '강남구', '역삼동', 
        '06130', '서울특별시 강남구 강남대로94길 27-11, 삼정빌딩 2층 (역삼동)', '02-2052-2814', 127.0292725, 37.5004446, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (54, '리솜치과의원', '치과', '서울특별시', '강남구', '개포동', 
        '06305', '서울특별시 강남구 개포로 265, 개포동 메디시스빌딩 403호 (개포동)', '02-2058-2828', 127.0530095, 37.4809185, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (55, '정우선치과교정과치과의원', '치과', '서울특별시', '강남구', '대치동', 
        '06280', '서울특별시 강남구 남부순환로 2927, 대치 클래시아 3층 303호 (대치동)', '02-2088-0007', 127.0603918, 37.4936881, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (56, '스타치과의원', '치과', '서울특별시', '강남구', '역삼동', 
        '06237', '서울특별시 강남구 논현로79길 22, 1층 (역삼동)', '02-2112-2875', 127.0364378, 37.4976224, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (57, '그대를위한치과의원', '치과', '서울특별시', '강남구', '역삼동', 
        '06150', '서울특별시 강남구 테헤란로 339, 9층 (역삼동)', '02-2183-2879', 127.0486102, 37.5048189, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (58, '더플러스차치과의원', '치과', '서울특별시', '강남구', '삼성동', 
        '06169', '서울특별시 강남구 테헤란로 509, 엔씨타워  I 지하1층 (삼성동)', '02-2191-3992', 127.0582386, 37.5077819, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (59, '일원굿모닝치과의원', '치과', '서울특별시', '강남구', '일원동', 
        '06356', '서울특별시 강남구 일원로14길 25, 301호 (일원동, 푸른마을아파트)', '02-2226-0271', 127.0813262, 37.4846837, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (60, '일원사랑치과의원', '치과', '서울특별시', '강남구', '일원동', 
        '06361', '서울특별시 강남구 일원로 127, 상가동2층 201호 (일원동, 가람아파트)', '02-2226-2835', 127.0852629, 37.4825117, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (61, '강남에이플러스치과의원', '치과', '서울특별시', '강남구', '신사동', 
        '06017', '서울특별시 강남구 언주로 860, 서우프라퍼티 5층 502호 (신사동)', '02-3442-7577', 127.0339124, 37.5272482, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (62, '에이플러스치과의원', '치과', '서울특별시', '강남구', '신사동', 
        '06017', '서울특별시 강남구 언주로 860, 서우프라퍼티 4층 401호 (신사동)', '02-3442-7676', 127.0339124, 37.5272482, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (63, '청담성모치과의원', '치과', '서울특별시', '강남구', '청담동', 
        '06063', '서울특별시 강남구 삼성로 767, 4층 (청담동)', '02-3443-0042', 127.0476326, 37.523115, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (64, '시카고초콜렛치과의원', '치과', '서울특별시', '강남구', '논현동', 
        '06060', '서울특별시 강남구 선릉로 703, 3층 (논현동, H_S빌딩)', '02-3443-2879', 127.040766, 37.5176921, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (65, '서울라라치과의원', '치과', '서울특별시', '강남구', '논현동', 
        '06114', '서울특별시 강남구 강남대로 506, 광명빌딩 402호 (논현동)', '02-3443-3342', 127.0235171, 37.5074896, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (66, '압구정오라클치과의원', '치과', '서울특별시', '강남구', '신사동', 
        '06022', '서울특별시 강남구 압구정로30길 23, 101호 (신사동)', '02-3443-7977', 127.0295122, 37.5259003, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (67, '필립치과의원', '치과', '서울특별시', '강남구', '신사동', 
        '06022', '서울특별시 강남구 압구정로32길 11, 캐럴라인타워 2층 5호 (신사동)', '02-3443-8277', 127.0302653, 37.526953, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (68, '연세바로치과의원', '치과', '서울특별시', '강남구', '신사동', 
        '06030', '서울특별시 강남구 논현로 873, 연세바로치과 (신사동)', '02-3443-8585', 127.0282547, 37.5266058, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (69, '한치과의원', '치과', '서울특별시', '강남구', '삼성동', 
        '06084', '서울특별시 강남구 삼성로 642, 삼성빌딩 201호 (삼성동)', '02-3444-2273', 127.0513431, 37.5174072, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (70, '이와이치과의원', '치과', '서울특별시', '강남구', '신사동', 
        '06030', '서울특별시 강남구 논현로175길 6, (신사동, 로얄빌딩 4층일부)', '02-3444-2527', 127.0279356, 37.526372, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (71, '구정치과의원', '치과', '서울특별시', '강남구', '신사동', 
        '06025', '서울특별시 강남구 논현로 842, 압구정빌딩 3층 (신사동)', '02-3444-2828', 127.0287459, 37.5240509, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (72, '바른웅치과의원', '치과', '서울특별시', '강남구', '신사동', 
        '06028', '서울특별시 강남구 논현로175길 101, 2층 (신사동, 송우빌딩)', '02-3444-2871', 127.0211779, 37.5227, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (73, '와이케이콜럼비아치과의원', '치과', '서울특별시', '강남구', '신사동', 
        '06030', '서울특별시 강남구 압구정로 156, 401,402,403호 (신사동, 카로시티2빌딩)', '02-3444-2872', 127.0267906, 37.5259818, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (74, '서울샤인치과의원', '치과', '서울특별시', '강남구', '청담동', 
        '06068', '서울특별시 강남구 학동로 433, 씨엔씨빌딩 2층 (청담동)', '02-3445-2275', 127.0483242, 37.5187786, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (75, '노박치과의원', '치과', '서울특별시', '강남구', '역삼동', 
        '06132', '서울특별시 강남구 논현로 507, 성지하이츠3차빌딩 309호 (역삼동)', '02-3445-2288', 127.0361824, 37.5015847, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (76, '비너스치과의원', '치과', '서울특별시', '강남구', '신사동', 
        '06031', '서울특별시 강남구 논현로 841, B105호 (신사동, JB미소빌딩)', '02-3445-9716', 127.027762, 37.5240297, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (77, '다른치과의원', '치과', '서울특별시', '강남구', '신사동', 
        '06027', '서울특별시 강남구 강남대로 652, SINSA SQUARE 1층 104-2호 (신사동)', '02-3446-2080', 127.0190762, 37.5196035, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (78, '홍순호치과의원', '치과', '서울특별시', '강남구', '논현동', 
        '06038', '서울특별시 강남구 강남대로 606, (논현동, 삼주빌딩 7층)', '02-3446-2828', 127.0201694, 37.5158757, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (79, '더힐가정의학과의원', '가정의학과', '서울특별시', '강남구', '일원동', 
        '06346', '서울특별시 강남구 영동대로 22, S401-0413,0414,0415호 (일원동, 디에이치 자이 개포)', '02-6953-9549', 127.074164, 37.4910941, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (80, '청담라인치과의원', '치과', '서울특별시', '강남구', '청담동', 
        '06068', '서울특별시 강남구 학동로 433, (청담동, 청담서울클리닉 7층)', '02-3446-4646', 127.0483242, 37.5187786, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (81, '황정현치과의원', '치과', '서울특별시', '강남구', '삼성동', 
        '06084', '서울특별시 강남구 삼성로126길 6, 2층 (삼성동, 보고재빌딩)', '02-3446-5975', 127.051663, 37.5175193, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (82, '청담미소밝은치과의원', '치과', '서울특별시', '강남구', '삼성동', 
        '06160', '서울특별시 강남구 테헤란로 419, 삼성금융프라자 3층 (삼성동)', '02-3446-6114', 127.052201, 37.5058758, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (83, '서울매스티지치과의원', '치과', '서울특별시', '강남구', '논현동', 
        '06120', '서울특별시 강남구 봉은사로 105, 1층, 6층 (논현동, 동양빌딩)', '02-3446-8275', 127.0250571, 37.5049634, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (84, '라미치과의원', '치과', '서울특별시', '강남구', '신사동', 
        '06018', '서울특별시 강남구 압구정로 334, 3층 304호 (신사동)', '02-3447-2828', 127.0380787, 37.5281863, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (85, '서울메이치과의원', '치과', '서울특별시', '강남구', '논현동', 
        '06038', '서울특별시 강남구 도산대로 110, 4층 402호 (논현동, 케이비엘 센터)', '02-3447-6004', 127.0210472, 37.5162749, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (86, '드림치과의원', '치과', '서울특별시', '강남구', '신사동', 
        '06031', '서울특별시 강남구 논현로 841, 제이비 미소빌딩 2층 211호 (신사동)', '02-3448-0028', 127.027762, 37.5240297, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (87, '위즈치과의원', '치과', '서울특별시', '강남구', '논현동', 
        '06110', '서울특별시 강남구 강남대로 546, 3층 (논현동, 삼양빌딩)', '02-3448-5588', 127.0219178, 37.5108613, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (88, '바디프랜드부속치과의원', '치과', '서울특별시', '강남구', '도곡동', 
        '06302', '서울특별시 강남구 양재천로 163, 바디프랜드 도곡타워 5층 (도곡동)', '02-3448-8980', 127.0440534, 37.4813361, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (89, '그레이스치과의원', '치과', '서울특별시', '강남구', '삼성동', 
        '06167', '서울특별시 강남구 테헤란로87길 25, 3층 (삼성동)', '02-3452-2080', 127.0582415, 37.5094541, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (90, 'SKY(스카이)치과의원', '치과', '서울특별시', '강남구', '역삼동', 
        '06236', '서울특별시 강남구 테헤란로26길 10, 성보빌딩 3층 (역삼동)', '02-3452-2828', 127.0358567, 37.4996461, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (91, '매직키스치과의원', '치과', '서울특별시', '강남구', '신사동', 
        '06030', '서울특별시 강남구 압구정로 162, 지하1층 105호 (신사동, 베네하임시티)', '02-3452-8275', 127.0274689, 37.5263327, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (92, '고우넷치과교정과치과의원', '치과', '서울특별시', '강남구', '역삼동', 
        '06123', '서울특별시 강남구 강남대로 468, 4층 (역삼동)', '02-3453-2233', 127.0251636, 37.5041598, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (93, '쎌치과의원', '치과', '서울특별시', '강남구', '역삼동', 
        '06249', '서울특별시 강남구 논현로71길 34, 쎌치과 1.2층 202호 (역삼동)', '02-3453-2833', 127.0366661, 37.4944447, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (94, '메르덴치과의원', '치과', '서울특별시', '강남구', '대치동', 
        '06185', '서울특별시 강남구 삼성로 432, 2층 (대치동, 이글빌딩)', '02-3453-2875', 127.0577357, 37.5054311, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (95, '고려치과의원', '치과', '서울특별시', '강남구', '대치동', 
        '06280', '서울특별시 강남구 남부순환로 2927, 대치 클래시아 3층 312호 (대치동)', '02-3453-8111', 127.0603918, 37.4936881, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (96, '제일정형외과병원', '정형외과', '서울특별시', '강남구', '청담동', 
        '06075', '서울특별시 강남구 영동대로 726, 경일빌딩1~12층, 14층, 지하1~2층, 지하4~5층 (청담동)', '02-501-6868', 127.0561257, 37.5228163, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (97, '바른마디의원', '정형외과', '서울특별시', '강남구', '대치동', 
        '06180', '서울특별시 강남구 테헤란로 514, 3층 (대치동, 삼흥빌딩)', '02-1588-5516', 127.0597679, 37.5074386, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (98, '시너지정형외과의원', '정형외과', '서울특별시', '강남구', '논현동', 
        '06098', '서울특별시 강남구 학동로 308, 시너지정형외과빌딩 B1,2~5층 (논현동)', '02-2015-1300', 127.0364282, 37.5154506, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (99, '청담성모정형외과의원', '정형외과', '서울특별시', '강남구', '삼성동', 
        '06085', '서울특별시 강남구 삼성로 620, 블래스톤리조트 4층 (삼성동)', '02-2088-0330', 127.0526451, 37.5149738, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (100, '화이팅정형외과의원', '정형외과', '서울특별시', '강남구', '역삼동', 
        '06236', '서울특별시 강남구 테헤란로 146, 현익빌딩 5,6층 (역삼동)', '02-2088-2075', 127.0355043, 37.5000225, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (101, '수서바른정형외과의원', '정형외과', '서울특별시', '강남구', '수서동', 
        '06367', '서울특별시 강남구 광평로 280, 로즈데일오피스텔 2층 206호 (수서동)', '02-3412-3710', 127.103108, 37.4873192, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (102, '남서울정형외과의원', '정형외과', '서울특별시', '강남구', '일원동', 
        '06343', '서울특별시 강남구 일원로 33, 금성빌딩 2층 (일원동)', '02-445-8275', 127.0810631, 37.4909192, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (103, '수서삼성정신건강의학과의원', '정신겅강의학과', '서울특별시', '강남구', '수서동', 
        '06349', '서울특별시 강남구 밤고개로1길 10, 201호 (수서동, 수서현대벤쳐빌)', '02-2226-7100', 127.1018445, 37.4880245, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (104, '조은희정신건강의학과의원', '정신건강의학과', '서울특별시', '강남구', '역삼동', 
        '06149', '서울특별시 강남구 선릉로103길 5, 201호 (역삼동)', '02-2009-2567', 127.0454175, 37.5074686, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (105, '성모힐정신건강의학과의원', '정신건강의학과', '서울특별시', '강남구', '역삼동', 
        '06252', '서울특별시 강남구 강남대로 328, 강남역 쉐르빌 2층 208,209호 (역삼동)', '02-2138-5568', 127.0309385, 37.4924281, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (106, '서울정신건강의학과의원', '정신건강의학과', '서울특별시', '강남구', '역삼동', 
        '06149', '서울특별시 강남구 선릉로 517, 비젼빌딩 602호 (역삼동)', '02-3453-8856', 127.0481651, 37.5057184, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (107, '나눔정신건강의학과의원', '정신건강의학과', '서울특별시', '강남구', '개포동', 
        '06329', '서울특별시 강남구 삼성로 38, 개포빌딩 4층 403호 (개포동)', '02-445-5575', 127.0668591, 37.4886965, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (108, '삼성마음친구정신건강의학과의원', '정신건강의학과', '서울특별시', '강남구', '수서동', 
        '06349', '서울특별시 강남구 광평로51길 8, 로얄프라자 203호 (수서동)', '02-445-8755', 127.1024711, 37.4883738, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (109, '연세소담정신건강의학과의원', '정신건강의학과', '서울특별시', '강남구', '개포동', 
        '06329', '서울특별시 강남구 개포로 504, 메트하임 502, 504호 (개포동)', '02-451-8275', 127.0671869, 37.4890546, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (110, '성모정신건강의학과의원', '정신건강의학과', '서울특별시', '강남구', '삼성동', 
        '06169', '서울특별시 강남구 테헤란로87길 13, 6층 (삼성동)', '02-558-6100', 127.0586131, 37.5086361, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (111, '이유정신건강의학과의원', '정신건강의학과', '서울특별시', '강남구', '역삼동', 
        '06212', '서울특별시 강남구 선릉로 431, 에스케이허브오피스텔 406,407호 (역삼동)', '02-6954-7550', 127.0491411, 37.5034574, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (112, '삼성공감정신건강의학과의원', '정신건강의학과', '서울특별시', '강남구', '역삼동', 
        '06212', '서울특별시 강남구 테헤란로 328, 동우빌딩 4층 (역삼동)', '02-6956-1771', 127.0476984, 37.5037151, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (113, '이도희정신과의원', '정신건강의학과', '서울특별시', '강남구', '논현동', 
        '06114', '서울특별시 강남구 강남대로 532, (논현동, 2층 일부)', '02-3447-7575', 127.0224836, 37.5095804, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (114, '우나영정신건강의학과의원', '전신겅강의학과', '서울특별시', '강남구', '삼성동', 
        '06169', '서울특별시 강남구 테헤란로87길 17, 마젤란 21 아스테리움205호 (삼성동)', '02-2248-4860', 127.0582844, 37.5087249, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (115, '튼튼병원', '재활의학과', '서울특별시', '강남구', '청담동', 
        '06072', '서울특별시 강남구 영동대로 713, B1~6층, 7층일부,8층 (청담동)', '02-1588-7562', 127.0557487, 37.5213191, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (116, '두발로병원', '재활의학과', '서울특별시', '강남구', '신사동', 
        '06022', '서울특별시 강남구 압구정로30길 45, 2~4층 (신사동)', '02-1833-2280', 127.0294194, 37.5243393, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (117, '강남퍼스트재활의학과의원', '재활의학과', '서울특별시', '강남구', '개포동', 
        '06329', '서울특별시 강남구 개포로 504, 메트하임 2층(201~202)호 3층 (302~304)호 (개포동)', '02-3411-5656', 127.0671869, 37.4890546, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (118, '강남아산재활의학과의원', '재활의학과', '서울특별시', '강남구', '일원동', 
        '06337', '서울특별시 강남구 개포로110길 43, 2층 (일원동, 개포한신아파트)', '02-3411-7578', 127.0791988, 37.491309, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (119, '연세재활의학과의원', '재활의학과', '서울특별시', '강남구', '일원동', 
        '06355', '서울특별시 강남구 일원로 115, 삼성생명 일원역 빌딩 B동 303호 (일원동)', '02-3411-8275', 127.0844597, 37.4840224, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (120, '한맘플러스재활의학과의원', '재활의학과', '서울특별시', '강남구', '대치동', 
        '06184', '서울특별시 강남구 역삼로 527, 그린메디칼사옥 1~4(3층은일부)층 (대치동)', '02-3452-9912', 127.0606758, 37.5039718, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (121, '아이엠재활의학과의원', '재활의학과', '서울특별시', '강남구', '대치동', 
        '06291', '서울특별시 강남구 남부순환로 2936, 윈플러스상가 501,502호 (대치동)', '02-501-1562', 127.0618767, 37.493385, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (122, '유재욱재활의학과의원', '재활의학과', '서울특별시', '강남구', '도곡동', 
        '06266', '서울특별시 강남구 강남대로 248, 목원빌딩, 6층일부 (도곡동)', '02-514-4375', 127.0339328, 37.4857219, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (123, '에이준재활의학과의원', '재활의학과', '서울특별시', '강남구', '신사동', 
        '06022', '서울특별시 강남구 압구정로30길 16, 아크힐즈16 지층,2층,7층 (신사동)', '02-545-1979', 127.0290645, 37.5264419, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (124, '삼성굿본재활의학과의원', '재활의학과', '서울특별시', '강남구', '삼성동', 
        '06083', '서울특별시 강남구 영동대로 602, 2층 201호 (삼성동, 삼성동 미켈란 107)', '02-549-0427', 127.0606013, 37.5146991, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (125, '강남재활의학과의원', '재활의학과', '서울특별시', '강남구', '역삼동', 
        '06132', '서울특별시 강남구 논현로 509, (역삼동, 송암II빌딩 3층일부)', '02-555-5433', 127.036116, 37.5019299, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (126, '하와유재활의학과의원', '재활의학과', '서울특별시', '강남구', '역삼동', 
        '06134', '서울특별시 강남구 테헤란로 109, 강남제일빌딩 2,5층 (역삼동)', '02-558-7588', 127.0290056, 37.4988358, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (127, '서울강남재활의학과의원', '재활의학과', '서울특별시', '강남구', '도곡동', 
        '06275', '서울특별시 강남구 선릉로 227, 102호 (도곡동)', '02-573-7573', 127.0527545, 37.495847, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (128, '더탑재활의학과의원', '재활의학과', '서울특별시', '강남구', '개포동', 
        '06303', '서울특별시 강남구 논현로 98, 문화빌딩 3층 (개포동)', '02-6952-3355', 127.0448081, 37.4786142, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (129, '나누리병원', '이비인후과', '서울특별시', '강남구', '논현동', 
        '06048', '서울특별시 강남구 언주로 731, 나누리병원 (논현동)', '02-6003-9718', 127.034005, 37.5203058, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (130, '하나이비인후과병원', '이비인후과', '서울특별시', '강남구', '역삼동', 
        '06225', '서울특별시 강남구 역삼로 245, 지하2층일부 1층일부 2~7층 (역삼동)', '02-6925-1111', 127.0429904, 37.4979277, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (131, '땡큐서울의원', '이비인후과', '서울특별시', '강남구', '대치동', 
        '06192', '서울특별시 강남구 테헤란로 408, 대치빌딩 2~4층 (대치동)', '02-1522-8775', 127.0504171, 37.5044651, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (132, '뮤즈의원', '이비인후과', '서울특별시', '강남구', '역삼동', 
        '06123', '서울특별시 강남구 강남대로 452, 대연빌딩 2~5층 (역삼동)', '02-1544-2994', 127.0257154, 37.5028579, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (133, '서정민이비인후과의원', '이비인후과', '서울특별시', '강남구', '수서동', 
        '06349', '서울특별시 강남구 밤고개로1길 10, 수서현대벤쳐빌 205,206호 (수서동)', '02-2040-7585', 127.1018445, 37.4880245, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (134, '맑은숲이비인후과의원', '이비인후과', '서울특별시', '강남구', '대치동', 
        '06279', '서울특별시 강남구 삼성로 233, 신사빌딩 2층 (대치동)', '02-2135-3890', 127.0609247, 37.4980642, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (135, '박종진이비인후과의원', '이비인후과', '서울특별시', '강남구', '일원동', 
        '06343', '서울특별시 강남구 일원로 33, 금성빌딩 (일원동)', '02-2226-5973', 127.0810631, 37.4909192, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (136, '김호중이비인후과의원', '이비인후과', '서울특별시', '강남구', '개포동', 
        '06329', '서울특별시 강남구 삼성로 38, 개포빌딩 3층 302호 (개포동)', '02-3412-0107', 127.0668591, 37.4886965, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (137, '민트이비인후과의원', '이비인후과', '서울특별시', '강남구', '자곡동', 
        '06372', '서울특별시 강남구 자곡로 201, 201호,202호 (자곡동, 강남더샵라르고빌딩)', '02-3414-0075', 127.1047297, 37.4753785, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (138, '청담서울이비인후과의원', '이비인후과', '서울특별시', '강남구', '청담동', 
        '06068', '서울특별시 강남구 학동로 433, 씨엔씨빌딩 9층 (청담동)', '02-3443-9393', 127.0483242, 37.5187786, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (139, '연세봄이비인후과의원', '이비인후과', '서울특별시', '강남구', '논현동', 
        '06103', '서울특별시 강남구 봉은사로 331, SH타워 2층 (논현동)', '02-3446-6177', 127.0429841, 37.5102889, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (140, '박자룡이비인후과의원', '이비인후과', '서울특별시', '강남구', '도곡동', 
        '06267', '서울특별시 강남구 남부순환로 2615, 212~213호 (도곡동, 극동스타클래스)', '02-3463-3546', 127.0358917, 37.4851832, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (141, '연세이비인후과의원', '이비인후과', '서울특별시', '강남구', '일원동', 
        '06355', '서울특별시 강남구 일원로 115, 삼성생명 일원역 빌딩 2층 204-1호 (일원동)', '02-445-5556', 127.0844597, 37.4840224, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (142, '수서서울이비인후과의원', '이비인후과', '서울특별시', '강남구', '수서동', 
        '06349', '서울특별시 강남구 밤고개로1길 10, 수서현대벤쳐빌 2층 218호 (수서동)', '02-445-9224', 127.1018445, 37.4880245, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (143, '포레스트요양병원', '요양병원', '서울특별시', '강남구', '신사동', 
        '06026', '서울특별시 강남구 도산대로 209, 포레스트요양병원 (신사동)', '02-1899-5868', 127.0293906, 37.5205044, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (144, '큰사랑요양병원', '요양병원', '서울특별시', '강남구', '개포동', 
        '06313', '서울특별시 강남구 논현로2길 30, (개포동, 지하2층~1층, 지상1층~6층)', '02-3461-4320', 127.0527492, 37.4730167, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (145, '노블케어요양병원', '요양병원', '서울특별시', '강남구', '신사동', 
        '06017', '서울특별시 강남구 언주로 858, 1관, 2관동 (신사동)', '02-515-0007', 127.0338629, 37.5270089, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (146, '청담힐요양병원', '요양병원', '서울특별시', '강남구', '청담동', 
        '06072', '서울특별시 강남구 영동대로 713, 9~14층 (청담동)', '02-542-7582', 127.0557487, 37.5213191, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (147, '메디움강남요양병원', '요양병원', '서울특별시', '강남구', '도곡동', 
        '06265', '서울특별시 강남구 강남대로 276, (도곡동)', '02-573-5737', 127.0328796, 37.488047, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (148, '넥스트성형외과의원', '외과', '서울특별시', '강남구', '역삼동', 
        '06123', '서울특별시 강남구 봉은사로 108, 6층 (역삼동)', '02-2052-1011', 127.0256122, 37.5045463, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (149, '일원정형외과의원', '외과', '서울특별시', '강남구', '개포동', 
        '06335', '서울특별시 강남구 개포로 615, 2층 201-2호 (개포동)', '02-3411-7856', 127.0756013, 37.4926645, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (150, '더성형외과의원', '외과', '서울특별시', '강남구', '신사동', 
        '06022', '서울특별시 강남구 논현로 868, 구정빌딩 6층 (신사동)', '02-3446-0055', 127.028912, 37.5260958, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (151, '메드렉스병원', '영상의학과', '서울특별시', '강남구', '논현동', 
        '06046', '서울특별시 강남구 논현로 705, 메드렉스병원 (논현동)', '02-6011-6000', 127.0299828, 37.5148973, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (152, '강남와이케이병원', '영상의학과', '서울특별시', '강남구', '논현동', 
        '06053', '서울특별시 강남구 학동로 233, 디와이빌딩 3층일부,4~6층 (논현동)', '02-6967-8200', 127.0347193, 37.5155109, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (153, '유외과영상의학과의원', '영상의학과', '서울특별시', '강남구', '신사동', 
        '06031', '서울특별시 강남구 압구정로28길 49, 유림아트홀 6층 601호 (신사동)', '02-545-7887', 127.0277277, 37.5232635, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (154, '강남미래영상의학과의원', '영상의학과', '서울특별시', '강남구', '역삼동', 
        '06232', '서울특별시 강남구 테헤란로4길 6, 강남역 센트럴 푸르지오 시티 3층 306,310호 (역삼동)', '02-6949-3378', 127.029341, 37.4976709, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (155, '리뉴서울안과의원', '안과', '서울특별시', '강남구', '대치동', 
        '06181', '서울특별시 강남구 테헤란로 528, 슈페리어타워 4,9층 (대치동)', '02-2051-0500', 127.0620152, 37.508102, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (156, '연세브라이튼안과의원', '안과', '서울특별시', '강남구', '역삼동', 
        '06123', '서울특별시 강남구 강남대로 442, (역삼동, 4층 일부)', '02-2052-5500', 127.0260558, 37.5020628, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (157, '허원안과의원', '안과', '서울특별시', '강남구', '도곡동', 
        '06295', '서울특별시 강남구 언주로30길 10, 현대비전21 305호 (도곡동)', '02-2058-0580', 127.0515495, 37.4873416, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (158, '서울아이안과의원', '안과', '서울특별시', '강남구', '역삼동', 
        '06218', '서울특별시 강남구 선릉로 323, 2층 6층 (역삼동)', '02-2135-5646', 127.0516276, 37.4983739, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (159, '소망안과의원', '안과', '서울특별시', '강남구', '수서동', 
        '06349', '서울특별시 강남구 밤고개로1길 10, 216호 (수서동)', '02-3412-0437', 127.1018445, 37.4880245, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (160, '압구정밝은안과의원', '안과', '서울특별시', '강남구', '신사동', 
        '06025', '서울특별시 강남구 논현로 834, 윤성빌딩 5.6층 (신사동)', '02-3416-1050', 127.0285887, 37.5228353, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (161, '아이리움안과의원', '안과', '서울특별시', '강남구', '역삼동', 
        '06232', '서울특별시 강남구 강남대로 388, 강남센타빌딩 6,7층 (역삼동)', '02-3420-2020', 127.028359, 37.497502, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (162, '에스엘안과의원', '안과', '서울특별시', '강남구', '신사동', 
        '06030', '서울특별시 강남구 압구정로 164, 302호 (신사동)', '02-3444-0888', 127.0276588, 37.5265322, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (163, '양재성모안과의원', '안과', '서울특별시', '강남구', '도곡동', 
        '06267', '서울특별시 강남구 강남대로 238, 스카이쏠라빌딩 4층 (도곡동)', '02-3463-7500', 127.0347727, 37.4849717, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (164, '지에스안과의원', '안과', '서울특별시', '강남구', '역삼동', 
        '06232', '서울특별시 강남구 강남대로 390, 미진프라자 8,15,16층 (역삼동)', '02-3469-0900', 127.028709, 37.497901, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (165, '제일성모안과의원', '안과', '서울특별시', '강남구', '개포동', 
        '06335', '서울특별시 강남구 개포로 615, 301-1호 (개포동)', '02-445-4451', 127.0756013, 37.4926645, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (166, '오규성안과의원', '안과', '서울특별시', '강남구', '일원동', 
        '06343', '서울특별시 강남구 일원로 35, 남경빌딩 (일원동)', '02-445-8593', 127.0811988, 37.4906472, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (167, '서울성모신경외과의원', '신경외과', '서울특별시', '강남구', '논현동', 
        '06104', '서울특별시 강남구 학동로 206, 동화빌딩 4층 (논현동)', '02-3481-8275', 127.0315417, 37.5139077, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (168, '한가람신경외과의원', '신경외과', '서울특별시', '강남구', '역삼동', 
        '06136', '서울특별시 강남구 논현로 550, 라현빌딩 2.3.4.5층 (역삼동)', '02-508-7582', 127.0352511, 37.5052594, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (169, '오상신경외과의원', '신경외과', '서울특별시', '강남구', '신사동', 
        '06031', '서울특별시 강남구 논현로167길 9, 낙산프라자 5층 (신사동)', '02-514-8887', 127.027446, 37.5244277, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (170, '마디힐신경외과의원', '신경외과', '서울특별시', '강남구', '논현동', 
        '06059', '서울특별시 강남구 선릉로131길 8, 노벨빌딩 6층 (논현동)', '02-515-0466', 127.0402998, 37.5179871, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (171, '에이케이신경외과의원', '신경외과', '서울특별시', '강남구', '삼성동', 
        '06160', '서울특별시 강남구 테헤란로 413, 태양빌딩, 2층일부 (삼성동)', '02-555-5757', 127.0513027, 37.5055874, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (172, '심신경외과의원', '신경외과', '서울특별시', '강남구', '일원동', 
        '06342', '서울특별시 강남구 양재대로55길 15, 2층 (일원동)', '02-6925-3736', 127.0875038, 37.4918974, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (173, '청담병원', '소아청소년과', '서울특별시', '강남구', '청담동', 
        '06063', '서울특별시 강남구 삼성로147길 46, (청담동, 청담병원 지하1층, 1층일부, 2층~6층)', '02-2104-2000', 127.0456922, 37.5207651, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (174, '조엔소아청소년과의원', '소아청소년과', '서울특별시', '강남구', '개포동', 
        '06306', '서울특별시 강남구 개포로 231, 2층 (개포동, 반석빌딩)', '02-2057-7582', 127.0479597, 37.4790142, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (175, '고만성소아과의원', '소아청소년과', '서울특별시', '강남구', '개포동', 
        '06335', '서울특별시 강남구 개포로 615, 203호 (개포동)', '02-2226-2680', 127.0756013, 37.4926645, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (176, '이지소아청소년과의원', '소아청소년과', '서울특별시', '강남구', '세곡동', 
        '06365', '서울특별시 강남구 헌릉로570길 34, 리엔파크프라자 2층 201호 (세곡동)', '02-2226-5036', 127.1034684, 37.4631868, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (177, '박소아청소년과의원', '소아청소년과', '서울특별시', '강남구', '수서동', 
        '06354', '서울특별시 강남구 광평로19길 10, 205호 (수서동, 까치마을상가)', '02-226-1223', 127.0878214, 37.4849884, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (178, '윤앤최소아청소년과의원', '소아청소년과', '서울특별시', '강남구', '세곡동', 
        '06376', '서울특별시 강남구 헌릉로 569, 305호 (세곡동)', '02-3414-8275', 127.1012408, 37.4657595, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (179, '제이비미소이비인후과의원', '소아청소년과', '서울특별시', '강남구', '신사동', 
        '06031', '서울특별시 강남구 논현로 841, 407호 (신사동)', '02-3446-1692', 127.027762, 37.5240297, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (180, '삼성울트라성장소아청소년과의원', '소아청소년과', '서울특별시', '강남구', '일원동', 
        '06355', '서울특별시 강남구 일원로 115, 삼성생명 일원역 빌딩 B동 2층 202-2호 (일원동)', '02-445-0185', 127.0844597, 37.4840224, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (181, '우리소아청소년과의원', '소아청소년과', '서울특별시', '강남구', '율현동', 
        '06378', '서울특별시 강남구 밤고개로21길 8, (율현동, 세곡프라자 1동 202호)', '02-445-1275', 127.1078637, 37.4735487, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (182, '연세도우리소아청소년과의원', '소아청소년과', '서울특별시', '강남구', '개포동', 
        '06331', '서울특별시 강남구 삼성로 14, S동 216호, 312호 (개포동, 개포자이 프레지던스)', '02-459-2024', 127.0716058, 37.4851086, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (183, '전혜원소아청소년과의원', '소아청소년과', '서울특별시', '강남구', '삼성동', 
        '06088', '서울특별시 강남구 선릉로130길 20, 201호 (삼성동, 래미안삼성2차아파트)', '02-516-8899', 127.0433374, 37.515984, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (184, '청담드림소아청소년과의원', '소아청소년과', '서울특별시', '강남구', '청담동', 
        '06074', '서울특별시 강남구 삼성로 712, 지하1층 (청담동)', '02-517-3123', 127.0502063, 37.5197323, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (185, '키즈힐소아청소년과의원', '소아청소년과', '서울특별시', '강남구', '신사동', 
        '06023', '서울특별시 강남구 압구정로34길 11, 압구정스퀘어 201호 (신사동)', '02-518-2240', 127.0309965, 37.5274022, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (186, '구름의자의원', '성형외과', '서울특별시', '강남구', '신사동', 
        '06031', '서울특별시 강남구 논현로 841, (신사동, 제이비 미소빌딩, 206호 일부)', '02-1544-6378', 127.027762, 37.5240297, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (187, '미사랑성형외과의원', '성형외과', '서울특별시', '강남구', '논현동', 
        '06114', '서울특별시 강남구 강남대로 526, 10층. 13~14층 (논현동)', '02-1577-7765', 127.0227162, 37.5091603, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (188, '압구정미라클의원', '성형외과', '서울특별시', '강남구', '신사동', 
        '06018', '서울특별시 강남구 선릉로157길 14, 한주빌딩 5층 (신사동)', '02-1588-0000', 127.0388496, 37.5261597, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (189, '연세루다의원', '성형외과', '서울특별시', '강남구', '신사동', 
        '06028', '서울특별시 강남구 압구정로10길 32, 3층 (신사동, 래미안빌딩)', '02-1644-3257', 127.0219139, 37.5215377, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (190, '최우식노즈립성형외과의원', '성형외과', '서울특별시', '강남구', '논현동', 
        '06049', '서울특별시 강남구 논현로 746, 석호빌딩 2층 (논현동)', '02-3442-0900', 127.0290347, 37.5185084, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (191, '제이케이성형외과의원', '성형외과', '서울특별시', '강남구', '신사동', 
        '06031', '서울특별시 강남구 논현로 835, (신사동)', '02-3442-1142', 127.0279657, 37.523104, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (192, '재시아성형외과의원', '성형외과', '서울특별시', '강남구', '신사동', 
        '06018', '서울특별시 강남구 선릉로 843, 2층 (신사동)', '02-3442-1991', 127.0402271, 37.5272188, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (193, '김한성성형외과의원', '성형외과', '서울특별시', '강남구', '논현동', 
        '06043', '서울특별시 강남구 강남대로 590, 11층 (논현동, 미혜빌딩)', '02-3442-2302', 127.0204374, 37.5145482, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (194, '권장덕케이성형외과의원', '성형외과', '서울특별시', '강남구', '신사동', 
        '06030', '서울특별시 강남구 논현로 857, 4층 (신사동, 계룡빌딩)', '02-3444-1311', 127.0281157, 37.5253553, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (195, '연세의과대학 강남세브란스병원', '상급종합', '서울특별시', '강남구', '도곡동', 
        '06273', '서울특별시 강남구 언주로 211, 강남세브란스병원 (도곡동)', '02-2019-3114', 127.0462683, 37.4929296, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (196, '삼성서울병원', '상급종합', '서울특별시', '강남구', '일원동', 
        '06351', '서울특별시 강남구 일원로 81, (일원동, 삼성의료원)', '02-3410-2114', 127.0851508, 37.4882977, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (197, '도곡함춘산부인과의원', '산부인과', '서울특별시', '강남구', '도곡동', 
        '06301', '서울특별시 강남구 논현로 142, 동현빌딩 2~6층 (도곡동)', '02-1661-9722', 127.0430371, 37.4824282, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (198, '미녀사랑산부인과의원', '산부인과', '서울특별시', '강남구', '역삼동', 
        '06237', '서울특별시 강남구 논현로85길 11, 7층 (역삼동)', '02-2052-2010', 127.0364805, 37.4990155, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (199, '수서나을산부인과의원', '산부인과', '서울특별시', '강남구', '수서동', 
        '06367', '서울특별시 강남구 광평로 280, 로즈데일오피스텔 2층 204호 (수서동)', '02-2226-2939', 127.103108, 37.4873192, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (200, '미래와희망산부인과의원', '산부인과', '서울특별시', '강남구', '논현동', 
        '06053', '서울특별시 강남구 언주로 707, 지하1층~11층 (논현동)', '02-3015-8806', 127.0350108, 37.5162232, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (201, '청담산부인과의원', '산부인과', '서울특별시', '강남구', '논현동', 
        '06052', '서울특별시 강남구 학동로 215, 3,6(일부),7층 601호 (논현동)', '02-544-7888', 127.0325683, 37.5148748, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (202, '압구정연세산부인과의원', '산부인과', '서울특별시', '강남구', '신사동', 
        '06019', '서울특별시 강남구 선릉로 815, 신한양빌딩 2층 (신사동)', '02-548-9008', 127.0393425, 37.5248682, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (203, '다움산부인과의원', '산부인과', '서울특별시', '강남구', '역삼동', 
        '06232', '서울특별시 강남구 강남대로 390, 미진프라자 1301호 (역삼동)', '02-555-5799', 127.028709, 37.497901, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (204, '와이퀸산부인과의원', '산부인과', '서울특별시', '강남구', '청담동', 
        '06014', '서울특별시 강남구 선릉로 820, 1층, 지하1층 (청담동)', '02-555-8278', 127.0402975, 37.524879, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (205, '레이디산부인과의원', '산부인과', '서울특별시', '강남구', '역삼동', 
        '06218', '서울특별시 강남구 선릉로 309, SJ빌딩 4층 401호 (역삼동)', '02-556-7856', 127.0521782, 37.4971888, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (206, '스탠탑비뇨의학과의원', '비뇨의학과', '서울특별시', '강남구', '논현동', 
        '06120', '서울특별시 강남구 봉은사로 107, 2층,지하2층일부층 (논현동)', '02-1522-7589', 127.0253945, 37.5050191, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (207, '강남현비뇨의학과의원', '비뇨의학과', '서울특별시', '강남구', '대치동', 
        '06207', '서울특별시 강남구 도곡로63길 16, 3층 (대치동)', '02-3467-3731', 127.0543158, 37.4980157, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (208, '브이맨비뇨기과의원', '비뇨의학과', '서울특별시', '강남구', '역삼동', 
        '06232', '서울특별시 강남구 강남대로 390, 4층 405호 (역삼동, 미진프라자)', '02-3469-1900', 127.028709, 37.497901, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (209, '강남연세비뇨의학과의원', '비뇨의학과', '서울특별시', '강남구', '역삼동', 
        '06218', '서울특별시 강남구 선릉로 311, 401호 (역삼동)', '02-558-7787', 127.052077, 37.4973384, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (210, '강남제이비뇨기과의원', '비뇨의학과', '서울특별시', '강남구', '논현동', 
        '06052', '서울특별시 강남구 학동로 203, 4,5층 (논현동)', '02-3018-7575', 127.0312001, 37.5144327, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (211, '대치엘비뇨기과의원', '비뇨의학과', '서울특별시', '강남구', '대치동', 
        '06280', '서울특별시 강남구 남부순환로 2941, 4층 (대치동)', '02-508-6576', 127.0619463, 37.4942695, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (212, '연세아르미안의원', '마취통증의학과', '서울특별시', '강남구', '청담동', 
        '06068', '서울특별시 강남구 학동로 433, 3층 (청담동)', '02-1544-3132', 127.0483242, 37.5187786, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (213, '제이마취통증의학과의원', '마취통증의학과', '서울특별시', '강남구', '역삼동', 
        '06233', '서울특별시 강남구 테헤란로 120, 상경빌딩 3층 (역삼동)', '02-2052-5005', 127.0309467, 37.4986172, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (214, '바른마취통증의학과의원', '마취통증의학과', '서울특별시', '강남구', '개포동', 
        '06335', '서울특별시 강남구 개포로 615, 4층 401호 (개포동)', '02-2226-9670', 127.0756013, 37.4926645, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (215, '연세마취통증의학과의원', '마취통증의학과', '서울특별시', '강남구', '도곡동', 
        '06267', '서울특별시 강남구 강남대로 246, 다림빌딩 5층 (도곡동)', '02-3461-0775', 127.0340252, 37.4855074, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (216, '다나마취통증의학과의원', '마취통증의학과', '서울특별시', '강남구', '수서동', 
        '06349', '서울특별시 강남구 광평로51길 8, 402호 (수서동)', '02-445-7583', 127.1024711, 37.4883738, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (217, '개포민마취통증의학과의원', '마취통증의학과', '서울특별시', '강남구', '개포동', 
        '06336', '서울특별시 강남구 개포로 623, 대청타워 234,234-1호 (개포동)', '02-451-7588', 127.0796608, 37.4943549, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (218, '성모마취통증의학과의원', '마취통증의학과', '서울특별시', '강남구', '삼성동', 
        '06169', '서울특별시 강남구 테헤란로87길 13, 6층 (삼성동)', '02-558-6100', 127.0586131, 37.5086361, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (219, '더케어마취통증의학과의원', '마취통증의학과', '서울특별시', '강남구', '역삼동', 
        '06150', '서울특별시 강남구 선릉로 513, APEXTOWER 2층 (역삼동)', '02-564-8275', 127.0483291, 37.5052789, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (220, '대치에스마취통증의학과의원', '마취통증의학과', '서울특별시', '강남구', '대치동', 
        '06280', '서울특별시 강남구 남부순환로397길 57, 3층 (대치동, 대치메디칼센터)', '02-567-1577', 127.0583169, 37.4930574, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (221, '연세다엘마취통증의학과내과의원', '마취통증의학과', '서울특별시', '강남구', '역삼동', 
        '06125', '서울특별시 강남구 논현로 561, 2,3,4층 (역삼동)', '02-6205-0892', 127.0340773, 37.5061371, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (222, '화인마취통증의학과의원', '마취통증의학과', '서울특별시', '강남구', '삼성동', 
        '06162', '서울특별시 강남구 테헤란로 405, BGF사옥 3층 (삼성동)', '02-6673-2215', 127.0499243, 37.5054553, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (223, '모두가행복한연세병원', '내과', '서울특별시', '강남구', '논현동', 
        '06055', '서울특별시 강남구 선릉로 751, 카로시티Ⅲ 지하1층, 지상1층~7층 (논현동)', '02-1600-2959', 127.0392399, 37.5217105, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (224, '강남유나이티드병원', '내과', '서울특별시', '강남구', '도곡동', 
        '06267', '서울특별시 강남구 남부순환로 2609, 하늘빌딩, 7~12층 (도곡동) (도곡동)', '02-1644-0075', 127.0351301, 37.4849802, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (225, '누네안과병원', '내과', '서울특별시', '강남구', '대치동', 
        '06192', '서울특별시 강남구 테헤란로 408, 대치빌딩 지상9층~지상17층 (대치동)', '02-1661-1175', 127.0504171, 37.5044651, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (226, '그린소아청소년과의원', '내과', '서울특별시', '강남구', '청담동', 
        '06072', '서울특별시 강남구 영동대로137길 3, 2층 일부 (청담동)', '02-0543-0577', 127.0553588, 37.5218008, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (227, '이지동안의원', '내과', '서울특별시', '강남구', '신사동', 
        '06030', '서울특별시 강남구 압구정로 168, 2,3층 (신사동)', '02-1544-7533', 127.0280007, 37.5266292, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (228, '강남서울밝은안과의원', '안과', '서울특별시', '강남구', '역삼동', 
        '06232', '서울특별시 강남구 강남대로 390, 18층 (역삼동, 미진프라자)', '02-1588-3882', 127.028709, 37.497901, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (229, '최재철내과의원', '내과', '서울특별시', '강남구', '일원동', 
        '06342', '서울특별시 강남구 양재대로55길 13, 조이빌딩 2층 201호 (일원동)', '02-2226-8062', 127.0876136, 37.491702, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (230, '조은내과의원', '내과', '서울특별시', '강남구', '개포동', 
        '06329', '서울특별시 강남구 개포로 504, 메트하임 401,402,501호 (개포동)', '02-3414-0173', 127.0671869, 37.4890546, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (231, '세실내과의원', '내과', '서울특별시', '강남구', '신사동', 
        '06023', '서울특별시 강남구 압구정로36길 7, 3층일부, 4층 (신사동)', '02-3442-2891', 127.0316661, 37.528063, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (232, '코어내과의원', '내과', '서울특별시', '강남구', '논현동', 
        '06099', '서울특별시 강남구 학동로 342, 306호 (논현동, 에스케이 허브블루)', '02-3443-7725', 127.0408461, 37.5167495, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (233, '김동수내과의원', '내과', '서울특별시', '강남구', '신사동', 
        '06031', '서울특별시 강남구 논현로 841, 506호 (신사동)', '02-3445-5959', 127.027762, 37.5240297, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (234, '압구정휴내과의원', '내과', '서울특별시', '강남구', '신사동', 
        '06018', '서울특별시 강남구 선릉로 843, 202호 (신사동)', '02-3448-9955', 127.0402271, 37.5272188, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (235, '연세기쁜내과의원', '내과', '서울특별시', '강남구', '역삼동', 
        '06225', '서울특별시 강남구 역삼로 247, 홍진빌딩 2층 (역삼동)', '02-3454-1715', 127.0431669, 37.4979648, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (236, '강남지인병원', '가정의학과', '서울특별시', '강남구', '논현동', 
        '06106', '서울특별시 강남구 언주로 631, 강남웨딩홀 지하2,2~6층 (논현동)', '02-6985-4119', 127.03505, 37.5127891, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (237, '대치제이엠가정의학과의원', '가정의학과', '서울특별시', '강남구', '대치동', 
        '06291', '서울특별시 강남구 삼성로 155, 대치퍼스트빌딩 417,418호 (대치동)', '02-2039-7588', 127.0629614, 37.4938697, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (238, '강남365가정의학과의원', '가정의학과', '서울특별시', '강남구', '삼성동', 
        '06099', '서울특별시 강남구 학동로 346, 강남구청역 지하1층 102호 (삼성동)', '02-3442-7668', 127.0413014, 37.5171892, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (239, '한빛가정의학과의원', '가정의학과', '서울특별시', '강남구', '대치동', 
        '06279', '서울특별시 강남구 삼성로 233, (대치동, 신사빌딩 2층일부)', '02-508-6623', 127.0609247, 37.4980642, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (240, '리더스내과가정의학과의원', '가정의학과', '서울특별시', '강남구', '개포동', 
        '06303', '서울특별시 강남구 논현로 98, 문화빌딩 2층 (개포동)', '02-573-8188', 127.0448081, 37.4786142, NULL);
INSERT INTO HOSPITAL (NO, NAME, HOSPITAL_TYPE, CITY, DISTRICT, DONG, POST_NUM, ADDRESS, TELL_NUM, LOCATION_X, LOCATION_Y, OPEN_YN)
VALUES (241, '이지스가정의학과의원', '가정의학과', '서울특별시', '강남구', '도곡동', 
        '06276', '서울특별시 강남구 선릉로 225, 도곡렉슬상가 3층 303호 (도곡동)', '02-576-8575', 127.0527051, 37.4953009, NULL);
        
        
        
 ----------------------------------- 배너 -----------------------------------
INSERT INTO BANNER (NO, WRITER, TITLE, IMAGE_URL, SHOW_YN) VALUES (SEQ_BANNER.NEXTVAL, 1, '2025년 3월 병원 이벤트 배너', 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/1742349433873_638a99eb-8934-46eb-85d8-301a19f6143f.jpg', 'Y');
INSERT INTO BANNER (NO, WRITER, TITLE, IMAGE_URL, SHOW_YN) VALUES (SEQ_BANNER.NEXTVAL, 1, '2025년 2월 병원 이벤트 배너', 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/1742349425586_9751da17-367e-42e9-bc87-6550b5b04dc5.jpg', 'Y');
INSERT INTO BANNER (NO, WRITER, TITLE, IMAGE_URL, SHOW_YN) VALUES (SEQ_BANNER.NEXTVAL, 1, '2025년 1월 병원 이벤트 배너', 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/1742349418589_e87e7017-1c8c-41de-a136-5ee16f73baf8.jpg', 'Y');
INSERT INTO BANNER (NO, WRITER, TITLE, IMAGE_URL, SHOW_YN) VALUES (SEQ_BANNER.NEXTVAL, 1, '2024년 12월 병원 이벤트 배너', 'https://healinglog-kh.s3.ap-northeast-2.amazonaws.com/1740711095567_bcbba33c-a362-4c9a-b04c-c8071fb53907.jpg', 'N');
INSERT INTO BANNER (NO, WRITER, TITLE, IMAGE_URL, SHOW_YN) VALUES (SEQ_BANNER.NEXTVAL, 1, '2024년 11월 병원 이벤트 배너', 'https://picsum.photos/1380/500', 'N');
INSERT INTO BANNER (NO, WRITER, TITLE, IMAGE_URL, SHOW_YN) VALUES (SEQ_BANNER.NEXTVAL, 1, '2024년 10월 병원 이벤트 배너', 'https://picsum.photos/1380/500', 'N');
INSERT INTO BANNER (NO, WRITER, TITLE, IMAGE_URL, SHOW_YN) VALUES (SEQ_BANNER.NEXTVAL, 1, '2024년 9월 병원 이벤트 배너', 'https://picsum.photos/1380/500', 'N');
INSERT INTO BANNER (NO, WRITER, TITLE, IMAGE_URL, SHOW_YN) VALUES (SEQ_BANNER.NEXTVAL, 1, '2024년 8월 병원 이벤트 배너', 'https://picsum.photos/1380/500', 'N');
INSERT INTO BANNER (NO, WRITER, TITLE, IMAGE_URL, SHOW_YN) VALUES (SEQ_BANNER.NEXTVAL, 1, '2024년 7월 병원 이벤트 배너', 'https://picsum.photos/1380/500', 'N');
INSERT INTO BANNER (NO, WRITER, TITLE, IMAGE_URL, SHOW_YN) VALUES (SEQ_BANNER.NEXTVAL, 1, '2024년 6월 병원 이벤트 배너', 'https://picsum.photos/1380/500', 'N');
INSERT INTO BANNER (NO, WRITER, TITLE, IMAGE_URL, SHOW_YN) VALUES (SEQ_BANNER.NEXTVAL, 1, '2024년 5월 병원 이벤트 배너', 'https://picsum.photos/1380/500', 'N');
INSERT INTO BANNER (NO, WRITER, TITLE, IMAGE_URL, SHOW_YN) VALUES (SEQ_BANNER.NEXTVAL, 1, '2024년 4월 병원 이벤트 배너', 'https://picsum.photos/1380/500', 'N');
INSERT INTO BANNER (NO, WRITER, TITLE, IMAGE_URL, SHOW_YN) VALUES (SEQ_BANNER.NEXTVAL, 1, '2024년 3월 병원 이벤트 배너', 'https://picsum.photos/1380/500', 'N');
INSERT INTO BANNER (NO, WRITER, TITLE, IMAGE_URL, SHOW_YN) VALUES (SEQ_BANNER.NEXTVAL, 1, '2024년 2월 병원 이벤트 배너', 'https://picsum.photos/1380/500', 'N');
INSERT INTO BANNER (NO, WRITER, TITLE, IMAGE_URL, SHOW_YN) VALUES (SEQ_BANNER.NEXTVAL, 1, '2024년 1월 병원 이벤트 배너', 'https://picsum.photos/1380/500', 'N');
INSERT INTO BANNER (NO, WRITER, TITLE, IMAGE_URL, SHOW_YN) VALUES (SEQ_BANNER.NEXTVAL, 1, '2023년 12월 병원 이벤트 배너', 'https://picsum.photos/1380/500', 'N');
INSERT INTO BANNER (NO, WRITER, TITLE, IMAGE_URL, SHOW_YN) VALUES (SEQ_BANNER.NEXTVAL, 1, '2023년 11월 병원 이벤트 배너', 'https://picsum.photos/1380/500', 'N');
INSERT INTO BANNER (NO, WRITER, TITLE, IMAGE_URL, SHOW_YN) VALUES (SEQ_BANNER.NEXTVAL, 1, '2023년 10월 병원 이벤트 배너', 'https://picsum.photos/1380/500', 'N');
INSERT INTO BANNER (NO, WRITER, TITLE, IMAGE_URL, SHOW_YN) VALUES (SEQ_BANNER.NEXTVAL, 1, '2023년 9월 병원 이벤트 배너', 'https://picsum.photos/1380/500', 'N');
INSERT INTO BANNER (NO, WRITER, TITLE, IMAGE_URL, SHOW_YN) VALUES (SEQ_BANNER.NEXTVAL, 1, '2023년 8월 병원 이벤트 배너', 'https://picsum.photos/1380/500', 'N');
INSERT INTO BANNER (NO, WRITER, TITLE, IMAGE_URL, SHOW_YN) VALUES (SEQ_BANNER.NEXTVAL, 1, '2023년 7월 병원 이벤트 배너', 'https://picsum.photos/1380/500', 'N');


 
 
 commit;       