/*EXP12 PG11*/
SET SERVEROUTPUT ON;
declare
    A number := &A;
    B number := &B;
    C number := &C;
    D number := B * B - 4 * A * C;

    procedure quad(
      det in number, b in number, a in number
    ) is
    begin
      if det = 0 then
        dbms_output.put_line('x = ' || -b / 2 / a);
    elsif det > 0 then
        dbms_output.put_line('x1 = ' || (-b - sqrt(det)) / 2 / a);
        dbms_output.put_line('x2 = ' || (-b + sqrt(det)) / 2 / a);
    else
        dbms_output.put_line('x1 = (' || -b / 2 / a || ', ' || ROUND(sqrt(-det) / 2 / a,2) || ')');
        dbms_output.put_line('x2 = (' || -b / 2 / a || ', ' || ROUND(-sqrt(-det) / 2 / a,2) || ')');
    end if;
    end;

begin
    if A = 0 then
        dbms_output.put_line('Not a quadratic equation.');
        return;
    end if;
    quad(D,B,A);
end;
/
/*OUTPUT
SQL> @PG11
Enter value for a: 1
old   2:     A number := &A;
new   2:     A number := 1;
Enter value for b: 4
old   3:     B number := &B;
new   3:     B number := 4;
Enter value for c: 1
old   4:     C number := &C;
new   4:     C number := 1;
x1 = -3.73205080756887729352744634150587236695
x2 = -.267949192431122706472553658494127633055

PL/SQL procedure successfully completed.
*/