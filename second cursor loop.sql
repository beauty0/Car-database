set SERVEROUTPUT ON;
DECLARE
  val_1 CARMODEL.MODEL_TYPE%TYPE;
  val_2 CARMODEL.CAR_COLOR%TYPE;
   CURSOR c1 is select model_type, car_color from CARMODEL;
  
BEGIN
  open c1;
  LOOP
      FETCH c1 INTO val_1,val_2;
     EXIT WHEN c1%ROWCOUNT >15 OR c1%NOTFOUND;
     DBMS_OUTPUT.PUT_LINE(   ' This car  '||TO_CHAR(val_1)||'   and the color  '|| val_2);
    END LOOP;
   CLOSE c1; 
END;