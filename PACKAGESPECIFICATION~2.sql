--------This is the package specification---- 
-------This is where all the called variables and what its returns---
---CREATING THE NAME OF THE PACKAGE---
CREATE OR REPLACE 
PACKAGE FIRSTPACK AS 
------THE FIRST FUNCTION AND IT WILL RETURN NUMBER----
FUNCTION CHECK_ID (CARCUST_ID NUMBER)
RETURN NUMBER;
----THE SECOND FUNCTION AND IT WILL RETURN VARCHAR
 FUNCTION GET_MODEL_NAME 
(MO IN VARCHAR2 ) 
RETURN VARCHAR2;
-----THE FIRST PROCEDURE AND ITS VARIABLES
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
) ;
----THE SECOUND PROCEDURE AND IT VARIABLES
PROCEDURE GET_CAR_TYPE 
(
----input value----
  MODE_ID_INPUT IN NUMBER 
,MODEL_TYPE_OUTPUT OUT VARCHAR2 
); 
END FIRSTPACK;
/
