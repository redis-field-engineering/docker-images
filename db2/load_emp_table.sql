CONNECT TO RCDB2;

DELETE EMP;

IMPORT FROM /var/tmp/emp.csv OF DEL INSERT INTO EMP;