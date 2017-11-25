set SERVEROUTPUT ON;
-----create Explicit cursor----
DECLARE
 Cursor cur_carcu
 is 
 ------giving it a query of last_name and address from CARCUST table
 select LAST_NAME, ADDRESS FROM CARCUST WHERE CARCUST_ID =&CARCUST_ID;
 ----declaring 2 variables----
 Vln CARCUST.LAST_NAME%TYPE;
 Vad CARCUST.ADDRESS%TYPE;
 -----End of declare section---- 
 BEGIN
 -----opening the cursor----
  OPEN cur_carcu;
  -----to fetch the record using loop-----
  loop
    fetch cur_carcu into Vln,Vad;
    EXIT WHEN cur_carcu%notfound;
    -----to diplay the name and address----
DBMS_OUTPUT.PUT_LINE(Vln||'-'||Vad);
DBMS_OUTPUT.PUT_LINE(cur_carcu%rowcount);
END LOOP;
 Close cur_carcu;
 end;
    
 
