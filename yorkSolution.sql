-- DROPPING TABLES IF EXISTS
DROP TABLE IF EXISTS EMPLOYEE;
DROP TABLE IF EXISTS CONTACT;
DROP TABLE IF EXISTS ADDRESS;

-- CREATING EMPLOYEE TABLE
CREATE TABLE EMPLOYEE (
    ID INT PRIMARY KEY,
    FNAME VARCHAR(50) NOT NULL,
    LNAME VARCHAR(50) NOT NULL,
    AGE INT,
    HIREDATE DATE NOT NULL
);

-- CREATING ADDRESS TABLE
CREATE TABLE ADDRESS (
    ID INT PRIMARY KEY,
    ADDRESS1 VARCHAR(50) NOT NULL,
    ADDRESS2 VARCHAR(50),
    CITY VARCHAR(50) NOT NULL,
    STATE VARCHAR(2) NOT NULL,
    ZIP VARCHAR(5) NOT NULL
);

--CREATING CONTACT TABLE
CREATE TABLE CONTACT (
    ID INT PRIMARY KEY,
    CELLPHONE VARCHAR(10) NOT NULL,
    HOMEPHONE VARCHAR(10) NOT NULL, 
    EMAIL VARCHAR(50) NOT NULL
);

-- INSERTING INTO EMPLOYEE TABLE
INSERT INTO EMPLOYEE (ID, FNAME, LNAME, AGE, HIREDATE)
VALUES
    (01, 'Alan', 'Palmer ', 32, '12/15/2019'),
    (02, 'Susan', 'Shepard', 28, '07/21/2015'),
    (03, 'Justin', 'Ward', 43, '08/24/2017'),
    (04, 'Alan', 'Smith', 30, '06/22/2017'),
    (05, 'James', 'Betternot', 26, '06/22/17'),
    (06, 'Ralph', 'White', 44, '06/23/17'),
    (07, 'Lenord', 'Nemoy', 72, '12/14/07'),
    (08, 'Janice', 'Rand', 61, '07/06/16'),
    (09, 'Harry', 'Mudd', 65, '07/06/20'),
    (10, 'Hikaru', 'Sulu', 58, '03/21/15'),
    (11, 'James', 'Kirk', 59, '01/02/14'),
    (12, 'Leonard', 'McCoy', 65, '08/21/15'),
    (13, 'Pavel', 'Chekov', 44, '10/15/14');
INSERT INTO EMPLOYEE (ID, FNAME, LNAME, HIREDATE)
VALUES
    (14, 'Christopher', 'Pike', '11/24/14'),
    (15, 'Darth', 'Vader', '03/22/15'),
    (16, 'Boba', 'Fett', '03/22/15'),
    (17, 'Luke', 'Skywalker', '11/11/19'),
    (18, 'Han', 'Solo', '02/03/12'),
    (19, 'Kylo', 'Ren', '06/14/20'),
    (20, 'Galen', 'Erso', '06/14/20');

--INSERTING INTO ADDRESS TABLE
INSERT INTO ADDRESS (ID, ADDRESS1, ADDRESS2, CITY, STATE, ZIP)
VALUES
    (01, '1211 Sudan St', 'n/a', 'Mobile', 'AL', '36609'),
    (02, '4800 Barkshire Dr', 'n/a', 'Pace', 'FL', '32571'),
    (03, '12 Nutmeg Ct', 'n/a', 'Culver City', 'CA', '90211'),
    (04, '2142 Elmwood Pl', 'n/a', 'Johnson City', 'TN', '37112'),
    (05, '777 Heavenly Ln', 'Box 13', 'Pike City', 'MN', '50877');

--INSERTING INTO CONTACT TABLE
INSERT INTO CONTACT (ID, CELLPHONE, HOMEPHONE, EMAIL)
VALUES
    (01, '5121325343', '5125234234', 'apalmer@yachtmail.com'),
    (02, '5129739834', '5129847873', 'sshepard@yorkdevtraining.com'),
    (03, '6453898502', '6459872345', 'jsward2007@yahoo.com'),
    (04, '8763238756', '8763736548', 'alsmith999@gmail.com'),
    (05, '8880345966', '8888567987', 'james.betternot@hotmail.com'),
    (06, '3322827765', '3328760098', 'ralph.white264@aol.com');


--QUERIES
SELECT E.FNAME, E.LNAME, E.AGE, A.CITY, A.STATE
FROM EMPLOYEE E JOIN ADDRESS A ON E.ID = A.ID
WHERE E.FNAME = 'Alan';

SELECT E.FNAME, E.LNAME, E.AGE, A.CITY, A.STATE, C.EMAIL
FROM EMPLOYEE E JOIN ADDRESS A ON E.ID = A.ID
                JOIN CONTACT C ON C.ID = E.ID
WHERE C.EMAIL = 'james.betternot@hotmail.com';

UPDATE CONTACT
SET CELLPHONE = '4383991212'
WHERE ID = (SELECT ID FROM EMPLOYEE WHERE FNAME = 'Susan' AND LNAME = 'Shepard');

SELECT E.ID, E.FNAME, E.LNAME, E.AGE, E.HIREDATE, A.ADDRESS1, A.ADDRESS2, A.CITY, A.STATE, A.ZIP, C.CELLPHONE, C.HOMEPHONE, C.EMAIL
FROM EMPLOYEE E JOIN ADDRESS A ON E.ID = A.ID
                JOIN CONTACT C ON C.ID = E.ID
WHERE E.FNAME = 'Susan' AND E.LNAME = 'Shepard';

