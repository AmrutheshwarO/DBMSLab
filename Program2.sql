BEGIN
    dbms_output.put_line('Table Supply');
    dbms_output.put_line('SID   PID   Quantity');
    FOR i in (SELECT * FROM Supply) LOOP
        dbms_output.put_line(i.sid||'   '||i.pid||'   '||i.quantity);
    END LOOP;
END;
/