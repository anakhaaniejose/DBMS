/*EXP 12 PG8*/
SET SERVEROUTPUT ON;
DECLARE
    n    NUMBER;
    s    NUMBER;
    r    NUMBER;
    len  NUMBER;
    temp NUMBER;
    res  NUMBER;

    FUNCTION armstrong(n NUMBER)
        RETURN NUMBER IS
        s NUMBER;
    BEGIN
        s := 0;
        temp := n;
        len := LENGTH(TO_CHAR(temp));
        WHILE(temp > 0)
            LOOP
                r := MOD(temp, 10);
                s := s + POWER(r, len);
                temp := TRUNC(temp / 10);
            END LOOP;
        RETURN s;
    END;

BEGIN
    n := &n;
    res := armstrong(n);
    IF (res = n) THEN
        DBMS_OUTPUT.put_line('Yes,The number ' || n || ' is an Armstrong number');
    ELSE
        DBMS_OUTPUT.put_line('No,The number ' || n || ' is NOT an Armstrong number');
    END IF;
END;
/
/*OUTPUT
SQL> @PG16
Enter value for n: 158
old  26:     n := &n;
new  26:     n := 158;
No,The number 158 is NOT an Armstrong number

PL/SQL procedure successfully completed.
*/