-- Book sample project table

/* ���̺� : BOOK                                   | ���̺�� : MANAGER
   ------------------------------------------------|-----------------------------------------------------
   �÷���,     ������ Ÿ��(ũ��),  ���� ����       |�÷���,         ������ Ÿ��(ũ��), ��������
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
   ���̺� �� : CODE                                |
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
   ������ �� : SEQ_BOOK, SEQ_MANAGER : NO CYCLE, NOMAXVALUE, 1�� ����
*/
-- BOOK ���̺� ����
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

-- ���ǻ� â�� å ���
INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOk.NEXTVAL, '9788936433598', 'ä��������', '�Ѱ�'
       , '�Ǻ�Ŀ ���� ���� �Ѱ��� �Ҽ�', 1001, 247, 10800, 5, 0);

INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOk.NEXTVAL, '9788936477196', '������ ����������', '������'
       , '������ ���������� ����� �̷������ �ʴ´�!', 1001, 244, 13500, 5, 0);

INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOk.NEXTVAL, '9788936433697', '������ ����Ŀ��', '������'
       , '������ ���� ��������� ��, ������ ����Ŀ��!', 1001, 252, 11520, 5, 0);

-- ���ǻ� �����丮 å ���
INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOk.NEXTVAL, '9791159039690', '�����(���Ǻ�)', '�������丮'
       ,'���󿡼� ���� ������ ��ȥ,��� ���ڡ� �̾߱�', 1002, 150, 8820, 5, 0);

INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOk.NEXTVAL, '9791164450800', '������ ���', '���� ����ƾ'
       , '������ ���� �����۰� ���� ����ƾ���� ������ ���� �������� ��ߡ�', 1002, 672, 15120, 5, 0);

INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOk.NEXTVAL, '9791159039515', '������ ������', '����������'
       , '�����ý� ���� ���������尡 ���� �Ҹ��� ����, ������ ������', 1002, 296, 8820, 5, 0);

-- ���ǻ� ������Ͽ콺 å ���
INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOk.NEXTVAL, '9791190182645', '�� �λ��� ���� �����', '����'
       ,'��Ʃ�� ���ٰ� ��ġ�� ���� �̻��ص� ������ ����� �ִ� �λ� �ع�!', 1003, 192, 10800, 5, 0);

INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOk.NEXTVAL, '9791190182560', '�ΰ� ������ ��Ģ', '�ι�Ʈ �׸�'
       , '500�� �⿡ ���� ������ �ΰ� ������ ���� Ž����!', 1003, 920, 28800, 5, 0);

INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOk.NEXTVAL, '9791190305273', '��ȭ�� �� �� ���۵ȴ�', '�̵���'
       , '��ȭ�� �� �� ���۵ȴ�.ó�� �� ���� ���� �ȿ���, �״��� �� ���� ���� �ۿ���.'
       , 1003, 944, 35100, 5, 0);

-- ���ǻ� �� å ���
INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOk.NEXTVAL, '9791196394509', '�װ� ������ �����̴� �԰� �;�', '�鼼��'
       , '�ǽ� ���� ����ϰ� ����ϰ� ����ް� ���� �� ����� �̾߱�', 1004, 208, 12420, 5, 0);

INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOk.NEXTVAL, '9791196394547', '������� �ʰ� ����� ���ϴ� ���', '������'
       , '������ ������ �����, ���� ǥ���� ���� ��.��', 1004, 292, 13320, 5, 0);

INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOk.NEXTVAL, '9791196394523', '������ �ʰ���', '������, ���Ϸ�, ����'
       , '��ΰ� ���� �߾��� �ξư��� �᳻���� �̾߱�', 1004, 268, 12420, 5, 0);

-- ���ǻ� ���Ͽ콺 å ���
INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOk.NEXTVAL, '9788956055466', 'å�� ������', '�ڿ���'
       , 'ǳ��ο� ���� ���� ���� �ִ� å �б��� ����', 1005, 348, 14400, 5, 0);

INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOk.NEXTVAL, '9791164050321', '����� �߰�', '������'
       , '��������� �ý����� ���� �츮�� ����ҡ� �ӿ� ���� ���� ��!', 1005, 280, 12600, 5, 0);

INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOk.NEXTVAL, '9788956058054', '���� Ȯ���� �ƴ� �͵�', '������ ������'
       , '14�� ������ Į������ ������ ���� ���� ����� �۵�!', 1005, 280, 12420, 5, 0);

COMMIT;



-- MANAGER ���̺� ����

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
VALUES (0, 'root', '���۰�����', 'root', 0);

INSERT INTO MANAGER 
(MANAGER_SEQ, MANAGER_ID, NAME, PASSWORD, REG_ID)
VALUES (SEQ_MANAGER.NEXTVAL, 'admin', '������', 'admin', 0);


COMMIT;

-- CODE ���̺� ����

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
   ���ǻ� ��ȣ�� ���ǻ� �̸��� �ڵ�� ����
   ���ǻ� ���� �ڵ�� 1000 ���밡 ���ǻ� �ڵ�
   �ڼ��� ���� ���ǻ��� ������ 1001, 1002, 1003, ... ������ �����ϵ��� ���� �����͸� �ְ� ����
*/
-- CODE ���ǻ� INSERT INTO ���� �ۼ�
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1000, 0, 'COMPANY', '���ǻ�', 'Y', '���ǻ� �ڵ�', 0, 0);

INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1001, 1000, 'CHANGBI', 'â��', 'Y', 'â�۰� �����', 0, 1);

INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1002, 1000, 'THE_STORY', '�����丮', 'Y', '�� ���丮', 0, 2);

INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1003, 1000, 'WISDOM', '�����', 'Y', '����� �Ͽ콺', 0, 3);

INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1004, 1000, 'HUEN', '��', 'Y', '�������� ��', 0, 4);

INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1005, 1000, 'BOOK_HOUSE', '���Ͽ콺', 'Y', '���Ͽ콺', 0, 5);

COMMIT;
-- SEQ_BOOK ����
DROP SEQUENCE SEQ_BOOK;

CREATE SEQUENCE SEQ_BOOK
INCREMENT BY 1
NOCYCLE
NOMAXVALUE
;

-- SEQ_MANAGER ����
DROP SEQUENCE SEQ_MANAGER;

CREATE SEQUENCE SEQ_MANAGER
INCREMENT BY 1
NOCYCLE
NOMAXVALUE
;










