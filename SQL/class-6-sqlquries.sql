SQL QUERIES 

1. Display the details of all employees 

sql:   select * from employees 

2. Display the depart information from department table 

sql:   select * from departments 

3. Display the name and job for all the employees 

 sql:   select name ,job  from employees

4. Display the name and salary  for all the employees 
sql: SELECT  NAME,SALARY FROM EMPLOYEES;

5. Display the employee no and totalsalary  for all the employees 
sql: SELECT EMPLOYEE NO,SALARY AS TOTAL_SALARY FROM EMPLOYEES;

6. Display the employee name and annual salary for all employees. 
sql: SELECT CONCAT(FIRST_NAME,' ',LAST_NAME) AS EMPLOYEE_NAME, SARY*12 AS TOTAL_ANUAL_SALARY FROM EMPLOYEES;

7. Display the names of all the employees who are working in depart number 10. 
sql: SELECT FIRST_NAME,DEPARTMENT_ID FROM EMPLOYEES WHERE DEPARTMENT_ID=10;


8. Display the names of all the employees who are working as clerks and  drawing a salary more than 3000.           SELECT * FROM EMPLOYEES; SELECT * FROM DEPARTMENTS; DESC TABLE DEPARTMENTS;

SELECT E.FIRST_NAME, D.DEPARTMENT_NAME,E.SALARY FROM EMPLOYEES E JOIN DEPARTMENTS D ON E.DEPARTMENT_ID=D.DEPARTMENT_ID
WHERE D.DEPARTMENT_NAME='Clerks' AND E.SALARY>3000;


9. Display the employee number and name  who are earning comman salalry
SELECT EMPLOYEE_ID,FIRST_NAME,SALARY FROM EMPLOYEES 
               WHERE SALARY IN(
               SELECT SALARY FROM EMPLOYEES
               GROUP BY SALARY 
               HAVING COUNT(SALARY)=1) 
               ORDER BY SALARY DESC;


10. Display the employee number and name  who do not earn any common salary

SELECT EMPLOYEE_ID,FIRST_NAME,SALARY FROM EMPLOYEES 
               WHERE SALARY IN(
               SELECT SALARY FROM EMPLOYEES
               GROUP BY SALARY 
               HAVING COUNT(SALARY)=2) 
               ORDER BY SALARY DESC;

11. Display the names of employees who are working as clerks, salesman or  analyst and drawing a salary more than 3000. 

SELECT E.FIRST_NAME,D.DEPARTMENT_NAME,E.SALARY FROM EMPLOYEES E JOIN DEPARTMENTS D
ON E.DEPARTMENT_ID=D.DEPARTMENT_ID WHERE  D.DEPARTMENT_NAME='Clerks' OR D.DEPARTMENT_NAME='Sales' OR D.DEPARTMENT_NAME='Analyst' AND E.SALARY>3000;

12. Display the names of the employees who are working in the company for  the past 5 years; 

 SELECT FIRST_NAME, HIRE_DATE TRUNC(MONTHS_BETWEEN (SYSDATE,HIRE_DATE)) AS EMP_TOTAL, 
                  MONTHS TRUNC(SYSDATE-HIRE_DATE) AS TOTAL_DAYS FROM EMPLOYEES WHERE HIRE_DATE<= ADD_MONTHS( CURRENT_DATE,-60);

13. Display the list of employees who have joined the company before  30-JUN-90 or after 31-DEC-90.


14. Display current Date. 
SELECT CURRENT_DATE();



15. Display the list of all users in your database (use catalog table). 



16. Display the names of all tables from current user; 
SHOW TABLES;


17. Display the name of the current user. 



18. Display the names of employees working in depart number 10 or 20 or 40  or employees working as CLERKS,SALESMAN or ANALYST. 

19. Display the names of employees whose name starts with alaphabet S. 



20. Display the Employee names for employees whose name ends with alaphabet S. 



21. Display the names of employees whose names have second alphabet A in  their names. 

22. select the names of the employee whose names is exactly five characters  in length. 



23. Display the names of the employee who are not working as MANAGERS. 

24. Display the names of the employee who are not working as SALESMAN OR  CLERK OR ANALYST. 

25. Display all rows from emp table.The system should wait after every  screen full of informaction. 

26. Display the total number of employee working in the company. 

27. Display the total salary beiging paid to all employees. 

28. Display the maximum salary from emp table. 

29. Display the minimum salary from emp table. 

30. Display the average salary from emp table. 

31. Display the maximum salary being paid to CLERK. 

32. Display the maximum salary being paid to depart number 20. 

33. Display the minimum salary being paid to any SALESMAN. 

34. Display the average salary drawn by MANAGERS. 

35. Display the total salary drawn by ANALYST working in depart number 40. 

36. Display the names of the employee in order of salary i.e the name of  the employee earning lowest salary should appear first. 

37. Display the names of the employee in descending order of salary. 

38. Display the names of the employee in order of employee name. 

39. Display empno,ename,deptno,sal sort the output first base on name and  within name by deptno and with in deptno by sal. 

40. Display the name of the employee along with their annual salary(sal*12).The name of the employee earning highest annual salary should apper first. 

41. Display name,salary,hra,pf,da,total salary for each employee. The  output should be in the order of total salary,hra 15% of salary,da 10% of salary,pf 5%  salary,total salary will be(salary+hra+da)-pf. 

42. Display depart numbers and total number of employees working in each  department. 

43. Display the various jobs and total number of employees within each job  group. 

44. Display the depart numbers and total salary for each department. 

45. Display the depart numbers and max salary for each department. 

46. Display the various jobs and total salary for each job 



47. Display the various jobs and total salary for each job 



48. Display the depart numbers with more than three employees in each dept. 



49. Display the various jobs along with total salary for each of the jobs  Where total salary is greater than 40000. 

50. Display the various jobs along with total number of employees in each  job. The output should contain only those jobs with more than three employees. 

51. Display the name of the employee who earns highest salary. 



52. Display the employee number and name for employee working as clerk and  earning highest salary among clerks. 

53. Display the names of salesman who earns a salary more than the highest  salary of any clerk. 

54. Display the names of clerks who earn a salary more than the lowest  Salary  of any salesman. 

Display the names of employees who earn a salary more than that of  Jones or that of salary grether than   that of scott. 

55. Display the names of the employees who earn highest salary in their  respective departments. 

56. Display the names of the employees who earn highest salaries in their  respective job groups. 

57. Display the employee names who are working in accounting department. 

58. Display the employee names who are working in Chicago. 

59. Display the Job groups having total salary greater than the maximum  salary for managers. 

60. Display the names of employees from department number 10 with salary  grether than that of any employee working in other department. 

61. Display the names of the employees from department number 10 with  salary greater than that of all employee working in other departments. 

62. Display the names of the employees in Uppercase. 

63. Display the names of the employees in Lowecase. 

6

64. Display the names of the employees in Propercase. 

65. Display the length of Your name using appropriate function. 

66. Display the length of all the employee names. 

67. select name of the employee concatenate with employee number.  

68. User appropriate function and extract 3 characters starting from 2  characters from the following  string 'Oracle'. i.e the out put should be 'ac'. 

69. Find the First occurance of character 'a' from the following string i.e  'Computer Maintenance Corporation'. 

70. Replace every occurance of alphabhet A with B in the string Allens(use  translate function) 

71. Display the informaction from emp table.Where job manager is found it  should be displayed as boos(Use replace function). 

72. Display empno,ename,deptno from emp table.Instead of display department  numbers display the related department name(Use decode function). 

73. Display your age in days. 

74. Display your age in months. 



75. Display the current date as 15th Augest Friday Nineteen Ninety Saven. 



76. Display the following output for each row from emp table. scott has joined the company on wednesday 13th August ninten nintey. 



77. Find the date for nearest saturday after current date. 



78. Display current time. 



79. Display the date three months Before the current date. 



80. Display the common jobs from department number 10 and 20. 



81. Display the jobs found in department 10 and 20 Eliminate duplicate jobs. 



82. Display the jobs which are unique to department 10. 



84. Display the details of those employees who are in sales department and  grade is 3. 

85. Display those who are not managers and who are managers any one. i)display the managers names ii)display the who are not managers  

86. Display those employee whose name contains not less than 4 characters. 
SQL QUERIES 



1. Display the details of all employees 

sql:   select * from employees 

2. Display the depart information from department table 

sql:   select * from departments 

3. Display the name and job for all the employees 

 sql:   select name ,job  from employees

4. Display the name and salary  for all the employees 
sql: SELECT  NAME,SALARY FROM EMPLOYEES;

5. Display the employee no and totalsalary  for all the employees 
sql: SELECT EMPLOYEE NO,SALARY AS TOTAL_SALARY FROM EMPLOYEES;

6. Display the employee name and annual salary for all employees. 
sql: SELECT CONCAT(FIRST_NAME,' ',LAST_NAME) AS EMPLOYEE_NAME, SARY*12 AS TOTAL_ANUAL_SALARY FROM EMPLOYEES;

7. Display the names of all the employees who are working in depart number 10. 
sql: SELECT FIRST_NAME FROM EMPLOYEES WHERE DEPARTMENT_ID=10;


8. Display the names of all the employees who are working as clerks and  drawing a salary more than 3000. 

   

9. Display the employee number and name  who are earning comman salalry



10. Display the employee number and name  who do not earn any common salary



11. Display the names of employees who are working as clerks, salesman or  analyst and drawing a salary more than 3000. 

12. Display the names of the employees who are working in the company for  the past 5 years; 

13. Display the list of employees who have joined the company before  30-JUN-90 or after 31-DEC-90. 

14. Display current Date. 



15. Display the list of all users in your database (use catalog table). 



16. Display the names of all tables from current user; 



17. Display the name of the current user. 



18. Display the names of employees working in depart number 10 or 20 or 40  or employees working as CLERKS,SALESMAN or ANALYST. 

19. Display the names of employees whose name starts with alaphabet S. 



20. Display the Employee names for employees whose name ends with alaphabet S. 



21. Display the names of employees whose names have second alphabet A in  their names. 

22. select the names of the employee whose names is exactly five characters  in length. 



23. Display the names of the employee who are not working as MANAGERS. 

24. Display the names of the employee who are not working as SALESMAN OR  CLERK OR ANALYST. 

25. Display all rows from emp table.The system should wait after every  screen full of informaction. 

26. Display the total number of employee working in the company. 

27. Display the total salary beiging paid to all employees. 

28. Display the maximum salary from emp table. 

29. Display the minimum salary from emp table. 

30. Display the average salary from emp table. 

31. Display the maximum salary being paid to CLERK. 

32. Display the maximum salary being paid to depart number 20. 

33. Display the minimum salary being paid to any SALESMAN. 

34. Display the average salary drawn by MANAGERS. 

35. Display the total salary drawn by ANALYST working in depart number 40. 

36. Display the names of the employee in order of salary i.e the name of  the employee earning lowest salary should appear first. 

37. Display the names of the employee in descending order of salary. 

38. Display the names of the employee in order of employee name. 

39. Display empno,ename,deptno,sal sort the output first base on name and  within name by deptno and with in deptno by sal. 

40. Display the name of the employee along with their annual salary(sal*12).The name of the employee earning highest annual salary should apper first. 

41. Display name,salary,hra,pf,da,total salary for each employee. The  output should be in the order of total salary,hra 15% of salary,da 10% of salary,pf 5%  salary,total salary will be(salary+hra+da)-pf. 

42. Display depart numbers and total number of employees working in each  department. 

43. Display the various jobs and total number of employees within each job  group. 

44. Display the depart numbers and total salary for each department. 

45. Display the depart numbers and max salary for each department. 

46. Display the various jobs and total salary for each job 



47. Display the various jobs and total salary for each job 



48. Display the depart numbers with more than three employees in each dept. 



49. Display the various jobs along with total salary for each of the jobs  Where total salary is greater than 40000. 

50. Display the various jobs along with total number of employees in each  job. The output should contain only those jobs with more than three employees. 

51. Display the name of the employee who earns highest salary. 



52. Display the employee number and name for employee working as clerk and  earning highest salary among clerks. 

53. Display the names of salesman who earns a salary more than the highest  salary of any clerk. 

54. Display the names of clerks who earn a salary more than the lowest  Salary  of any salesman. 

Display the names of employees who earn a salary more than that of  Jones or that of salary grether than   that of scott. 

55. Display the names of the employees who earn highest salary in their  respective departments. 

56. Display the names of the employees who earn highest salaries in their  respective job groups. 

57. Display the employee names who are working in accounting department. 

58. Display the employee names who are working in Chicago. 

59. Display the Job groups having total salary greater than the maximum  salary for managers. 

60. Display the names of employees from department number 10 with salary  grether than that of any employee working in other department. 

61. Display the names of the employees from department number 10 with  salary greater than that of all employee working in other departments. 

62. Display the names of the employees in Uppercase. 

63. Display the names of the employees in Lowecase. 

6

64. Display the names of the employees in Propercase. 

65. Display the length of Your name using appropriate function. 

66. Display the length of all the employee names. 

67. select name of the employee concatenate with employee number.  

68. User appropriate function and extract 3 characters starting from 2  characters from the following  string 'Oracle'. i.e the out put should be 'ac'. 

69. Find the First occurance of character 'a' from the following string i.e  'Computer Maintenance Corporation'. 

70. Replace every occurance of alphabhet A with B in the string Allens(use  translate function) 

71. Display the informaction from emp table.Where job manager is found it  should be displayed as boos(Use replace function). 

72. Display empno,ename,deptno from emp table.Instead of display department  numbers display the related department name(Use decode function). 

73. Display your age in days. 

74. Display your age in months. 



75. Display the current date as 15th Augest Friday Nineteen Ninety Saven. 



76. Display the following output for each row from emp table. scott has joined the company on wednesday 13th August ninten nintey. 



77. Find the date for nearest saturday after current date. 



78. Display current time. 



79. Display the date three months Before the current date. 



80. Display the common jobs from department number 10 and 20. 



81. Display the jobs found in department 10 and 20 Eliminate duplicate jobs. 



82. Display the jobs which are unique to department 10. 



84. Display the details of those employees who are in sales department and  grade is 3. 

85. Display those who are not managers and who are managers any one. i)display the managers names ii)display the who are not managers  

86. Display those employee whose name contains not less than 4 characters. 

87. Display those department whose name start with "S" while the location  name ends with "K". 

88. Display those employees whose manager name is JONES. 

89. Display those employees whose salary is more than 3000 after giving 20%  increment.CC 

90. Display all employees while their dept names; 

91. Display ename who are working in sales dept. 

92. Display employee name,deptname,salary and comm for those sal in between  2000 to 5000 while location is chicago. 

93)Display those employees whose salary greter than his manager salary. 

94. Display those employees who are working in the same dept where his  manager is work. 

95. Display those employees who are not working under any manager. 

96. Display grade and employees name for the dept no 10 or 30 but grade is  not 4 while joined the company before 31-dec-82. 

97. Update the salary of each employee by 10% increment who are not  eligiblw for commission. 

98. SELECT those employee who joined the company before 31-dec-82 while  their dept location is newyork or  Chicago. 

99. DISPLAY EMPLOYEE NAME,JOB,DEPARTMENT,LOCATION FOR ALL WHO ARE WORKING  AS  MANAGER? 

100. DISPLAY THOSE EMPLOYEES WHOSE MANAGER NAME IS JONES? -- [AND ALSO DISPLAY THEIR MANAGER NAME]? 

101. Display name and salary of ford if his salary is equal to hisal of his  grade

87. Display those department whose name start with "S" while the location  name ends with "K". 

88. Display those employees whose manager name is JONES. 

89. Display those employees whose salary is more than 3000 after giving 20%  increment.CC 

90. Display all employees while their dept names; 

91. Display ename who are working in sales dept. 

92. Display employee name,deptname,salary and comm for those sal in between  2000 to 5000 while location is chicago. 

93)Display those employees whose salary greter than his manager salary. 

94. Display those employees who are working in the same dept where his  manager is work. 

95. Display those employees who are not working under any manager. 

96. Display grade and employees name for the dept no 10 or 30 but grade is  not 4 while joined the company before 31-dec-82. 

97. Update the salary of each employee by 10% increment who are not  eligiblw for commission. 

98. SELECT those employee who joined the company before 31-dec-82 while  their dept location is newyork or  Chicago. 

99. DISPLAY EMPLOYEE NAME,JOB,DEPARTMENT,LOCATION FOR ALL WHO ARE WORKING  AS  MANAGER? 

100. DISPLAY THOSE EMPLOYEES WHOSE MANAGER NAME IS JONES? -- [AND ALSO DISPLAY THEIR MANAGER NAME]? 

101. Display name and salary of ford if his salary is equal to hisal of his  grade
