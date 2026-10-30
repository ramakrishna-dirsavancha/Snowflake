CREATE DATABASE PRACTICE;
USE PRACTICE;

CREATE TABLE PERSONS (P_Id INT,LastName STRING,FirstName  STRING, Address STRING,City STRING);


INSERT INTO PERSONS(P_Id,LastName,FirstName,Address,City) VALUES
(1,'Hansen','Ola','Timoteivn 10 ','Sandnes'),
(2,'Svendson','Tove','Borgvn 23 ','Sandnes'),
(3,'Pettersen','Kari','Storgt 20 ','Stavanger');

SELECT * FROM PERSONS;
SELECT LAST_NAME,FIRST_NAME FROM PERSONS;
SELECT DISTINCT CITY FROM PERSONS;

SELECT * FROM PERSONS
WHERE CITY='Sandnes';
 
SELECT * FROM PERSONS 
WHERE LastName='Svendson' AND (FirstName='Tove' OR FirstName='Ola') ;

SELECT * FROM Persons 
WHERE FirstName='Tove' OR FirstName='Ola' ;
--Combining AND & OR 
SELECT * FROM Persons 
WHERE LastName='Svendson' AND (FirstName='Tove' OR FirstName='Ola') ;
-- ORDER BY
SELECT * FROM Persons ORDER BY LastName ;

SELECT * FROM Persons ORDER BY LastName DESC;
-- INSERT IN TO
INSERT INTO Persons VALUES (4,'Nilsen', 'Johan', 'Bakken 2', 'Stavanger') ;
 
INSERT INTO Persons (P_Id, LastName, FirstName) VALUES (5, 'Tjessem', 'Jakob') ;
-- UPDATE
UPDATE Persons 
SET Address='Nissestien 67', City='Sandnes' 
WHERE LastName='Tjessem' AND FirstName='Jakob' ;
-- dELETE
DELETE FROM Persons 
WHERE LastName='Tjessem' AND FirstName='Jakob' ;

USE PRACTICE;
SELECT * 
FROM PERSONS
LIMIT 3;

SELECT TOP 2 * FROM PERSONS;

SELECT TOP 50 PERCENT * FROM PERSONS; -- NOT WORKING
-- WILD CARDS
SELECT * FROM PERSONS
WHERE CITY LIKE 'Sa%';

SELECT * FROM PERSONS
WHERE CITY LIKE '%er';
--select the persons with a first name that starts with any character, followed by "la"
SELECT * FROM Persons 
WHERE FirstName LIKE '_la';
-- select the persons with a last name that starts with "S", followed by any character, 
--followed by "end", followed by any character, followed by "on" from the "Persons" table. 
SELECT * FROM PERSONS
WHERE LASTNAME LIKE 'S_end_on';
--Now we want to select the persons with a last name that starts with "b" or "s" or "p"
SELECT * FROM PERSONS
WHERE LASTNAME REGEXP'^[bsp]'; -- Not working 

SELECT * FROM Persons 
WHERE LastName LIKE '[!bsp]%' ; --Not working

SELECT * FROM Persons 
WHERE City LIKE 'S%' ;

SELECT * FROM Persons 
WHERE City LIKE '%s' ;
--select the persons living in a city that contains the pattern "tav" 
SELECT * FROM Persons 
WHERE City LIKE '%tav%';

--select the persons living in a city that contains the pattern "tav" 
SELECT * FROM PERSONS
WHERE CITY NOT LIKE '%tav%';

-- IN
--select the persons with a last name equal to "Hansen" or "Pettersen"
SELECT * FROM PERSONS
WHERE LASTNAME IN('Hansen','Pettersen');
-- select the persons with a last name alphabetically between "Hansen" and "Pettersen"
SELECT * FROM Persons 
WHERE LastName 
BETWEEN 'Hansen' AND 'Pettersen';


