CREATE DATABASE RAMAYANA;

USE RAMAYANA;

CREATE TABLE RAMAYANA(ID INT, NAME VARCHAR(50), ROLE VARCHAR(20), KINGDOM VARCHAR(20), AGE INT, WEAPON VARCHAR(20),
STRENGTH INT, ALLIES VARCHAR(20), ENEMIES VARCHAR(20), STATUS VARCHAR(20), LOCATION VARCHAR(20));

INSERT INTO RAMAYANA VALUES(1, 'RAMA', 'HERO', 'AYODHYA', 25, 'BOW AND ARROW', 95, 'LAKSHMANA, HANUMAN', 'RAVANA, SURPANAKHA', 'ALIVE', 'FOREST'); 
INSERT INTO RAMAYANA VALUES(2, 'SITA', 'HEROINE', 'JANAKPUR', 24, 'NONE', 70, 'RAMA, LAKSHMANA', 'RAVANA', 'KIDNAPPED', 'ASHOKA VATIKA'); 
INSERT INTO RAMAYANA VALUES(3, 'RAVANA', 'VILLAIN', 'LANKA', 50, 'SWORD', 100, 'KUMBHAKARNA', 'RAMA, HANUMAN', 'DECEASED', 'LANKA'); 
INSERT INTO RAMAYANA VALUES(4, 'LAKSHMANA', 'SIDEKICK', 'AYODHYA', 24, 'SWORD', 85, 'RAMA, HANUMAN', 'RAVANA', 'ALIVE', 'FOREST'); 
INSERT INTO RAMAYANA VALUES(5, 'HANUMAN', 'DEVOTEE', 'KISHKINDHA', 30, 'MACE', 100, 'LAKSHMANA, RAMA', 'RAVANA', 'ALIVE', 'LANKA'); 
INSERT INTO RAMAYANA VALUES(6, 'BHARATA', 'HERO', 'AYODHYA', 23, 'NONE', 75, 'SHATRUGHNA', 'RAVANA', 'ALIVE', 'AYODHYA'); 
INSERT INTO RAMAYANA VALUES(7, 'SHATRUGHNA', 'HERO', 'AYODHYA', 22, 'SWORD', 80, 'LAKSHMANA, BHARATA', 'RAVANA', 'ALIVE', 'AYODHYA'); 
INSERT INTO RAMAYANA VALUES(8, 'VIBHISHANA', 'ALLY', 'LANKA', 40, 'SWORD', 85, 'RAMA', 'RAVANA', 'ALIVE', 'LANKA'); 
INSERT INTO RAMAYANA VALUES(9, 'SURPANAKHA', 'VILLAIN', 'LANKA', 35, 'NONE', 60, 'RAVANA', 'RAMA, LAKSHMANA', 'DECEASED', 'LANKA'); 
INSERT INTO RAMAYANA VALUES(10, 'JATAYU', 'ALLY', 'UNKNOWN', 60, 'CLAWS', 90, 'LAKSHMANA, RAMA', 'RAVANA', 'DECEASED', 'FOREST'); 

SELECT * FROM RAMAYANA;

SELECT * FROM RAMAYANA WHERE STATUS = 'ALIVE';

SET SQL_SAFE_UPDATES = 0;

UPDATE RAMAYANA SET STRENGTH = 110 WHERE NAME = 'HANUMAN';

ALTER TABLE RAMAYANA ADD(POWER_LEVEL INT);

SELECT ALLIES, STRENGTH FROM RAMAYANA GROUP BY ALLIES, STRENGTH HAVING STRENGTH > 80;

Select
Substring_index(allies, '  ', 1)as name1,
Substring_index(substring_index(allies,' ',2),' ',-1) as name2 from RAMAYANA;

SELECT KINGDOM, COUNT(KINGDOM) FROM RAMAYANA GROUP BY KINGDOM;

SELECT NAME, ROLE FROM RAMAYANA WHERE ROLE = 'HERO' OR ROLE = 'VILLAIN';
SELECT NAME, ROLE FROM RAMAYANA WHERE ROLE IN('HERO','VILLAIN');

UPDATE RAMAYANA SET LOCATION = 'AYODHYA' WHERE NAME = 'RAMA' OR NAME = 'SITA';
UPDATE RAMAYANA SET LOCATION = 'AYODHYA' WHERE NAME IN('RAMA','SITA');

ALTER TABLE RAMAYANA MODIFY COLUMN LOCATION VARCHAR(100);

DESC RAMAYANA;

SELECT ALLIES, AGE FROM RAMAYANA GROUP BY ALLIES, AGE HAVING AGE < 40;

SELECT STATUS, COUNT(NAME) FROM RAMAYANA GROUP BY STATUS;