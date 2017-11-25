set SERVEROUTPUT ON;
-----Creating implicit Cursors to update Carmodel-----
BEGIN
	UPDATE CARMODEL SET CAR_COLOR='WHITE'
		WHERE MODEL_TYPE='MASERATI';
-----using the sql%found statement-----
	IF SQL%FOUND THEN
		dbms_output.put_line('Updated - If Found');
	END IF;
---------using the sql%notfound statement------
	IF SQL%NOTFOUND THEN
		dbms_output.put_line('NOT Updated - If NOT Found');
	END IF;	
------------using the sql%notfound statement------
	IF SQL%ROWCOUNT>0 THEN
		dbms_output.put_line(SQL%ROWCOUNT||' Rows Updated');
	ELSE
		dbms_output.put_line('NO Rows Updated Found');
        END IF;
	END;