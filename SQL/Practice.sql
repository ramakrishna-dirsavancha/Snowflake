--Scenario: HR wants a list of employees whose salary is greater than $8,000.
SELECT * FROM EMPLOYEES
WHERE SALARY>8000;
--Scenario: Find employees working in the IT department who earn more than $5,000.
--Scenario: HR wants to know the number of employees in each department.
SELECT  DEPARTMENT_ID, COUNT(*) AS EMP_COUNT
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID;
