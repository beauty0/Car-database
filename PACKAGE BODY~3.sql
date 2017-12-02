------CREATE THE BODY PACKAGE ----
-----THE NAME OF THE PACKAGE IS FIRSTPACK---
----CREATE THE FIRST FUNCTION, RETURN NUMBER AND EXCEPTION----
create or replace PACKAGE BODY FIRSTPACK AS
FUNCTION CHECK_ID (CARCUST_ID NUMBER)
RETURN NUMBER 
AS
BEGIN 
  IF CARCUST_ID < 101 THEN
      RETURN 1;
    ELSE
      RETURN 0;
END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
      RETURN -1;
      WHEN OTHERS THEN 
        RETURN NULL;
END CHECK_ID;
----CREATE THE SECOND FUNCTION RETURN VARCHAR2---
FUNCTION GET_MODEL_NAME 
(
  MO IN VARCHAR2 
) RETURN VARCHAR2 AS 
VMODEL_TYPE VARCHAR2(25);
BEGIN
SELECT MODEL_TYPE INTO VMODEL_TYPE FROM CARMODEL
WHERE MODEL_ID = MO;
  RETURN VMODEL_TYPE ;
END GET_MODEL_NAME;
-----CREATING A  FIRST PROCEDURE-----
procedure new_procy 
(
  carc_id in number 
, lst_name in varchar2 
, fis_name in varchar2 
, ress in varchar2 
, po_code in varchar2 
, te_numb in number 
, em_dress in varchar2 
, error_msg out varchar2 
) 
is 
-----insert into carcust value 
begin
  insert into CARCUST ("CARCUST_ID","LAST_NAME","FIRST_NAME","ADDRESS","POSTAL_CODE","TEL_PHONE","EMAIL_ADDRESS")
  VALUES(carc_id,lst_name,fis_name,ress,po_code,te_numb,em_dress);

-----creating error message incase there is any  
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
  error_msg := SQLERRM;
end new_procy;
-----CREATING SECOND PROCEDURE---
PROCEDURE GET_CAR_TYPE 
(
----input value----
  MODE_ID_INPUT IN NUMBER 
, MODEL_TYPE_OUTPUT OUT VARCHAR2 
) 
AS 
------output value----
BEGIN
 SELECT MODEL_TYPE INTO MODEL_TYPE_OUTPUT FROM CARMODEL WHERE MODEL_ID =MODE_ID_INPUT;
END GET_CAR_TYPE;
END FIRSTPACK;
/
show errors