DECLARE
    CURSOR c1 IS
        SELECT *
        FROM Part;
        v_part part%ROWTYPE;
BEGIN
    OPEN c1;
        LOOP
            FETCH c1 into v_part.pno, v_part.pname, v_part.colour;
            EXIT WHEN c1 % NOTFOUND;
            INSERT INTO Part1 VALUES(v_part.pno, v_part.pname, v_part.colour);
        END LOOP;
    CLOSE c1;
END;
/