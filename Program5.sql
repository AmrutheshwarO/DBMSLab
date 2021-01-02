DECLARE
    a NUMBER:= 0;
    b NUMBER:= 1;
    temp NUMBER;
    i NUMBER;
    PROCEDURE fib(n IN NUMBER) IS
BEGIN
    dbms_output.put_line('Fibonacci series is:');
    dbms_output.put_line(a);
    dbms_output.put_line(b);
    FOR i in 3..n LOOP
        temp:= a+b;
        a:= b;
        b:= temp;
        dbms_output.put_line(temp);
    END LOOP;
END;
BEGIN
    fib(10);
END;
/