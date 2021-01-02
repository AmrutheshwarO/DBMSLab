BEGIN
    UPDATE Employee
    SET salary = salary + (0.15*salary)
    WHERE dno = 2;
    dbms_output.put_line('No. of employees whose salary was incremented = ' || SQL%ROWCOUNT);
END;
/