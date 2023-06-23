create database if not exists cyber_security_breaches;

use cyber_security_breaches;

SELECT 
    *
FROM
    `cyber security breaches`;

desc `cyber security breaches`;

SELECT 
    COUNT(*)
FROM
    `cyber security breaches`;

SELECT 
    COUNT(DISTINCT (State))
FROM
    `cyber security breaches`;

SELECT 
    SUM(Individuals_Affected) Total_Individuals_Affected
FROM
    `cyber security breaches`;

SELECT 
    COUNT(DISTINCT (Business_Associate_Involved))
FROM
    `cyber security breaches`;

SELECT 
    COUNT(DISTINCT (Name_of_Covered_Entity))
FROM
    `cyber security breaches`;

SELECT 
    (Date_of_Breach), (Individuals_Affected)
FROM
    `cyber security breaches`;

SELECT DISTINCT
    (Type_of_Breach)
FROM
    `cyber security breaches`;
    
SELECT 
    COUNT(Type_of_Breach) Theft_Count
FROM
    `cyber security breaches`
WHERE
    Type_of_Breach LIKE '%Theft%';
    
SELECT 
    COUNT(Type_of_Breach) Loss_Count
FROM
    `cyber security breaches`
WHERE
    Type_of_Breach LIKE '%Loss%';
    
SELECT 
    COUNT(Type_of_Breach) Other_Count
FROM
    `cyber security breaches`
WHERE
    Type_of_Breach LIKE '%Other%';


SELECT 
    State, SUM(Individuals_Affected)
FROM
    `cyber security breaches`
GROUP BY State
ORDER BY SUM(Individuals_Affected) DESC;

SELECT 
    year, SUM(Individuals_Affected)
FROM
    `cyber security breaches`
GROUP BY year;

SELECT 
    Date_of_Breach,
    State,
    Type_of_Breach,
    Business_Associate_Involved,
    Name_of_Covered_Entity,
    Individuals_Affected
FROM
    `cyber security breaches`
ORDER BY Individuals_Affected DESC
LIMIT 5;




