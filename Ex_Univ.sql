-- 1. 학생명단 테이블 생성 (학번, 이름, 학년, 전공)
CREATE TABLE STUDENT(
    HAKBEON VARCHAR2(20) PRIMARY KEY,
    NAME VARCHAR2(20) NOT NULL,
    GRADE INT,
    MAJOR VARCHAR2(20)
);

-- 2. 교수명단 테이블 생성 ( 번호, 이름, 전화번호, 소속전공, 나이)
CREATE TABLE PROFESSOR(
    NUM VARCHAR2(20) PRIMARY KEY,
    NAME VARCHAR2(20) NOT NULL,
    TEL VARCHAR2(20) NOT NULL,
    MAJOR VARCHAR2(20) NOT NULL,
    AGE INT
);

-- 3. 학생명단 테이블에 데이터 추가
INSERT INTO STUDENT VALUES ('123', '김길동', 1, '컴퓨터공학');
INSERT INTO STUDENT VALUES ('124', '권길동', 2, '통계');
INSERT INTO STUDENT VALUES ('125', '박길동', 4, '국어국문');
INSERT INTO STUDENT VALUES ('126', '정길동', 4, '무역');
INSERT INTO STUDENT VALUES ('127', '이길동', 3, '국어국문');

-- 4. 교수명단 테이블에 데이터 추가
INSERT INTO PROFESSOR VALUES ( '1', '김철수', '010-0000-0000', '국어국문', 25);
INSERT INTO PROFESSOR VALUES ( '2', '이영희', '010-1111-1111', '통계', 45);
INSERT INTO PROFESSOR VALUES ( '3', '박훈', '010-2222-2222', '컴퓨터공학', 35);

-- 5. 학생명단과 교수명단 테이블의 모든 데이터 출력
SELECT * FROM STUDENT;
SELECT * FROM PROFESSOR;

-- 6. 학생명단 테이블에 대해서, NAME, MAJOR, 칼럼에 대한 정보만 검색하여 출력
SELECT NAME, MAJOR FROM STUDENT;

-- 7. 학생명단 테이블에 대해서, 3학년 이상인 데이터만 검색하여 HAKBEON, NAME, GRADE 정보만 출력
SELECT HAKBEON, NAME, GRADE FROM STUDENT WHERE GRADE >= 3;

-- 8. 교수명단 테이블에 대해서, 번호가 1인 데이터만 검색하여 NAME, TEL, MAJOR 정보만 출력
SELECT NAME, TEL, MAJOR FROM PROFESSOR WHERE NUM = '1';

-- 9. 교수명단 테이블에 대해서, 나이가 35세 이상인 데이터만 검색하여 NAME, AGE 정보만 출력
SELECT NAME, AGE FROM PROFESSOR WHERE AGE >= 35;

-- 10. 학생명단과 교수명단 테이블을 삭제
DROP TABLE STUDENT;
DROP TABLE PROFESSOR;

COMMIT;
