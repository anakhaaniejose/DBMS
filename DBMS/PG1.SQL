SET SERVEROUTPUT ON;
/*PROGRAM 1*/
DECLARE
FAC NUMBER:=1;
N NUMBER:=&1;
BEGIN
WHILE N>0 LOOP
FAC:=FAC*N;
N:=N-1;
END LOOP;
DBMS_OUTPUT.PUT_LINE(FAC);
END;
/