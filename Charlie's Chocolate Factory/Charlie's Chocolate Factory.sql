CREATE DATABASE Manufacturer;

USE Manufacturer


CREATE TABLE Product
(
PROD_ID INT PRIMARY KEY,
PROD_NAME VARCHAR(200) NOT NULL,
QUANTITY INT
)

---

CREATE TABLE COMPONENT
(
COMP_ID INT PRIMARY KEY,
COMP_NAME VARCHAR(200) NOT NULL,
[DESCRIPTION] VARCHAR(200),
QUANTITY_COMP INT 
);


----


CREATE TABLE SUPPLIER
(
SUPP_ID INT PRIMARY KEY,
SUPP_NAME VARCHAR(200) NOT NULL,
IS_ACTIVE INT,

)


---

CREATE TABLE PROD_COMP
(
PROD_ID INT,
COMP_ID INT,
PRIMARY KEY (PROD_ID, COMP_ID),
FOREIGN KEY (PROD_ID) REFERENCES PRODUCT (PROD_ID),
FOREIGN KEY (COMP_ID) REFERENCES COMPONENT (COMP_ID)
)

---


CREATE TABLE COMP_SUPP
(
COMP_ID INT,
SUPP_ID INT,
ORDER_DATE DATE NOT NULL,
QUANTITY INT,
PRIMARY KEY (COMP_ID, SUPP_ID),
FOREIGN KEY (SUPP_ID) REFERENCES SUPPLIER (SUPP_ID),
FOREIGN KEY (COMP_ID) REFERENCES COMPONENT (COMP_ID)
)
