-- 1. �л���� ���̺� ���� (�й�, �̸�, �г�, ����)
CREATE TABLE STUDENT(
    HAKBEON VARCHAR2(20) PRIMARY KEY,
    NAME VARCHAR2(20) NOT NULL,
    GRADE INT,
    MAJOR VARCHAR2(20)
);

-- 2. ������� ���̺� ���� ( ��ȣ, �̸�, ��ȭ��ȣ, �Ҽ�����, ����)
CREATE TABLE PROFESSOR(
    NUM VARCHAR2(20) PRIMARY KEY,
    NAME VARCHAR2(20) NOT NULL,
    TEL VARCHAR2(20) NOT NULL,
    MAJOR VARCHAR2(20) NOT NULL,
    AGE INT
);

-- 3. �л���� ���̺� ������ �߰�
INSERT INTO STUDENT VALUES ('123', '��浿', 1, '��ǻ�Ͱ���');
INSERT INTO STUDENT VALUES ('124', '�Ǳ浿', 2, '���');
INSERT INTO STUDENT VALUES ('125', '�ڱ浿', 4, '�����');
INSERT INTO STUDENT VALUES ('126', '���浿', 4, '����');
INSERT INTO STUDENT VALUES ('127', '�̱浿', 3, '�����');

-- 4. ������� ���̺� ������ �߰�
INSERT INTO PROFESSOR VALUES ( '1', '��ö��', '010-0000-0000', '�����', 25);
INSERT INTO PROFESSOR VALUES ( '2', '�̿���', '010-1111-1111', '���', 45);
INSERT INTO PROFESSOR VALUES ( '3', '����', '010-2222-2222', '��ǻ�Ͱ���', 35);

-- 5. �л���ܰ� ������� ���̺��� ��� ������ ���
SELECT * FROM STUDENT;
SELECT * FROM PROFESSOR;

-- 6. �л���� ���̺� ���ؼ�, NAME, MAJOR, Į���� ���� ������ �˻��Ͽ� ���
SELECT NAME, MAJOR FROM STUDENT;

-- 7. �л���� ���̺� ���ؼ�, 3�г� �̻��� �����͸� �˻��Ͽ� HAKBEON, NAME, GRADE ������ ���
SELECT HAKBEON, NAME, GRADE FROM STUDENT WHERE GRADE >= 3;

-- 8. ������� ���̺� ���ؼ�, ��ȣ�� 1�� �����͸� �˻��Ͽ� NAME, TEL, MAJOR ������ ���
SELECT NAME, TEL, MAJOR FROM PROFESSOR WHERE NUM = '1';

-- 9. ������� ���̺� ���ؼ�, ���̰� 35�� �̻��� �����͸� �˻��Ͽ� NAME, AGE ������ ���
SELECT NAME, AGE FROM PROFESSOR WHERE AGE >= 35;

-- 10. �л���ܰ� ������� ���̺��� ����
DROP TABLE STUDENT;
DROP TABLE PROFESSOR;

COMMIT;
