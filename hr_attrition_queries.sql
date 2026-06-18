CREATE DATABASE hr_analytics;

USE hr_analytics;

select * from hr_attrition;

-- Basic Queries


SELECT * FROM hr_attrition;

SELECT COUNT(*) FROM hr_attrition;

SELECT DISTINCT Department FROM hr_attrition;

SELECT DISTINCT JobRole FROM hr_attrition;


-- Attrition Analysis 



SELECT Attrition, COUNT(*)
FROM hr_attrition
GROUP BY Attrition;

SELECT Department, COUNT(*)
FROM hr_attrition
WHERE Attrition = 'Yes'
GROUP BY Department;

SELECT JobRole, COUNT(*)
FROM hr_attrition
WHERE Attrition = 'Yes'
GROUP BY JobRole;


-- Salary Analysis




SELECT AVG(Salary)
FROM hr_attrition;

SELECT Department, AVG(Salary)
FROM hr_attrition
GROUP BY Department;

SELECT Attrition, AVG(Salary)
FROM hr_attrition
GROUP BY Attrition;

SELECT MAX(Salary), MIN(Salary)
FROM hr_attrition;



-- Overtime Analysis


SELECT Overtime, COUNT(*)
FROM hr_attrition
GROUP BY Overtime;

SELECT Overtime, Attrition, COUNT(*)
FROM hr_attrition
GROUP BY Overtime, Attrition;


SELECT JobSatisfaction, COUNT(*)
FROM hr_attrition
GROUP BY JobSatisfaction;

SELECT JobSatisfaction, Attrition, COUNT(*)
FROM hr_attrition
GROUP BY JobSatisfaction, Attrition;


-- Experience Analysis
SELECT AVG(YearsAtCompany)
FROM hr_attrition;

SELECT Attrition, AVG(YearsAtCompany)
FROM hr_attrition
GROUP BY Attrition;

SELECT YearsAtCompany, COUNT(*)
FROM hr_attrition
GROUP BY YearsAtCompany
ORDER BY YearsAtCompany;

-- Age Analysis




SELECT AVG(Age)
FROM hr_attrition;

SELECT Attrition, AVG(Age)
FROM hr_attrition
GROUP BY Attrition;

SELECT Department, AVG(Age)
FROM hr_attrition
GROUP BY Department;



