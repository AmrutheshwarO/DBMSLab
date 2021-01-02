DECLARE
    flag NUMBER:=0;
    n NUMBER;
    i NUMBER;
BEGIN
    n:=&n;
    FOR i IN 2..n/2 LOOP
        IF mod(n, i) = 0 THEN
            flag:=1;
            EXIT;
        END IF;
    END LOOP;
    IF flag=1 THEN
        dbms_output.put_line('Not prime');
    ELSE
        dbms_output.put_line('Prime');
    END IF;
END;
/