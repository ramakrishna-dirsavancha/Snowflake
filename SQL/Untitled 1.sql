-- Database setup, table management, and EMP table analysis with 100 records
-- Co-authored with CoCo

// CREATING THE DATABASES
CREATE DATABASE ECOM_DEV;
CREATE OR REPLACE DATABASE COLLEGE;
create DATABASE IGGROUP_DEV;

// USING THE COLLEGE DATABASE TO CURRUENT 
USE COLLEGE;
//CREATING THE SCHEMAS
CREATE SCHEMA COLLEGE.MBA;
CREATE SCHEMA COLLEGE.MCA;
CREATE SCHEMA COLLEGE.BTech;

// CREATING THE TABLE 
CREATE TABLE COLLEGE.MBA.STUDENT(STUDENT_ID INT ,
STUDENT_NAME STRING,
STUDENT_ADDRESS STRING,
STUDENT_CLASS VARCHAR(20));

// INSERTING THE DATA IN TO THE TABLE
INSERT INTO COLLEGE.MBA.STUDENT(STUDENT_ID,STUDENT_NAME,STUDENT_ADDRESS,STUDENT_CLASS) VALUES
                (101,'RAVI','BLR','MBA'),
                (102,'JHANU','HYD','MBA');

  // RUNNING THE QUERY TO LIST THE DATA IN TABLE
SELECT * FROM COLLEGE.MBA.STUDENT;

// MODIFYING/ALTERING THE EXISTING TABLE 
ALTER TABLE COLLEGE.MBA.STUDENT DROP COLUMN STUDENT_CLASS;
ALTER TABLE COLLEGE.MBA.STUDENT DROP COLUMN STUDENT_ADDRESS;
ALTER TABLE COLLEGE.MBA.STUDENT ADD COLUMN STUDENT_ADDRESS STRING;
ALTER TABLE COLLEGE.MBA.STUDENT ADD COLUMN STUDENT_MARKS INT;

// UPDATING THE RECORDS IN EMTY CELLS
UPDATE COLLEGE.MBA.STUDENT
       SET STUDENT_MARKS=90 WHERE STUDENT_ID=101;
UPDATE COLLEGE.MBA.STUDENT       
       SET STUDENT_MARKS=85 WHERE STUDENT_ID=102;                           SELECT * FROM COLLEGE.MBA.STUDENT;
UPDATE COLLEGE.MBA.STUDENT
SET STUDENT_ADDRESS='BLR';

// CREATA A NEW TABLE IN IGGROUP WITH EMP
CREATE TABLE IGGROUP_DEV.PUBLIC.EMP(ID STRING,
               FIRST_NAME STRING,
               LAST_NAME STRING,
               EMAIL STRING,
               LOCATION STRING,
               DEPARTMENT STRING);
               
SELECT * FROM IGGROUP_DEV.PUBLIC.EMP;  
-- Database setup, table management, and EMP table analysis with 100 records
-- Co-authored with CoCo
// INSERT 100 SAMPLE RECORDS INTO EMP TABLE
INSERT INTO IGGROUP_DEV.PUBLIC.EMP (ID, FIRST_NAME, LAST_NAME, EMAIL, LOCATION, DEPARTMENT) VALUES
('E001','Rahul','Sharma','rahul.sharma@ig.com','Bangalore','Engineering'),
('E002','Priya','Patel','priya.patel@ig.com','Mumbai','Marketing'),
('E003','Amit','Kumar','amit.kumar@ig.com','Delhi','Finance'),
('E004','Sneha','Reddy','sneha.reddy@ig.com','Hyderabad','Engineering'),
('E005','Vikram','Singh','vikram.singh@ig.com','Chennai','HR'),
('E006','Anjali','Gupta','anjali.gupta@ig.com','Pune','Engineering'),
('E007','Rajesh','Nair','rajesh.nair@ig.com','Kochi','Sales'),
('E008','Kavita','Joshi','kavita.joshi@ig.com','Bangalore','Marketing'),
('E009','Suresh','Menon','suresh.menon@ig.com','Mumbai','Finance'),
('E010','Deepa','Iyer','deepa.iyer@ig.com','Chennai','Engineering'),
('E011','Arjun','Rao','arjun.rao@ig.com','Hyderabad','Sales'),
('E012','Meera','Das','meera.das@ig.com','Kolkata','HR'),
('E013','Karthik','Pillai','karthik.pillai@ig.com','Bangalore','Engineering'),
('E014','Swati','Mishra','swati.mishra@ig.com','Delhi','Marketing'),
('E015','Nikhil','Verma','nikhil.verma@ig.com','Pune','Finance'),
('E016','Pooja','Agarwal','pooja.agarwal@ig.com','Mumbai','Engineering'),
('E017','Sanjay','Bhat','sanjay.bhat@ig.com','Bangalore','Sales'),
('E018','Ritu','Chopra','ritu.chopra@ig.com','Delhi','HR'),
('E019','Manoj','Tiwari','manoj.tiwari@ig.com','Chennai','Engineering'),
('E020','Divya','Saxena','divya.saxena@ig.com','Hyderabad','Marketing'),
('E021','Arun','Pandey','arun.pandey@ig.com','Pune','Finance'),
('E022','Nisha','Kulkarni','nisha.kulkarni@ig.com','Mumbai','Engineering'),
('E023','Vivek','Deshmukh','vivek.deshmukh@ig.com','Bangalore','Sales'),
('E024','Sunita','Bhatt','sunita.bhatt@ig.com','Delhi','HR'),
('E025','Gaurav','Sinha','gaurav.sinha@ig.com','Kolkata','Engineering'),
('E026','Asha','Mehta','asha.mehta@ig.com','Chennai','Marketing'),
('E027','Rohit','Kapoor','rohit.kapoor@ig.com','Mumbai','Finance'),
('E028','Lakshmi','Venkat','lakshmi.venkat@ig.com','Hyderabad','Engineering'),
('E029','Pranav','Jain','pranav.jain@ig.com','Bangalore','Sales'),
('E030','Geeta','Bansal','geeta.bansal@ig.com','Pune','HR'),
('E031','Siddharth','Malhotra','siddharth.malhotra@ig.com','Delhi','Engineering'),
('E032','Rekha','Goyal','rekha.goyal@ig.com','Mumbai','Marketing'),
('E033','Abhishek','Chauhan','abhishek.chauhan@ig.com','Chennai','Finance'),
('E034','Pallavi','Deshpande','pallavi.deshpande@ig.com','Bangalore','Engineering'),
('E035','Naveen','Hegde','naveen.hegde@ig.com','Hyderabad','Sales'),
('E036','Smita','Patil','smita.patil@ig.com','Pune','HR'),
('E037','Ramesh','Yadav','ramesh.yadav@ig.com','Delhi','Engineering'),
('E038','Anita','Shetty','anita.shetty@ig.com','Mumbai','Marketing'),
('E039','Pankaj','Dubey','pankaj.dubey@ig.com','Kolkata','Finance'),
('E040','Shruti','Kamat','shruti.kamat@ig.com','Bangalore','Engineering'),
('E041','Harish','Rangan','harish.rangan@ig.com','Chennai','Sales'),
('E042','Vandana','Thakur','vandana.thakur@ig.com','Hyderabad','HR'),
('E043','Ajay','Mohan','ajay.mohan@ig.com','Pune','Engineering'),
('E044','Bhavna','Sethi','bhavna.sethi@ig.com','Delhi','Marketing'),
('E045','Dinesh','Prasad','dinesh.prasad@ig.com','Mumbai','Finance'),
('E046','Usha','Naik','usha.naik@ig.com','Bangalore','Engineering'),
('E047','Girish','Subramaniam','girish.subramaniam@ig.com','Chennai','Sales'),
('E048','Kamala','Rajan','kamala.rajan@ig.com','Kochi','HR'),
('E049','Mohan','Krishnan','mohan.krishnan@ig.com','Hyderabad','Engineering'),
('E050','Radha','Murthy','radha.murthy@ig.com','Pune','Marketing'),
('E051','Satish','Gowda','satish.gowda@ig.com','Bangalore','Finance'),
('E052','Jaya','Narayan','jaya.narayan@ig.com','Delhi','Engineering'),
('E053','Venkat','Reddy','venkat.reddy@ig.com','Mumbai','Sales'),
('E054','Suma','Rao','suma.rao@ig.com','Chennai','HR'),
('E055','Prakash','Srinivasan','prakash.srinivasan@ig.com','Hyderabad','Engineering'),
('E056','Lata','Sharma','lata.sharma@ig.com','Kolkata','Marketing'),
('E057','Ganesh','Iyer','ganesh.iyer@ig.com','Pune','Finance'),
('E058','Hema','Nambiar','hema.nambiar@ig.com','Bangalore','Engineering'),
('E059','Sunil','Menon','sunil.menon@ig.com','Kochi','Sales'),
('E060','Padma','Pillai','padma.pillai@ig.com','Chennai','HR'),
('E061','Ashok','Bose','ashok.bose@ig.com','Delhi','Engineering'),
('E062','Savita','Choudhary','savita.choudhary@ig.com','Mumbai','Marketing'),
('E063','Mukesh','Tandon','mukesh.tandon@ig.com','Hyderabad','Finance'),
('E064','Rani','Hegde','rani.hegde@ig.com','Bangalore','Engineering'),
('E065','Tarun','Anand','tarun.anand@ig.com','Pune','Sales'),
('E066','Shobha','Menon','shobha.menon@ig.com','Chennai','HR'),
('E067','Vinod','Nair','vinod.nair@ig.com','Kochi','Engineering'),
('E068','Chitra','Swamy','chitra.swamy@ig.com','Hyderabad','Marketing'),
('E069','Naresh','Bhat','naresh.bhat@ig.com','Mumbai','Finance'),
('E070','Sushma','Kulkarni','sushma.kulkarni@ig.com','Bangalore','Engineering'),
('E071','Raghav','Mishra','raghav.mishra@ig.com','Delhi','Sales'),
('E072','Vidya','Acharya','vidya.acharya@ig.com','Pune','HR'),
('E073','Kishore','Prabhu','kishore.prabhu@ig.com','Chennai','Engineering'),
('E074','Saroja','Varma','saroja.varma@ig.com','Mumbai','Marketing'),
('E075','Deepak','Shukla','deepak.shukla@ig.com','Hyderabad','Finance'),
('E076','Indira','Das','indira.das@ig.com','Kolkata','Engineering'),
('E077','Sudhir','Pai','sudhir.pai@ig.com','Bangalore','Sales'),
('E078','Archana','Raghavan','archana.raghavan@ig.com','Chennai','HR'),
('E079','Jagdish','Trivedi','jagdish.trivedi@ig.com','Delhi','Engineering'),
('E080','Nalini','Sundaram','nalini.sundaram@ig.com','Pune','Marketing'),
('E081','Ravi','Shankar','ravi.shankar@ig.com','Mumbai','Finance'),
('E082','Shalini','Nair','shalini.nair@ig.com','Kochi','Engineering'),
('E083','Hemant','Joshi','hemant.joshi@ig.com','Bangalore','Sales'),
('E084','Gayatri','Rao','gayatri.rao@ig.com','Hyderabad','HR'),
('E085','Vijay','Kumar','vijay.kumar@ig.com','Chennai','Engineering'),
('E086','Preeti','Sharma','preeti.sharma@ig.com','Delhi','Marketing'),
('E087','Mahesh','Gupta','mahesh.gupta@ig.com','Mumbai','Finance'),
('E088','Anupama','Reddy','anupama.reddy@ig.com','Bangalore','Engineering'),
('E089','Shashank','Verma','shashank.verma@ig.com','Pune','Sales'),
('E090','Durga','Patil','durga.patil@ig.com','Hyderabad','HR'),
('E091','Prasanna','Iyer','prasanna.iyer@ig.com','Chennai','Engineering'),
('E092','Manju','Kapoor','manju.kapoor@ig.com','Delhi','Marketing'),
('E093','Santosh','Shetty','santosh.shetty@ig.com','Mumbai','Finance'),
('E094','Revathi','Balan','revathi.balan@ig.com','Kochi','Engineering'),
('E095','Anil','Desai','anil.desai@ig.com','Bangalore','Sales'),
('E096','Pushpa','Singh','pushpa.singh@ig.com','Kolkata','HR'),
('E097','Ramya','Krishnamurthy','ramya.krishnamurthy@ig.com','Chennai','Engineering'),
('E098','Vikas','Bhardwaj','vikas.bhardwaj@ig.com','Hyderabad','Marketing'),
('E099','Aparna','Namboodiri','aparna.namboodiri@ig.com','Pune','Finance'),
('E100','Kartik','Raghunathan','kartik.raghunathan@ig.com','Bangalore','Engineering');

// ANALYZE EMP TABLE - RECORD COUNT BY DEPARTMENT
SELECT DEPARTMENT, COUNT(*) AS EMP_COUNT
FROM IGGROUP_DEV.PUBLIC.EMP
GROUP BY DEPARTMENT
ORDER BY EMP_COUNT DESC;

// ANALYZE EMP TABLE - RECORD COUNT BY LOCATION
SELECT LOCATION, COUNT(*) AS EMP_COUNT
FROM IGGROUP_DEV.PUBLIC.EMP
GROUP BY LOCATION
ORDER BY EMP_COUNT DESC;

// VIEW ALL 100 RECORDS
SELECT * FROM IGGROUP_DEV.PUBLIC.EMP
ORDER BY ID
LIMIT 100;

TRUNCATE TABLE IGGROUP_DEV.PUBLIC.EMP;
SELECT * FROM IGGROUP_DEV.PUBLIC.EMP;

--DROP, TRUNCATE,DELETE
DELETE FROM IGGROUP_DEV.PUBLIC.EMP;
DELETE FROM IGGROUP_DEV.PUBLIC.EMP WHERE ID='E001';
DELETE FROM IGGROUP_DEV.PUBLIC.EMP WHERE ID IN('E005','E005','E010','E020');

--drop
DROP TABLE IGGROUP_DEV.PUBLIC.EMP;
UNDROP TABLE IGGROUP_DEV.PUBLIC.EMP;

CREATE TABLE PUBLIC.COLOURS(
               COLOUR_NAME STRING,
               COLOUR_ID STRING);

               INSERT INTO PUBLIC.COLOURS(COLOUR_NAME,COLOUR_ID) VALUES
               ('BLUE',20),
               ('GREEN',40),
               ('GREEN',20),
               ('BLUE',40),
               ('BLUE',10),
               ('GREEN',50);
               SELECT * FROM COLOURS
               ORDER BY COLOUR_NAME ASC,COLOUR_ID DESC;

               SELECT * FROM COLOURS
               ORDER BY COLOUR_NAME DESC,COLOUR_ID ASC;

               SELECT * FROM COLOURS
               ORDER BY COLOUR_NAME DESC,COLOUR_ID DESC;

               CREATE TABLE PUBLIC.INTVALUE_TEST(ID INTEGER,NAME STRING,SALARY INTEGER);
               INSERT INTO PUBLIC.INTVALUE_TEST(ID,NAME,SALARY) VALUES 
               (100,'RAM',2000),
               (100,'HARI',9000),
               (100,'SHYAM',1500),
               (100,'KRISHNA',9000),  
               (100,'RAM',2000);
               SELECT * FROM INTVALUE_TEST
               ORDER BY ID DESC, SALARY ASC;
               
 UPDATE INTVALUE_TEST SET ID = 101 WHERE NAME = 'HARI';
UPDATE INTVALUE_TEST SET ID = 102 WHERE NAME = 'SHYAM';
UPDATE INTVALUE_TEST SET ID = 103 WHERE NAME = 'KRISHNA';
UPDATE INTVALUE_TEST SET ID = 104 WHERE NAME = 'RAM';

UPDATE INTVALUE_TEST 
SET ID = 200 
WHERE ID IN(
SELECT ID FORM (
SELECT ID FORM INTVALUE_TEST 
WHERE NAME='RAM' 
LIMIT 1 OFFSET 1)AS TMP);

// UPDATE THE 2ND ROW FIRST COLUMN (ID) IN INTVALUE_TEST
UPDATE INTVALUE_TEST
SET ID = 200
WHERE NAME = (SELECT NAME FROM INTVALUE_TEST ORDER BY NAME LIMIT 1 OFFSET 1);


// UPDATE ID FOR THE 2ND 'RAM' ROW IN INTVALUE_TEST
MERGE INTO INTVALUE_TEST AS target
USING (
    SELECT NAME, SALARY, ROW_NUMBER() OVER (PARTITION BY NAME ORDER BY SALARY) AS RN
    FROM INTVALUE_TEST
    WHERE NAME = 'RAM'
) AS src
ON target.NAME = src.NAME AND target.SALARY = src.SALARY AND src.RN = 2
WHEN MATCHED THEN UPDATE SET target.ID = 102;

SELECT * FROM INTVALUE_TEST
ORDER BY ID ASC,SALARY ASC;

UPDATE PUBLIC.INTVALUE_TEST
SET ID = 103
WHERE ROW_ID = 3;