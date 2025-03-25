-- ����� ���� ����

/* [����] 
    <���� ����>
    CREATE USER ������ IDENTIFIED BY ��й�ȣ;
    
    <���� ����>
    DROP USER ������;
    
    <���� �ο�>
    GRANT ����1, ����2, ... TO ������;
    �α��� ���� : CONNECT
    ���̺���� ���� : RESOURCE
    ����� ���� : CREATE VIEW
    
    <���� ����>
    REVOKE
*/

DROP USER C##KH;

CREATE USER C##KH IDENTIFIED BY 1234;

GRANT CONNECT, RESOURCE, CREATE VIEW TO C##KH;

-- ���̺����̽� ����
ALTER USER C##KH DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;
