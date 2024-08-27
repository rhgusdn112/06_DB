/* 

1) MEMBER_ID 컬럼에 PRIMARY KEY 제약조건 설정.

2) MEMBER_PWD 컬럼에 NOT NULL 제약조건 설정.

3) MEMBER_NAME 컬럼에 가변 길이 문자열 30byte 설정.

*/

-- MEMBERS 테이블 생성

CREATE TABLE MEMBERS(

MEMBER_ID VARCHAR2(20) PRIMARY KEY,

MEMBER_PWD VARCHAR2(20) NOT NULL,

MEMBER_NAME VARCHAR(30),

MEMBER_AGE NUMBER,

MEMBER_EMAIL VARCHAR2(50),


);



-- BOARDS 테이블 생성

CREATE TABLE BOARDS(

BOARD_NO NUMBER PRIMARY KEY,

BOARD_TITLE VARCHAR2(100),

BOARD_CONTENT VARCHAR2(4000),

BOARD_WRITER VARCHAR2(20) 
CONSTRAINT MEMBERS_ID
REFERENCES MEMBERS (MEMBER_ID),

BOARD_REG_DATE DATE DEFAULT CURRENT_DATE
);





