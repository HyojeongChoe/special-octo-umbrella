-- 1. ������� ���̺� ���� (�����ȣ, �̸�, �μ�, ����)
CREATE TABLE EMPLOYEE( 
    EMPLOYEE_NUM VARCHAR2(20) PRIMARY KEY,
    NAME VARCHAR2(20) NOT NULL,
    DEPARTMENT VARCHAR2(20) NOT NULL,
    AGE INT
);

-- 2. �μ���� ���̺� ���� (�μ���ȣ, �μ��̸�, ������)
CREATE TABLE DEPARTMENT(
    DEPARTMENT_NUM VARCHAR2(20) PRIMARY KEY,
    DEPARTMENT_NAME VARCHAR2(20) NOT NULL,
    EMPLOYEES INT 
);

-- 3. ������� ���̺� ���ؼ� ������ �߰�
INSERT INTO EMPLOYEE VALUES ('521', '��浿', '�濵������', 25);
INSERT INTO EMPLOYEE VALUES ('525', '�̱浿', '������', 40);
INSERT INTO EMPLOYEE VALUES ('523', '�ֱ浿', '������', 30);
INSERT INTO EMPLOYEE VALUES ('524', '���浿', '����������', 29);

-- 4. �μ���� ���̺� ���ؼ� ������ �߰�
INSERT INTO DEPARTMENT VALUES ('1', '������', 30);
INSERT INTO DEPARTMENT VALUES ('2', '����������', 15);
INSERT INTO DEPARTMENT VALUES ('3', '�濵������', 10);

-- 5. ������ܰ� �μ���� ���̺��� ��� �����͸� ���
SELECT * FROM EMPLOYEE;
SELECT * FROM DEPARTMENT;

-- 6. ������� ���̺� ���ؼ�, NAME, DEPARTMENT Į���� ���� ������ ���
SELECT NAME, DEPARTMENT FROM EMPLOYEE;

-- 7. ������� ���̺� ���ؼ�, �μ��� �������� �����͸� �˻��Ͽ� EMPLOYEE_NUM, NAME, DEPARTMENT ������ ���
SELECT EMPLOYEE_NUM, NAME, DEPARTMENT FROM EMPLOYEE WHERE DEPARTMENT = '������';

-- 8. �μ���� ���̺� ���ؼ�, �������� 10�� �ʰ��� �����͸� �˻��Ͽ� DEPARTMENT_NAME, EMPLOYEES ������ ���
SELECT DEPARTMENT_NAME, EMPLOYEES FROM DEPARTMENT WHERE EMPLOYEES > 10;

-- 9. �μ���� ���̺� ���ؼ�, �μ���ȣ�� 2�� �����͸� �˻��Ͽ� ��ü Į���� ������ ���
SELECT * FROM DEPARTMENT WHERE DEPARTMENT_NUM = '2';

-- 10. ������ܰ� �μ���� ���̺��� ����
DROP TABLE EMPLOYEE;
DROP TABLE DEPARTMENT;

COMMIT;