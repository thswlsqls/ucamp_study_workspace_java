/* SQL EXERCISE #1 SCRIPT FILE : EXERCISE.SQL */
/* 새로운 일반계정에서 실행시켜 주세요 */

DROP TABLE ENROLLMENTS CASCADE CONSTRAINT PURGE;
DROP TABLE LECTURES CASCADE CONSTRAINT PURGE;
DROP TABLE STUDENTS CASCADE CONSTRAINT PURGE;
DROP TABLE PROFESSORS CASCADE CONSTRAINT PURGE;


-- --------------------------------------------
-- PROFESSORS : 
-- --------------------------------------------
CREATE TABLE PROFESSORS (
	PCODE CHAR(3),
	PNAME VARCHAR2(30) NOT NULL,
	DEPARTMENT VARCHAR2(30),
	HIREDATE DATE NOT NULL,
	POSITION VARCHAR2(30),
	SALARY NUMBER(10)
);

ALTER TABLE PROFESSORS
ADD CONSTRAINT PK_PROFESSORS_PCODE PRIMARY KEY (PCODE);


-- --------------------------------------------
-- STUDENTS : 
-- --------------------------------------------
CREATE TABLE STUDENTS (
	SCODE CHAR(8),
	SNAME VARCHAR2(30) NOT NULL,
	DEPARTMENT VARCHAR2(30),
	YEAR CHAR(1) DEFAULT 1 NOT NULL,
	BIRTHDAY DATE,
	ADVISOR CHAR(3)
);

ALTER TABLE STUDENTS
ADD CONSTRAINT PK_STUDENTS_SCODE PRIMARY KEY (SCODE);

ALTER TABLE STUDENTS
ADD CONSTRAINT FK_STUDENTS_ADVISOR FOREIGN KEY (ADVISOR) REFERENCES PROFESSORS(PCODE);


-- --------------------------------------------
-- LECTURES : 
-- --------------------------------------------
CREATE TABLE LECTURES (
	LCODE CHAR(4),
	LNAME VARCHAR2(50),
	HOURS NUMBER(3),
	ROOM CHAR(3),
	INSTRUCTOR CHAR(3),
	CAPACITY NUMBER(3),
	PERSONS NUMBER(3)
);

ALTER TABLE LECTURES
ADD CONSTRAINT PK_LECTURES_LCODE PRIMARY KEY (LCODE);

ALTER TABLE LECTURES
ADD CONSTRAINT FK_LECTURES_INSTRUCTOR FOREIGN KEY (INSTRUCTOR) REFERENCES PROFESSORS(PCODE);


-- --------------------------------------------
-- ENROLLMENTS : 
-- --------------------------------------------
CREATE TABLE ENROLLMENTS (
	LCODE CHAR(4),
	SCODE CHAR(8),
	EDATE DATE,
	GRADE NUMBER(3)
);

ALTER TABLE ENROLLMENTS
ADD CONSTRAINT PK_ENROLLMENTS_LCODE PRIMARY KEY (LCODE, SCODE);

ALTER TABLE ENROLLMENTS
ADD CONSTRAINT FK_ENROLLMENTS_LCODE FOREIGN KEY (LCODE) REFERENCES LECTURES(LCODE);

ALTER TABLE ENROLLMENTS
ADD CONSTRAINT FK_ENROLLMENTS_SCODE FOREIGN KEY (SCODE) REFERENCES STUDENTS(SCODE);


-- --------------------------------------------
-- PROFESSORS : 4 ROWS
-- --------------------------------------------
INSERT INTO PROFESSORS VALUES('221', 'JameLee', 'computer engineering', '75/04/03', 'full professor', 8000000);
INSERT INTO PROFESSORS VALUES('228', 'JKLee', 'computer engineering', '91/09/19', 'associate professor', 7500000);
INSERT INTO PROFESSORS VALUES('311', 'SIKang', 'electronic engineering', '99/06/09', 'associate professor', 6300000);
INSERT INTO PROFESSORS VALUES('509', 'HanOh', 'architectural engineering', '03/10/14', 'assistant professor', 5000000);
COMMIT;

-- --------------------------------------------
-- STUDENTS : 8 ROWS
-- --------------------------------------------
INSERT INTO STUDENTS VALUES('92414029', 'WOOSea', 'computer engineering', '3', '73/10/06', '228');
INSERT INTO STUDENTS VALUES('92414033', 'ChangKim', 'computer engineering', '4', '70/10/26', '221');
INSERT INTO STUDENTS VALUES('92514009', 'JiLee', 'electronic engineering', '4', '73/11/16', '311');
INSERT INTO STUDENTS VALUES('92514023', 'MinKim', 'electronic engineering', '4', '73/08/29', '311');
INSERT INTO STUDENTS VALUES('92454018', 'WoonLee', 'architectural engineering', '3', '74/09/30', '509');
INSERT INTO STUDENTS VALUES('95454003', 'SungMin', 'architectural engineering', '4', '76/02/06', '509');
INSERT INTO STUDENTS VALUES('95414058', 'HyePark', 'computer engineering', '4', '76/03/12', '221');
INSERT INTO STUDENTS VALUES('96414404', 'SuJeon', 'computer engineering', '3', '77/12/22', '228');
COMMIT;

-- --------------------------------------------
-- LECTURES : 6 ROWS
-- --------------------------------------------
INSERT INTO LECTURES VALUES('C301', 'fileProcess', 3, '506', '221',  100, 80);
INSERT INTO LECTURES VALUES('C401', 'DBMS', 3, '414', '221',  80, 80);
INSERT INTO LECTURES VALUES('C421', 'algorithm', 3, '510', '228',  80, 72);
INSERT INTO LECTURES VALUES('C312', 'data structure', 2, '510', '228',  100, 60);
INSERT INTO LECTURES VALUES('E221', 'logical element', 3, '304', '311',  100, 80);
INSERT INTO LECTURES VALUES('A109', 'korea construction culture', 2, '101', '509',  120, 36);
COMMIT;


-- --------------------------------------------
-- ENROLLMENTS : 16 ROWS
-- --------------------------------------------
INSERT INTO ENROLLMENTS VALUES('C401', '92414033', '98/03/02', 85);
INSERT INTO ENROLLMENTS VALUES('C301', '92414033', '98/03/02', 80);
INSERT INTO ENROLLMENTS VALUES('C421', '92414033', '98/03/02', NULL);
INSERT INTO ENROLLMENTS VALUES('C401', '95414058', '98/03/03', 90);
INSERT INTO ENROLLMENTS VALUES('C312', '95414058', '98/03/03', 80);
INSERT INTO ENROLLMENTS VALUES('C401', '92514023', '98/03/03', 70);
INSERT INTO ENROLLMENTS VALUES('C301', '92414029', '98/03/03', 90);
INSERT INTO ENROLLMENTS VALUES('C421', '92414029', '98/03/03', NULL);
INSERT INTO ENROLLMENTS VALUES('C312', '92414029', '98/03/03', 70);
INSERT INTO ENROLLMENTS VALUES('E221', '92414029', '98/03/03', 75);
INSERT INTO ENROLLMENTS VALUES('A109', '92414029', '98/03/03', 90);
INSERT INTO ENROLLMENTS VALUES('C301', '92514009', '98/03/03', 70);
INSERT INTO ENROLLMENTS VALUES('E221', '92514009', '98/03/03', 85);
INSERT INTO ENROLLMENTS VALUES('C301', '96414404', '98/03/04', 75);
INSERT INTO ENROLLMENTS VALUES('C312', '92454018', '98/03/04', 90);
INSERT INTO ENROLLMENTS VALUES('A109', '95454003', '98/03/05', 85);
COMMIT;
