USE mydb;

CREATE TABLE USERS(
   ID		INT						NOT NULL,
   NAME	VARCHAR (32)	NOT NULL,
   AGE	INT						NOT NULL,
   PRIMARY KEY (ID)
);
INSERT INTO USERS VALUES (1, 'ann', 20);
INSERT INTO USERS VALUES (2, 'bob', 21);
INSERT INTO USERS VALUES (3, 'cat', 22);

CREATE TABLE PETS(
   ID		INT						NOT NULL,
	 NAME	VARCHAR (32)	NOT NULL,
   AGE	INT						NOT NULL,
   PRIMARY KEY (ID)
);
INSERT INTO PETS VALUES (11, 'fido', 3);
INSERT INTO PETS VALUES (12, 'fifi', 5);
INSERT INTO PETS VALUES (13, 'fran', 7);

INSERT INTO USERS (ID, NAME, AGE)
SELECT ID, NAME, AGE FROM PETS;

SELECT * FROM mydb.USERS;
-- OUTPUT:
-- ID		NAME	AGE
-- 1		ann		20
-- 2		bob		21
-- 3		cat		22
-- 11		fido	3
-- 12		fifi	5
-- 13		fran	7