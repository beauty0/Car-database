-----creating a table for RENTCAR
CREATE TABLE CARCUST
(
 Carcust_id  NUMBER  (11) PRIMARY KEY,
 last_name VARCHAR2(50),
 first_name VARCHAR2(30),
 address VARCHAR2(40),
 postal_code NVARCHAR2(50),
 Tel_phone NUMBER (15),
 Email_address VARCHAR2(25) UNIQUE
 
);
-----Creating the Carrent table
CREATE TABLE CARRENT
(
 Rent_id  NUMBER  (10) PRIMARY KEY,
 Carcust_id  NUMBER  (11),
 Rent_date DATE,
 Return_date DATE,
 Reg_no NVARCHAR2(20),
 CONSTRAINT fk_CARR_Carcust_id
  FOREIGN KEY (Carcust_id)
    REFERENCES CARCUST(Carcust_id)
    
);
------Creating the Cartype table 
CREATE TABLE CARTYPE
(
 Car_id NUMBER(10) PRIMARY KEY,
 Rent_id  NUMBER  (10),
 Model_Id number(10),
 Car_make VARCHAR2(25),
 Year NUMBER(10),
 CONSTRAINT fk_CART_Rent_id
  FOREIGN KEY (Rent_id)
    REFERENCES CARRENT(Rent_id),
    CONSTRAINT Fk_CART_Model_id
    FOREIGN key (Model_id)
    REFERENCES CarModel(Model_id)
    
    
);
 ----Creating the Carmodel table
create table CarModel
(
Model_id Number(10) not null Primary key,
Model VARCHAR2 (25)
);
----TO CREATE AN AUTO-CREMENT FOR CARMODEL
CREATE SEQUENCE CARMODEL_seq
START WITH 1000
INCREMENT BY 1;

-----Call the sequence before any value is inserted into the column 
CREATE OR REPLACE TRIGGER CARMODEL_trg
BEFORE INSERT ON CARMODEL
  FOR EACH ROW
    WHEN (NEW.MODEL_id IS NULL)
    BEGIN
      SELECT CARMODEL_seq.NEXTVAL
      INTO   :NEW.MODEL_id
      FROM   dual;
    END;





