/*PROGRAM 4*/
SET SERVEROUTPUT ON;
DECLARE
FAC NUMBER:=1;
N NUMBER;
NUM NUMBER;
BEGIN
N:=&N;
NUM:=N;
WHILE N>0 LOOP
FAC:=FAC*N;
N:=N-1;
END LOOP;
DBMS_OUTPUT.PUT_LINE('FATORIAL OF '||NUM||' IS '||FAC);
END;
/
/* OUTPUT

Enter value for n: 5
old   6: N:=&N;
new   6: N:=5;
FATORIAL OF 5 IS 120
*/