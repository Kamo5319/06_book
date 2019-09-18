-- Book sample project table

/* 테이블 : BOOK                                   | 테이블명 : MANAGER
   ------------------------------------------------|-----------------------------------------------------
   컬럼명,     데이터 타입(크기),  제약 조건       |컬럼명,         데이터 타입(크기), 제약조건
   ------------------------------------------------|-----------------------------------------------------
   BOOK_SEQ    NUMBER               PK             |MANAGER_SEQ     NUMBER              PK
   ISBN        VARCHAR2(13)         U              |MANAGER_ID      VARCHAR2(10)        U 
   TITLE       VARCHAR2(50)         NOT NULL       |NAME            VARCHAR2(30)
   AUTHOR      VARCHAR2(30)                        |PASSWORD        VARCHAR2(10)        NOT NULL
   CONTENT     VARCHAR2(3000)                      |REG_ID          VARCHAR2(10)
   COMPANY_CD  VARCHAR2(30)                        |REG_DATE        DATE                SYSDATE
   TOTAL_PAGE  NUMBER(4)                           |MOD_ID          VARCHAR2(10) 
   PRICE       NUMBER(6)                           |MOD_DATE        DATE       
   QUANTITY    NUMBER(4)                           |
   REG_ID      VARCHAR2(10)                        |
   REG_DATE    DATE                 SYSDATE        |
   MOD_ID      VARCHAR2(10)                        |
   MOD_DATE    DATE                                |
   ------------------------------------------------|------------------------------------------------------
   테이블 명 : CODE                                |
   ------------------------------------------------|------------------------------------------------------
   CODE        NUMBER(4)            PK
   P_CODE      NUMBER(4)            NOT NULL
   CODE_NM     VARCHAR2(60)         NOT NULL
   CODE_VAL    VARCHAR2(300)        NOT NULL
   USE_YN      CHAR(1)
   CODE_DESC   VARCHAR2(300)
   SORT_ORDER       NUMBER               NOT NULL
   REG_ID      VARCHAR2(10)
   REG_DATE    DATE                 SYSDATE 
   MOD_ID      VARCHAR2(10)
   MOD_DATE    DATE
   ------------------------------------------------|------------------------------------------------------
   시퀀스 명 : SEQ_BOOK, SEQ_MANAGER : NO CYCLE, NOMAXVALUE, 1씩 증가
*/
-- BOOK 테이블 생성
DROP TABLE BOOK;

CREATE TABLE BOOK
( BOOK_SEQ   NUMBER
, ISBN       VARCHAR2(13)
, TITLE      VARCHAR2(50)  NOT NULL     
, AUTHOR     VARCHAR2(30)
, CONTENT    VARCHAR2(3000)
, COMPANY_CD VARCHAR2(30)
, TOTAL_PAGE NUMBER(4)
, PRICE      NUMBER(6)
, QUANTITY   NUMBER(4)
, REG_ID     VARCHAR2(10)
, REG_DATE   DATE          DEFAULT SYSDATE
, MOD_ID     VARCHAR2(10)
, MOD_DATE   DATE               
, CONSTRAINT PK_BOOK PRIMARY KEY  (BOOK_SEQ)
, CONSTRAINT U_BOOK_ISBN  UNIQUE (ISBN)   
);

-- 출판사 창비 책 목록
INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOk.NEXTVAL, '9788936433598', '채식주의자', '한강'
       , '맨부커 상을 받은 한강의 소설', 1001, 247, 10800, 5, 0);

INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOk.NEXTVAL, '9788936477196', '선량한 차별주의자', '김지혜'
       , '선량한 마음만으로 평등은 이루어지지 않는다!', 1001, 244, 13500, 5, 0);

INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOk.NEXTVAL, '9788936433697', '위저드 베이커리', '구병모'
       , '마법의 빵이 만들어지는 곳, 위저드 베이커리!', 1001, 252, 11520, 5, 0);

-- 출판사 더스토리 책 목록
INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOk.NEXTVAL, '9791159039690', '어린왕자(초판본)', '생텍쥐페리'
       ,'세상에서 가장 순수한 영혼,‘어린 왕자’ 이야기', 1002, 150, 8820, 5, 0);

INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOk.NEXTVAL, '9791164450800', '오만과 편견', '제인 오스틴'
       , '영국이 낳은 여류작가 제인 오스틴만의 연애학 개론 《오만과 편견》', 1002, 672, 15120, 5, 0);

INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOk.NEXTVAL, '9791159039515', '위대한 개츠비', '피츠제럴드'
       , '프랜시스 스콧 피츠제럴드가 남긴 불멸의 고전, 위대한 개츠비', 1002, 296, 8820, 5, 0);

-- 출판사 위즈덤하우스 책 목록
INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOk.NEXTVAL, '9791190182645', '제 인생에 답이 없어요', '선바'
       ,'유튜버 선바가 펼치는 조금 이상해도 은근히 설득력 있는 인생 해법!', 1003, 192, 10800, 5, 0);

INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOk.NEXTVAL, '9791190182560', '인간 본성의 법칙', '로버트 그린'
       , '500만 년에 걸쳐 형성된 인간 본성에 관한 탐구서!', 1003, 920, 28800, 5, 0);

INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOk.NEXTVAL, '9791190305273', '영화는 두 번 시작된다', '이동진'
       , '영화는 두 번 시작된다.처음 한 번은 극장 안에서, 그다음 한 번은 극장 밖에서.'
       , 1003, 944, 35100, 5, 0);

-- 출판사 흔 책 목록
INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOk.NEXTVAL, '9791196394509', '죽고 싶지만 떡볶이는 먹고 싶어', '백세희'
       , '의심 없이 편안하게 사랑하고 사랑받고 싶은 한 사람의 이야기', 1004, 208, 12420, 5, 0);

INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOk.NEXTVAL, '9791196394547', '어색하지 않게 사랑을 말하는 방법', '소은성'
       , '“뻔한 마음은 없어요, 뻔한 표현이 있을 뿐.”', 1004, 292, 13320, 5, 0);

INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOk.NEXTVAL, '9791196394523', '취하지 않고서야', '김현경, 장하련, 재은'
       , '고민과 용기와 추억을 앓아가며 써내려간 이야기', 1004, 268, 12420, 5, 0);

-- 출판사 북하우스 책 목록
INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOk.NEXTVAL, '9788956055466', '책은 도끼다', '박웅현'
       , '풍요로운 삶을 위한 깊이 있는 책 읽기의 정수', 1005, 348, 14400, 5, 0);

INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOk.NEXTVAL, '9791164050321', '평소의 발견', '유병욱'
       , '평범하지만 시시하지 않은 우리의 ‘평소’ 속에 숨은 놀라운 힘!', 1005, 280, 12600, 5, 0);

INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOk.NEXTVAL, '9788956058054', '내가 확실히 아는 것들', '오프라 윈프리'
       , '14년 동안의 칼럼에서 엄선한 보석 같은 사색의 글들!', 1005, 280, 12420, 5, 0);

COMMIT;



-- MANAGER 테이블 생성

DROP TABLE MANAGER;

CREATE TABLE MANAGER
( MANAGER_SEQ  NUMBER
, MANAGER_ID   VARCHAR2(10) NOT NULL
, NAME         VARCHAR2(30)     
, PASSWORD     VARCHAR2(10) NOT NULL
, REG_ID       VARCHAR2(10)
, REG_DATE     DATE         DEFAULT SYSDATE
, MOD_ID       VARCHAR2(10)
, MOD_DATE     DATE               
, CONSTRAINT PK_MANAGER    PRIMARY KEY (MANAGER_SEQ)
, CONSTRAINT U_MANAGER_ID  UNIQUE   (MANAGER_ID)   
);

INSERT INTO MANAGER 
(MANAGER_SEQ, MANAGER_ID, NAME, PASSWORD, REG_ID)
VALUES (0, 'root', '슈퍼관리자', 'root', 0);

INSERT INTO MANAGER 
(MANAGER_SEQ, MANAGER_ID, NAME, PASSWORD, REG_ID)
VALUES (SEQ_MANAGER.NEXTVAL, 'admin', '관리자', 'admin', 0);


COMMIT;

-- CODE 테이블 생성

DROP TABLE CODE;

CREATE TABLE CODE
( CODE       NUMBER(4)            
, P_CODE     NUMBER(4)      NOT NULL
, CODE_NM    VARCHAR2(60)   NOT NULL
, CODE_VAL   VARCHAR2(300)  NOT NULL
, USE_YN     CHAR(1)
, CODE_DESC  VARCHAR2(300)
, SORT_ORDER   NUMBER         NOT NULL
, REG_ID     VARCHAR2(10)
, REG_DATE   DATE           DEFAULT SYSDATE 
, MOD_ID     VARCHAR2(10)
, MOD_DATE   DATE
, CONSTRAINT PK_CODE PRIMARY KEY (CODE)
);

/* ------------------------------------------------------------------------------------------
   출판사 번호와 출판사 이름을 코드로 관리
   출판사 관련 코드는 1000 번대가 출판사 코드
   자세한 개별 출판사의 정보는 1001, 1002, 1003, ... 순서로 증가하도록 실제 데이터를 넣고 시작
*/
-- CODE 출판사 INSERT INTO 구문 작성
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1000, 0, 'COMPANY', '출판사', 'Y', '출판사 코드', 0, 0);

INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1001, 1000, 'CHANGBI', '창비', 'Y', '창작과 비평사', 0, 1);

INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1002, 1000, 'THE_STORY', '더스토리', 'Y', '더 스토리', 0, 2);

INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1003, 1000, 'WISDOM', '위즈덤', 'Y', '위즈덤 하우스', 0, 3);

INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1004, 1000, 'HUEN', '흔', 'Y', '독립출판 흔', 0, 4);

INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1005, 1000, 'BOOK_HOUSE', '북하우스', 'Y', '북하우스', 0, 5);

COMMIT;
-- SEQ_BOOK 생성
DROP SEQUENCE SEQ_BOOK;

CREATE SEQUENCE SEQ_BOOK
INCREMENT BY 1
NOCYCLE
NOMAXVALUE
;

-- SEQ_MANAGER 생성
DROP SEQUENCE SEQ_MANAGER;

CREATE SEQUENCE SEQ_MANAGER
INCREMENT BY 1
NOCYCLE
NOMAXVALUE
;










